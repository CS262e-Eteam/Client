/*
Defines class User
 */

import 'package:flutter/foundation.dart';

class User {
  User({
    @required this.id,
    @required this.userName,
    @required this.email,
    @required this.favoritedItems,
    @required this.postedItems,
  });

  final int id;
  final String userName;
  final String email;
  final List<int> favoritedItems;
  final List<int> postedItems;
}