import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:sitara_app/Screens/home_screen.dart';

class RaisedButton extends StatelessWidget {
  const RaisedButton(
      {Key? key,
      required Null Function() onPressed,
      required List<Text> children})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Raised Button',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MyForm extends StatefulWidget {
  @override
  _MyFormState createState() => _MyFormState();
}

class _MyFormState extends State<MyForm> {
  final _formKey = GlobalKey<FormState>();
  late String _email;
  late String _password;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'Email'),
            // validator: EmailValidator.validate,
            onSaved: (value) => _email = value!,
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Password'),
            // validator: PasswordValidator.validate,
            onSaved: (value) => _password = value!,
            obscureText: true,
          ),
          RaisedButton(
            onPressed: () {
              if (_formKey.currentState!.validate()) {
                _formKey.currentState!.save();
              }
            },
            children: [const Text('Submit')],
          ),
        ],
      ),
    );
  }
}

class EmailValidator {
  static String? validate(String value) {
    if (value.isEmpty) {
      return 'Email can\'t be empty';
    }
    if (!RegExp(r'\S+@\S+\.\S+').hasMatch(value)) {
      return 'Please enter a valid email address';
    }
    return null;
  }
}

class PasswordValidator {
  static String? validate(String value) {
    if (value.isEmpty) {
      return 'Password can\'t be empty';
    }
    if (value.length < 8) {
      return 'Password must be at least 8 characters long';
    }
    return null;
  }
}
