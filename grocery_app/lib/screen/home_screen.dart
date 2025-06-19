import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/button.dart';
import 'package:grocery_app/widgets/text_form_field.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(leading: Icon(Icons.arrow_back)),
      body: Padding(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Register Now ",
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
                color: Color.fromRGBO(48, 80, 130, 1.0),
              ),
            ),
            Text(
              "Register to remember your favorite items",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),

            SizedBox(height: 10),
            CustomTextFormField(hintText: "Email address", icon: Icons.email),
            SizedBox(height: 5),
            CustomTextFormField(
              hintText: "Password",
              icon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: 5),
            CustomTextFormField(
              hintText: "Confirmed Password",
              icon: Icons.lock,
              obscureText: false,
            ),
            SizedBox(height: 10),
            MyButton(text: 'Sign in', color: Color.fromRGBO(48, 80, 130, 1.0)),
          ],
        ),
      ),
    );
  }
}
