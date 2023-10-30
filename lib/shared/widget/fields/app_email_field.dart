import 'package:flutter/material.dart';
import 'package:learning_18/theme/app_style.dart';

class AppEmailFormField extends StatelessWidget {
  final String title;
  final String hint;
  final bool mandatory;
  final Function(String) onChanged;

  const AppEmailFormField({
    required this.title,
    required this.hint,
    required this.onChanged,
    this.mandatory = false,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        RichText(
          text: TextSpan(
            text: title,
            style: Theme.of(context).textTheme.titleMedium!.copyWith(
                  fontWeight: FontWeight.bold,
                  letterSpacing: .5,
                ),
            children: [
              if (mandatory)
                const TextSpan(
                  text: " *",
                  style: TextStyle(
                    color: Colors.red,
                    fontWeight: FontWeight.normal,
                  ),
                ),
            ],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 2),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(
              color: appPrimaryColor.withOpacity(.25),
            ),
          ),
          child: TextFormField(
            onChanged: onChanged,
            keyboardType: TextInputType.emailAddress,
            decoration: InputDecoration(
              border: InputBorder.none,
              hintText: hint,
            ),
            // A simple email regex to validate the format
            validator: (value) {
              Pattern pattern = r'^[a-zA-Z0-9.]+@[a-zA-Z0-9]+\.[a-zA-Z]+';
              RegExp regex = RegExp(pattern.toString());

              if (!regex.hasMatch(value!)) {
                return 'Enter a valid email address';
              } else {
                return null;
              }
            },
          ),
        ),
      ],
    );
  }
}
