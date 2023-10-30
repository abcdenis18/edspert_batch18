import 'package:flutter/material.dart';
import 'package:learning_18/shared/widget/fields/app_email_field.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(''),
      ),
      body: Form(
        key: _formKey,
        child: ListView(
          children: [
            AppEmailFormField(
              title: "Email",
              hint: "Isi email",
              mandatory: true,
              onChanged: (value) {},
            )
          ],
        ),
      ),
    );
  }
}
