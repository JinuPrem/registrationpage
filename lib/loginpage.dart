import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:registrationpage/signuppage.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "Login",
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 15,
            ),
            Text("Login to your account"),
            SizedBox(
              height: 30,
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Email"),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    hintText: "Password"),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            SizedBox(
              width: 300,
              child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30))),
                  child: Text("Login")),
            ),
            SizedBox(
              height: 10,
            ),
            RichText(
                text: TextSpan(
                    text: "Don't have an account?",
                    style: TextStyle(color: Colors.blue),
                    children: <TextSpan>[
                  TextSpan(
                      text: "Sign up",
                      recognizer: new TapGestureRecognizer()..onTap = () => {
                        Navigator.push(context, MaterialPageRoute(
                            builder: (context) => SignUp()),
                        )
                      },
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.blue))
                ])),
            SizedBox(
              height: 60,
            ),
            Container(
              height: 200,
              width: 200,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(
                        "images/businessman-is-trying-to-unlock-door-vector-25241041.jpg")),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
