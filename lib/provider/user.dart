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
}
