import 'dart:math';
import 'package:flutter/material.dart';
import 'package:minhanovaaplicacao/data/dummy_users.dart';
import 'package:minhanovaaplicacao/models/user.dart';

class Users with ChangeNotifier {
  // ignore: prefer_final_fields, unused_field
  Map<String, User> _items = {...DUMMY_USERS};

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
    // ignore: unnecessary_null_comparison
    if (user == null) {
      return;
    }

    // ignore: unnecessary_null_comparison
    if (user.id != null &&
        user.id.trim().isNotEmpty &&
        _items.containsKey(user.id)) {
      _items.update(
        user.id,
        (_) => User(
            id: user.id,
            name: user.name,
            email: user.email,
            avatarUrl: user.avatarUrl),
      );
    } else {
      final id = Random().nextDouble().toString();

      _items.putIfAbsent(
        id,
        () => User(
            id: '1000',
            name: user.name,
            email: user.email,
            avatarUrl: user.avatarUrl),
      );
    }

    notifyListeners();
  }
}
