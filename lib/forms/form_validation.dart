// Steps:
// 1. Create a form with a global key, important to create a global key when validating a form.
// 2. Add textform field with validtion logic
// 3. Create a button to validate and submit the form.

// using a global key is the recommeded way to access a form, and if there's more complex widget tree, using Form.of()method to access the form within the nested widgets.

import 'package:flutter/material.dart';

class Form_Valid extends StatefulWidget {
  const Form_Valid({super.key});

  @override
  State<Form_Valid> createState() => _Form_ValidState();
}

class _Form_ValidState extends State<Form_Valid> {
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 50),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Please enter some text';
                  }
                  return null;
                },
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Processing Data')));
                    }
                  },
                  child: const Text('Submit')),
            ],
          ),
        ),
      ),
    );
  }
}
