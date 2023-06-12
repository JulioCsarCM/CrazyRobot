import 'dart:math';

import 'package:flutter/material.dart';
import 'package:app_test/data/dummy_users.dart';

import '../home/APP_MOBILE/user.dart';

class Users with ChangeNotifier {
  final Map<String, User> _items = {...DUMMY_USERS};

  List<User> get all {
    return [..._items.values];
  }

  int get count {
    return _items.length;
  }

  User byIndex(int i) {
    return _items.values.elementAt(i);
  }

  void put(User user) {
    if (user.id.isNotEmpty && _items.containsKey(user.id)) {
      _items.update(
        user.id,
        (_) => User(
          id: user.id,
          name: user.name,
          descricao: user.descricao, //mudar aqui
          avatarUrl: user.avatarUrl,
        ),
      );
    } else {
      final id = Random().nextDouble().toString();
      _items.putIfAbsent(
        id,
        () => User(
          id: id,
          name: user.name,
          descricao: user.descricao, //mudar aqui
          avatarUrl: user.avatarUrl,
        ),
      );
    }
    notifyListeners();
  }

  //adicionar
  // ou alterar

  void remove(User user) {
    if (user != null && user.id != null) {
      _items.remove(user.id);
      notifyListeners();
    }
  }
}
