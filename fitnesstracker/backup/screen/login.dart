import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final _formKey = GlobalKey<FormState>();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  late FocusNode myFocusNode;

  @override
  void dispose() {
    emailController.dispose();
    passwordController.dispose();
    super.dispose();
  }

  void _printLatestValue() {
    print('Second text field: ${emailController.text}');
  }

  @override
  void initState() {
    super.initState();
    myFocusNode = FocusNode();
    emailController.addListener(_printLatestValue);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("Login")),
        body: Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(30.0),
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 5,
                    child: TextFormField(
                      keyboardType: TextInputType.emailAddress,
                      controller: emailController,
                      decoration: InputDecoration(
                          fillColor: Colors.white,
                          filled: true,
                          prefixIcon: Icon(Icons.email),
                          prefixIconConstraints: BoxConstraints(
                            minWidth: 75,
                          ),
                          enabledBorder: OutlineInputBorder(
                            borderSide: BorderSide(color: Colors.white),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          contentPadding: EdgeInsets.all(10),
                          labelText: "Email address"),
                    ),
                  )
                ],
              ),
            )));
  }
}
