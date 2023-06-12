import 'package:app_test/provider/users.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/APP_MOBILE/user.dart';

class UserForm extends StatelessWidget {
  final _form = GlobalKey<FormState>();
  final Map<String, String> _formData = {};

  UserForm({super.key});

  @override
  Widget build(BuildContext context) {
    final user = ModalRoute.of(context)?.settings.arguments as User;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Formulário de Produtos'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.save),
            onPressed: () {
              final isValid = _form.currentState!.validate();

              if (isValid) {
                _form.currentState!.save();

                Provider.of<Users>(context, listen: false).put(
                  User(
                    id: user.id.isEmpty ? '' : user.id,
                    name: _formData['name']!,
                    descricao: _formData['descricao']!,
                    avatarUrl: _formData['avatarUrl']!,
                  ),
                ); //User

                Navigator.of(context).pop();
              }
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: Column(
            children: [
              user.avatarUrl.isEmpty
                  ? const SizedBox()
                  : CircleAvatar(
                      radius: 50,
                      backgroundImage: NetworkImage(
                        user.avatarUrl,
                      ),
                    ),
              Form(
                key: _form,
                child: Column(
                  children: <Widget>[
                    TextFormField(
                      initialValue: user.name.isEmpty ? null : user.name,
                      decoration: const InputDecoration(labelText: 'Nome'),
                      validator: (value) {
                        if (value == null || value.trim().isEmpty) {
                          return 'Nome inválido';
                        }

                        if (value.trim().length < 3) {
                          return 'Nome muito pequeno. No mínimo 3 letras.';
                        }

                        return null;
                      },
                      onSaved: (value) => _formData['name'] = value!,
                    ),
                    TextFormField(
                      initialValue:
                          user.descricao.isEmpty ? null : user.descricao,
                      decoration: const InputDecoration(labelText: 'Descrição'),
                      onSaved: (value) => _formData['descricao'] = value!,
                    ),
                    TextFormField(
                      initialValue:
                          user.avatarUrl.isEmpty ? null : user.avatarUrl,
                      decoration:
                          const InputDecoration(labelText: 'URL do Avatar'),
                      onSaved: (value) => _formData['avatarUrl'] = value!,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
