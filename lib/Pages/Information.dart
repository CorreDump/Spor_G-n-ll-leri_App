import 'package:flutter/material.dart';
import 'package:email_validator/email_validator.dart';

class InformationForm extends StatefulWidget {
  const InformationForm({Key? key}) : super(key: key);

  @override
  _InformationFormState createState() => _InformationFormState();
}

class _InformationFormState extends State<InformationForm> {
  String _email = '', _password = '', _userName = '';
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(top: 10.0),
          alignment: Alignment.centerLeft,
          decoration: BoxDecoration(
            color: Color.fromRGBO(
                07, 67, 49, 86), // Set your desired background color
            border: Border.all(
              color: Colors.white, // Set your desired border color
              width: 1.0, // Set your desired border width
            ),
            borderRadius:
                BorderRadius.circular(20.0), // Set your desired border radius
          ),
          padding: EdgeInsets.all(10.0), // Set your desired padding
          child: Text(
            "General information",
            style: TextStyle(
              fontSize: 18.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Form(
              key: _formKey,
              autovalidateMode: AutovalidateMode.onUserInteraction,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                mainAxisSize: MainAxisSize.max,
                children: [
                  TextFormField(
                    //initialValue: 'emrealtunbilek',

                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: 'Username',
                        hintText: 'Username'),
                    onSaved: (deger) {
                      // onsaved method is worked when i start saved method
                      _userName = deger!;
                    },
                    validator: (deger) {
                      if (deger!.length < 4) {
                        return 'Username en az 4 karakter olmalı';
                      } else
                        return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    //initialValue: 'emrealtunbilek@gmail.com',
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: 'Email',
                        hintText: 'Email'),
                    onSaved: (deger) {
                      _email = deger!;
                    },
                    validator: (deger) {
                      if (deger!.isEmpty) {
                        return 'email boş olamaz';
                      } else if (!EmailValidator.validate(deger)) {
                        return 'Geçerli mail giriniz';
                      } else
                        return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    //initialValue: 'emrealtunbilek@gmail.com',
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                        //errorStyle: TextStyle(color: Colors.orange),
                        border: OutlineInputBorder(),
                        labelText: 'Password',
                        hintText: 'Password'),
                    onSaved: (deger) {
                      _password = deger!;
                    },
                    validator: (deger) {
                      if (deger!.length < 6) {
                        return 'Şifre ne az 6 karakter olmalı';
                      } else
                        return null;
                    },
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  ElevatedButton(
                    onPressed: () {
                      bool _validate = _formKey.currentState!.validate();
                      if (_validate) {
                        _formKey.currentState!.save();
                        String result =
                            'username:$_userName\nemail:$_email\nSifre:$_password';

                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(
                            backgroundColor: Colors.orange.shade300,
                            content: Text(
                              result,
                              style: TextStyle(fontSize: 24),
                            ),
                          ),
                        );
                        _formKey.currentState!.reset();
                      }
                    },
                    child: Text('Onayla'),
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
