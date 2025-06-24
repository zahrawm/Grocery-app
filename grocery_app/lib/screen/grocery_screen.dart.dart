import 'package:flutter/material.dart';
import 'package:grocery_app/widgets/button.dart';
import 'package:grocery_app/widgets/text_form_field.dart';

class GroceryScreen extends StatelessWidget {
  const GroceryScreen({super.key});

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
              "Welcome back",
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
            SizedBox(height: 10),
            CustomTextFormField(
              hintText: "Password",
              icon: Icons.lock,
              obscureText: true,
            ),
            SizedBox(height: 10),
            CustomTextFormField(
              hintText: "Confirmed Password",
              icon: Icons.lock,
              obscureText: false,
            ),
            SizedBox(height: 10),
            MyButton(
              text: 'Login in ',
              color: Color.fromRGBO(48, 80, 130, 1.0),
              onPressed: () {
                // Navigator.pushNamed(context, '/grocery');
              },
            ),

            SizedBox(height: 10),
            MyButton(
              imagePath: 'assets/google.png',
              text: 'Sign in with Google',
              color: Colors.white,
              onPressed: () {
                print('Google sign in pressed');
              },
            ),
            SizedBox(height: 10),
            MyButton(
              imagePath: 'assets/apple.png',
              text: 'Sign in with Apple',
              color: Colors.white,
              onPressed: () {
                print('Apple sign in pressed');
              },
            ),
            SizedBox(height: 10),
            MyButton(
              imagePath: 'assets/microsoft.png',
              text: 'Sign in with Microsoft',
              color: Colors.white,
              onPressed: () {
                print('Microsoft sign in pressed');
              },
            ),
            SizedBox(height: 70),
          ],
        ),
      ),
    );
  }
}
