import 'package:app_test/routes/app_routes.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../home/APP_MOBILE/user.dart';
import '../provider/users.dart';

class UserTile extends StatelessWidget {
  final User user;

  const UserTile(this.user, {super.key});

  @override
  Widget build(BuildContext context) {
    final avatar = user.avatarUrl.isEmpty
        ? const CircleAvatar(child: Icon(Icons.person))
        : CircleAvatar(backgroundImage: NetworkImage(user.avatarUrl));
    return Column(
      children: [
        ListTile(
          leading: avatar,
          title: Text(user.name),
          subtitle: Text(user.descricao),
          trailing: SizedBox(
            width: 100,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.edit),
                  color: Colors.green,
                  onPressed: () {
                    Navigator.of(context).pushNamed(
                      AppRoutes.USER_FORM,
                      //arguments: user.avatarUrl.isEmpty ? '' : user.avatarUrl,
                      arguments: user,
                    );
                  },
                ),
                IconButton(
                  icon: const Icon(Icons.delete),
                  color: Colors.redAccent,
                  onPressed: () =>
                      Provider.of<Users>(context, listen: false).remove(user),
                ),
              ],
            ),
          ),
        ),
        const Divider(
          color: Colors.grey,
        )
      ],
    );
  }
}

///51:30