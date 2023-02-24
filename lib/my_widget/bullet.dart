import 'package:flutter/material.dart';
import '../model/storage.dart';

class Bullet extends StatelessWidget {
  const Bullet({
    super.key,
    required this.storage,
  });

  final Storage storage;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 10.0,
      width: 10.0,
      decoration: BoxDecoration(
        color: storage.storageColor,
        shape: BoxShape.circle,
      ),
    );
  }
}