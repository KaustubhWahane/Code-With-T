import 'package:flutter/material.dart';

class ProductForm extends StatefulWidget {
  const ProductForm({super.key});

  @override
  State<ProductForm> createState() => _ProductFormState();
}

class _ProductFormState extends State<ProductForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  bool _termsAccepted = false;
  String? _selectedType =
      'Deliverable'; // Product type (Deliverable/Downloadable)
  String _selectedSize = 'Small'; // Default product size

  void _submitForm() {
    if (_formKey.currentState!.validate()) {
      String name = _nameController.text.trim();
      String description = _descriptionController.text.trim();

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text(
            "Product: $name\nDescription: $description\nType: $_selectedType\nSize: $_selectedSize",
          ),
        ),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Product Form")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              // Product Name Input with Icon
              TextFormField(
                controller: _nameController,
                decoration: const InputDecoration(
                  labelText: "Product Name",
                  prefixIcon: Icon(Icons.shopping_cart),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter the product name";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Product Description Input with Icon
              TextFormField(
                controller: _descriptionController,
                decoration: const InputDecoration(
                  labelText: "Product Description",
                  prefixIcon: Icon(Icons.description),
                ),
                validator: (value) {
                  if (value == null || value.trim().isEmpty) {
                    return "Please enter the product description";
                  }
                  return null;
                },
              ),
              const SizedBox(height: 20),

              // Checkbox for accepting terms
              CheckboxListTile(
                title: const Text("I accept the terms and conditions"),
                value: _termsAccepted,
                onChanged: (bool? value) {
                  setState(() {
                    _termsAccepted = value!;
                  });
                },
                controlAffinity: ListTileControlAffinity.leading,
              ),
              const SizedBox(height: 20),

              // Dropdown for Product Size
              const Text(
                "Select product size:",
                style: TextStyle(fontSize: 18),
              ),
              DropdownButton<String>(
                value: _selectedSize,
                items:
                    <String>[
                      'Small',
                      'Medium',
                      'Large',
                    ].map<DropdownMenuItem<String>>((String value) {
                      return DropdownMenuItem<String>(
                        value: value,
                        child: Text(value),
                      );
                    }).toList(),
                onChanged: (String? newValue) {
                  setState(() {
                    _selectedSize = newValue!;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Radio Buttons for Product Type
              const Text(
                "Select product type:",
                style: TextStyle(fontSize: 18),
              ),
              RadioListTile<String>(
                title: const Text("Deliverable"),
                value: 'Deliverable',
                groupValue: _selectedType,
                onChanged: (value) {
                  setState(() {
                    _selectedType = value;
                  });
                },
              ),
              RadioListTile<String>(
                title: const Text("Downloadable"),
                value: 'Downloadable',
                groupValue: _selectedType,
                onChanged: (value) {
                  setState(() {
                    _selectedType = value;
                  });
                },
              ),
              const SizedBox(height: 20),

              // Submit Button
              ElevatedButton(
                onPressed: _termsAccepted ? _submitForm : null,
                child: const Text("Submit"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
