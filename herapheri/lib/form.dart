import 'package:flutter/material.dart';
import 'details.dart';

class FormScreen extends StatefulWidget {
  const FormScreen({super.key});

  @override
  State<FormScreen> createState() => _FormScreenState();
}

class _FormScreenState extends State<FormScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _controller = TextEditingController();

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      String input = _controller.text.trim();
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => DetailsScreen(data: input)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Form Screen")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              TextFormField(
                controller: _controller,
                decoration: const InputDecoration(labelText: "Enter something"),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter something";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),
              ElevatedButton(
                onPressed: _submitForm,
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
