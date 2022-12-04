import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});
  @override
  Widget build(BuildContext context) {
    return Material(
      color: Colors.white,
      child: Column(
        children: [
          Image.asset("images/login_image.png", fit: BoxFit.cover),
          SizedBox(
            height: 20.0,
          ),
          Text(
            "Welcome",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 18.0, horizontal: 40.0),
            child: Column(
              children: [
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your name",
                    labelText: "Username",
                  ),
                ),
                TextFormField(
                  decoration: InputDecoration(
                    hintText: "Enter your Email",
                    labelText: "Email",
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                    hintText: "Enter your password",
                    labelText: "password",
                  ),
                ),
                SizedBox(
                  height: 30.0,
                ),
                Container(
                  width: 100,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blue,
                  ),
                  child: Center(
                    child: TextButton(
                      child: const Text(
                        "Login",
                        style: TextStyle(fontSize: 10, color: Colors.white),
                      ),
                      onPressed: () {
                        Navigator.pushNamed(context, "/home");
                      },
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
