import 'package:flutter/material.dart';

class nonpart extends StatefulWidget {
  @override
  _nonpartState createState() => _nonpartState();
}

class _nonpartState extends State<nonpart> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 0;
  String _sex = "";

  final List<String> _sexOptions = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('User Form'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    labelText: " First Name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _name = value!),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Last Name",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _name = value!),
                ),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Company",
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Company Name';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _name = value!),
                ),
                
                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Phone Number",
                  ),
                  keyboardType: TextInputType.number,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your age';
                    }
                    final age = int.tryParse(value);
                    if (age == null || age < 0) {
                      return 'Please enter a valid age';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _age = int.parse(value!)),
                ),
                
                ElevatedButton(
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Process form data (e.g., print to console)
                      print('Name: $_name, Age: $_age, Sex: $_sex');
                    }
                  },
                  child: Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
