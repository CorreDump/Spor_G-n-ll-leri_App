import 'package:flutter/material.dart';
import 'My_Appbar.dart';
import 'My_bottombar.dart';
import 'NavBar.dart';
import 'package:email_validator/email_validator.dart';

class Sign_up extends StatelessWidget {
  const Sign_up({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromRGBO(203, 203, 203, 5),
      appBar: My_Appbar(),
      drawer: NavBar(),
      body: SignInBody(),
      bottomNavigationBar: My_bottom_bar(),
    );
  }
}

class SignInBody extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                margin: EdgeInsets.only(top: 20.0, left: 15),
                child: const Text(
                  'Username',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(height: 10.0),

              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your username',
                  focusColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Name cannot be empty';
                  }
                  return null;
                },
              ),

              Container(
                margin: EdgeInsets.only(top: 10.0, left: 15),
                child: const Text(
                  'Email',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(height: 16.0),

              TextFormField(
                //initialValue: 'emrealtunbilek@gmail.com',
                keyboardType: TextInputType.emailAddress,
                decoration: const InputDecoration(
                  // labelText: 'Email',
                  hintText: 'Enter your email',
                  focusColor: Colors.white,
                  hintStyle: TextStyle(color: Colors.white), // Hint text color
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when enabled
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                        color: Colors.black), // Border color when focused
                  ),
                ),
                style: TextStyle(color: Colors.white), // Text color
                onSaved: (deger) {
                  // volunteer_info.email = deger!;
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

              //////////////////////////////////////////////////////////////////////////////////////////////////
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 15),
                child: const Text(
                  'Password',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(height: 10.0),

              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Enter your password',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                style: const TextStyle(color: Colors.white),
                obscureText: true, // For password fields
                //controller: _passwordController,
                validator: (value) {
                  // if (value.isEmpty) {
                  //   return 'Please enter a password';
                  // }
                  // return null;
                },
              ),

              // Add some space between password and confirmation fields

              // Confirm Password input
              Container(
                margin: EdgeInsets.only(top: 10.0, left: 15),
                child: const Text(
                  'Password Again',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
                // height: 200,
                // width: 200,
                // decoration: BoxDecoration(color: Colors.amber),
              ),
              SizedBox(height: 16.0),

              // Confirm Password input

              TextFormField(
                decoration: const InputDecoration(
                  hintText: 'Confirm your password',
                  hintStyle: TextStyle(color: Colors.white),
                  filled: true,
                  fillColor: Color.fromRGBO(120, 158, 137, 10),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                  ),
                ),
                style: TextStyle(color: Colors.white),
                obscureText: true,
                //controller: _confirmPasswordController,
                validator: (value) {
                  // if (value.isEmpty) {
                  //   return 'Please confirm your password';
                  // } else if (value != _passwordController.text) {
                  //   return 'Passwords do not match';
                  // }
                  // return null;
                },
              ),

              SizedBox(height: 16.0),

              // Forgot password link
              GestureDetector(
                onTap: () {
                  // Implement the logic for "Forgot Password?"
                  // For example, navigate to a password recovery page.
                  print("Forgot Password tapped");
                },
                child: const Text(
                  'Forgot Password?',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: Colors.white,
                  ),
                  textAlign: TextAlign.end,
                ),
              ),
              SizedBox(height: 16.0),

              // Sign In button
              Container(
                child: Center(
                  child: ElevatedButton(
                    onPressed: () {
                      bool _validate = _formKey.currentState!.validate();
                      if (_validate) {
                        _formKey.currentState!.save();

                        String result = 'mal';
                        /*
                        'Name: $_name\nSurname: $_surname\nEmail: $_email\n'
                        'Password: $_password\nUsername: $_userName\nPhone Number: $_phoneNumber\n'
                        'Nickname: $_nickname\nDate of Birth: $_dob';
                      */

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
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all<Color>(
                        Color.fromRGBO(
                            23, 231, 84, 1.0), // Corrected opacity value
                      ),
                      minimumSize: MaterialStateProperty.all<Size>(
                        Size(200, 60), // Adjust the width and height as needed
                      ),
                    ),
                    child: const Text(
                      'Sign Up',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ),

              Row(
                children: [
                  const Text(
                    "If you dont have account",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14,
                    ),
                  ),
                  Spacer(),
                  GestureDetector(
                    onTap: () {
                      // Implement the logic for "Forgot Password?"
                      // For example, navigate to a password recovery page.
                      print("Forgot Password tapped");
                    },
                    child: const Text(
                      'Sign up here',
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 14,
                      ),
                      textAlign: TextAlign.end,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
