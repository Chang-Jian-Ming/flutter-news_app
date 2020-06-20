import 'package:flutter/material.dart';

class ReportForm extends StatefulWidget {
  @override
  _ReportFormState createState() => _ReportFormState();
}

class _ReportFormState extends State<ReportForm> {
  final _formKey = GlobalKey<FormState>();
  final nameController = TextEditingController();
  final contactController = TextEditingController();
  final descriptionController = TextEditingController();

  @override
  void dispose() {
    // Clean up the controller when the widget is disposed.
    nameController.dispose();
    contactController.dispose();
    descriptionController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: _formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Center(
              child: Text.rich(
                TextSpan(
                  text: "Information Report",
                  style: Theme.of(context).textTheme.headline1,
                ),
              ),
            ),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(
                hintText: 'Enter your name',
                prefixIcon: Icon(Icons.person)
              ),
              keyboardType: TextInputType.text,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your name';
                } 
                return null;
              },
            ),
            TextFormField(
              controller: contactController,
              decoration: const InputDecoration(
                hintText: 'Enter your contact information',
                prefixIcon: Icon(Icons.contact_phone)
              ),
              keyboardType: TextInputType.number, // Only numbers can be entered
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter your contact number';
                } else if (value.length != 8) {
                  return 'Please enter a valid contact number';
                }
                return null;
              },
            ),
            TextFormField(
              controller: descriptionController,
              maxLines: 8,
              decoration: const InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide(
                    color: Colors.black,
                  ),
                ),
                labelText: 'What happened?'
              ),
              keyboardType: TextInputType.multiline,
              validator: (value) {
                if (value.isEmpty) {
                  return 'Please enter some text';
                }
                return null;
              },
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  RaisedButton(
                    onPressed: () {
                      // Validate will return true if the form is valid, or false if
                      // the form is invalid.
                      if (_formKey.currentState.validate()) {
                        // Process data.
                        final snackBar = SnackBar(
                          content: Text(nameController.text + ' | ' + contactController.text + ' | ' + descriptionController.text),
                          action: SnackBarAction(
                            label: 'Undo',
                            onPressed: () {
                              // Some code to undo the change.
                            },
                          ),
                        );
                        Scaffold.of(context).showSnackBar(snackBar);
                      }
                    },
                    child: Text('Submit'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}