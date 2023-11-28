import 'package:flutter/material.dart';

showMySnackbar(
  BuildContext context,
  String message, {
  color = Colors.red,
}) {

  ScaffoldMessenger.of(context).showSnackBar(
     SnackBar(
      content: Text(message),
      duration: const Duration(seconds: 3),
      backgroundColor: color,
      behavior: SnackBarBehavior.floating,
    ),
  );
}
