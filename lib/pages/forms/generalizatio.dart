import 'package:flutter/material.dart';

class generalization extends StatefulWidget {
  @override
  _generalizationState createState() => _generalizationState();
}

class _generalizationState extends State<generalization> {
  final _formKey = GlobalKey<FormState>();
  String _name = "";
  int _age = 0;
  String _sex = "";

  final List<String> _sexOptions = ["Male", "Female", "Other"];

  @override
  Widget build(BuildContext context) {
    
    var _selectedValue;
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 84, 150),
      appBar: AppBar(
        title: Text('General Training Form',),
        backgroundColor: Color.fromARGB(255, 3, 84, 150),
        //color: Color.fromARGB(255, 3, 84, 150),
        foregroundColor: Color.fromARGB(255, 160, 5, 126),
        
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

                SizedBox(
                        height: 20,
                      ),

                TextFormField(
                  decoration: InputDecoration(
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

                SizedBox(
                        height: 20,
                      ),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: "Company",
                    border: OutlineInputBorder()
                  ),
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your Company Name';
                    }
                    return null;
                  },
                  onSaved: (value) => setState(() => _name = value!),
                ),

                SizedBox(
                        height: 20,
                      ),
                
                TextFormField(
                  decoration: InputDecoration(
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

                SizedBox(
                        height: 20,
                      ),
                
                DropdownButtonFormField<String>(
                  value: _selectedValue,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colors.pink.shade700,
                      )
                    ),
                  ),
                   // Currently selected value
                  hint: Text('Course Name'), // Placeholder text
                  items: [
                      // List of DropdownMenuItem objects
                    DropdownMenuItem(
                      value: 'Airbus A330-200',
                      child: Text('Airbus A330-200'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem(
                      value: 'Option 2',
                      child: Text('Option 2'),
                    ),
                      // ... Add more options as needed
                  ],
                  onChanged: (String? newValue) {
                    setState(() {
                      _selectedValue = newValue!;
                    });
                  },
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
                  style: ElevatedButton.styleFrom(
                    primary: Color.fromARGB(255, 3, 84, 150),
                    textStyle: TextStyle(
                      color: Colors.pink.shade700
                    )
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
