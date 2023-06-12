import 'package:app_test/home/APP_MOBILE/user.dart';
import 'package:flutter/material.dart';
import 'package:app_test/components/user_tile.dart';
import 'package:provider/provider.dart';

import '../provider/users.dart';
import '../routes/app_routes.dart';

class UserList extends StatelessWidget {
  const UserList({super.key});

  @override
  Widget build(BuildContext context) {
    final Users users = Provider.of(context);

    return Scaffold(
      appBar: AppBar(
        title: const Text('Cadastro de Produtos'),
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(
                AppRoutes.USER_FORM,
                arguments: const User(
                  id: '',
                  name: '',
                  descricao: '',
                  avatarUrl: '',
                ),
              );
            },
          ),
        ],
      ),
      body: ListView.builder(
        itemCount: users.count,
        itemBuilder: (ctx, i) => UserTile(users.byIndex(i)),
      ),
    );
  }
}
