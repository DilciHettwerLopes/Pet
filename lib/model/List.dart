import 'package:flutter/material.dart';

class List {

  final String id;
    final String name;
      final String email;
        final String avatarUrl;

        const List({
          this.id,
         @required this.name,
         @required this.email,
         @required this.avatarUrl,
        });
}