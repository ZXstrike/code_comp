import 'package:code_comp/screen/landing_screen/message_dialog.dart';
import 'package:flutter/material.dart';

class ContacctUsField extends StatefulWidget {
  const ContacctUsField({super.key});

  @override
  State<ContacctUsField> createState() => _ContacctUsFieldState();
}

class _ContacctUsFieldState extends State<ContacctUsField> {
  final _formKey = GlobalKey<FormState>();

  final TextEditingController nameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController messageController = TextEditingController();

  @override
  void dispose() {
    super.dispose();

    nameController.dispose();
    emailController.dispose();
    messageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Contact Us',
              style: TextStyle(
                color: Colors.black,
                fontSize: 26,
                fontWeight: FontWeight.bold,
              ),
            ),
            TextFormField(
              controller: nameController,
              maxLines: 1,
              validator: (value) => value!.isEmpty
                  ? 'Enter Your Name'
                  : RegExp(r'[!@#<>?":_`~;[\]\\|=+)(*&^%0-9-]').hasMatch(value)
                      ? 'Enter a Valid Name'
                      : null,
              keyboardType: TextInputType.name,
              decoration: const InputDecoration(
                hintText: 'Name',
                label: Text('Name'),
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            TextFormField(
              controller: emailController,
              maxLines: 1,
              validator: (value) => value!.isEmpty
                  ? 'Enter Your Email'
                  : !RegExp(r'^[\w-\.]+@([\w-]+\.)+[\w-]{2,4}$').hasMatch(value)
                      ? 'Enter a Valid Email'
                      : null,
              keyboardType: TextInputType.emailAddress,
              decoration: const InputDecoration(
                hintText: 'your.email@mail.com',
                label: Text('Email'),
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            TextFormField(
              controller: messageController,
              maxLines: null,
              validator: (value) =>
                  value!.isEmpty ? 'Enter Your Message' : null,
              keyboardType: TextInputType.multiline,
              decoration: const InputDecoration(
                hintText: 'Your Message is Here',
                label: Text('Message'),
                labelStyle: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
                border: UnderlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                hintStyle: TextStyle(
                  fontSize: 18,
                ),
              ),
            ),
            ElevatedButton(
              style: const ButtonStyle(
                shape: MaterialStatePropertyAll<RoundedRectangleBorder>(
                  RoundedRectangleBorder(
                    borderRadius: BorderRadius.all(Radius.circular(8)),
                  ),
                ),
                backgroundColor: MaterialStatePropertyAll<Color>(
                  Color.fromRGBO(72, 60, 212, 1),
                ),
              ),
              onPressed: () {
                if (_formKey.currentState!.validate()) {
                  debugPrint(
                      "${nameController.text}, ${emailController.text}, ${messageController.text}");
                  showDialog(
                    context: context,
                    builder: (context) => MessageDialog(
                        name: nameController.text,
                        email: emailController.text,
                        message: messageController.text),
                  );
                }
              },
              child: const Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Icon(Icons.send),
                    SizedBox(
                      width: 10,
                    ),
                    Text(
                      'Send',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
