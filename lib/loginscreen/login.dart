import 'package:flutter/material.dart';
import 'package:hotel/constants/colors.dart';
import 'package:hotel/loginscreen/resetpassword.dart';
import 'package:hotel/signup/signup.dart';
import 'package:hotel/signup_screen.dart'; // Adjust path based on your folder structure.
import 'package:hotel/password_reset_screen.dart'; // Adjust path based on your folder structure.

class LoginSignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Login or Sign Up',
                style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: MyColors.mainColor,
                ),
              ),
              SizedBox(height: 30),
              TextField(
                decoration: InputDecoration(
                  labelText: 'Email',
                  labelStyle: TextStyle(
                    color: MyColors.mainColor,
                  ),
                  prefixIcon: Icon(Icons.email, color: MyColors.mainColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.mainColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.mainColor, width: 2.0),
                  ),
                ),
                keyboardType: TextInputType.emailAddress,
                style: TextStyle(color: MyColors.mainColor),
              ),
              SizedBox(height: 20),
              TextField(
                obscureText: true,
                decoration: InputDecoration(
                  labelText: 'Password',
                  labelStyle: TextStyle(
                    color: MyColors.mainColor,
                  ),
                  prefixIcon: Icon(Icons.lock, color: MyColors.mainColor),
                  suffixIcon: Icon(Icons.remove_red_eye, color: MyColors.mainColor),
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.mainColor),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: MyColors.mainColor, width: 2.0),
                  ),
                ),
                style: TextStyle(color: MyColors.mainColor),
              ),
              SizedBox(height: 30),
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PasswordResetScreen()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.mainColor,
                ),
                child: Text(
                  'Login',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                  ),
                ),
              ),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignupScreen()),
                  );
                },
                child: Text(
                  'Don\'t have an account? Sign up',
                  style: TextStyle(color: MyColors.mainColor),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
