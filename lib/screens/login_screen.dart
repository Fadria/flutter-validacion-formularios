import 'package:flutter/material.dart';
import 'package:productos_app/widgets/widgets.dart';


class LoginScreen extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthBackground
      (
        child: SingleChildScrollView
        (
          child: Column
          (
            children: 
            [
              SizedBox(height: 250),
              CardContainer
              (
                child: Column(children: 
                [
                  SizedBox(height: 10),
                  Text("Login", style: Theme.of(context).textTheme.headline4),
                  SizedBox(height: 30),

                  _LoginForm(),
                ])
              ),

              SizedBox(height: 50),
              Text("Crear una nueva cuenta", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            ],
          ),
        )
      )
   );
  }
}

class _LoginForm extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container
    (
      child: Form
      (
        // TO DO: mantener la referencia al KEY
        child: Column
        (
          children: 
          [
            TextFormField
            (
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecoration
              (
                enabledBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple.shade800)),
                focusedBorder: UnderlineInputBorder(borderSide: BorderSide(color: Colors.deepPurple.shade800, width: 2)),
                hintText: "fadriacarrasco@gmail.com",
                labelText: "Email",
                labelStyle: TextStyle(color: Colors.grey),
                prefixIcon: Icon(Icons.alternate_email_sharp, color: Colors.deepPurple.shade800)
              ),
            )
          ],
        )
      ),
    );
  }
}