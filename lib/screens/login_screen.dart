import 'package:flutter/material.dart';
import 'package:productos_app/ui/input_decorations.dart';
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
              SizedBox(height: 50),
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
        autovalidateMode: AutovalidateMode.onUserInteraction,
        child: Column
        (
          children: 
          [
            TextFormField
            (
              autocorrect: false,
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(hintText: "fadriacarrasco@gmail.com", labelText: "Correo electrónico",
                prefixIcon: Icons.alternate_email_rounded),
              validator: (value)
              {
                String pattern = r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
                RegExp regExp  = new RegExp(pattern);

                return regExp.hasMatch(value ?? "") ? null
                : "Por favor, introduce un correo correcto";
              },
            ),

            SizedBox(height: 30),

            TextFormField
            (
              autocorrect: false,
              obscureText: true, // Ocultamos el texto introducido
              keyboardType: TextInputType.emailAddress,
              decoration: InputDecorations.authInputDecoration(hintText: "****", labelText: "Contraseña",
                prefixIcon: Icons.lock_outline),
              validator: (value)
              {
                return (value != null && value.length >= 8 ) ? null
                : "La contraseña debe tener al menos 8 caracteres";
              },
            ),

            SizedBox(height: 30),

            MaterialButton
            (
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
              disabledColor: Colors.grey,
              elevation: 0,
              color: Colors.deepPurple,
              child: Container
              (
                padding: EdgeInsets.symmetric(horizontal: 80, vertical: 15),
                child: Text("Iniciar sesión", style: TextStyle(color: Colors.white)),
              ),
              onPressed: (){} // TO DO: Login Form
            )
          ],
        )
      ),
    );
  }
}