import 'package:flutter/material.dart';

class MessageDialog extends StatelessWidget {
  const MessageDialog(
      {super.key,
      required this.name,
      required this.email,
      required this.message});

  final String name;

  final String email;

  final String message;

  @override
  Widget build(BuildContext context) {
    return Dialog(
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(name),
            Text(email),
            Text(message),
            ElevatedButton(
              onPressed: () => Navigator.pop(context),
              child: const Text('Ok'),
            )
          ],
        ),
      ),
    );
  }
}
