import 'package:flutter/material.dart';

class generalization extends StatefulWidget {
  const generalization({super.key});

  @override
  _generalizationState createState() => _generalizationState();
}

class _generalizationState extends State<generalization> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 0;
  final String _sex = "";

  final List<String> _sexOptions = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    
    String selectedValue;
    return Scaffold(
      //backgroundColor: const Color.fromARGB(255, 3, 84, 150),
      appBar: AppBar(
        title: const Text('General Training Form',),
        backgroundColor: const Color.fromARGB(255, 3, 84, 150),
        //color: Color.fromARGB(255, 3, 84, 150),
        foregroundColor: const Color.fromARGB(255, 255, 255, 255),
        
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              children: [
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: " First Name",
                    
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _name = value!),
                ),

                const SizedBox(
                        height: 20,
                      ),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Last Name",
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your name';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _name = value!),
                ),

                const SizedBox(
                        height: 20,
                      ),

                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Company",
                    border: OutlineInputBorder(),
                    focusColor: Colors.white,
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Company Name';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _name = value!),
                ),

                const SizedBox(
                        height: 20,
                      ),
                
                TextFormField(
                  decoration: const InputDecoration(
                    labelText: "Phone Number",

                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Color.fromARGB(255, 3, 84, 150),
                      )
                    ),
                    
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

                const SizedBox(
                        height: 20,
                      ),
                
             
                
                ElevatedButton(
                  
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      // Process form data (e.g., print to console)
                      print('Name: $_name, Age: $_age, Sex: $_sex');
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 150, 3, 94),
                    foregroundColor: const Color.fromARGB(255, 255, 255, 255),
                    textStyle: const TextStyle(
                      color: Color.fromARGB(255, 255, 255, 255)
                    )
                  ),
                  child: const Text('Submit'),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
