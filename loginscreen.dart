import 'package:flutter/material.dart';
import 'package:lastsession/views/createaccount.dart';
import 'package:lastsession/views/loginaccount.dart';


class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/login.png'),
            SizedBox(height: 30),
            Text(
              "Let's Go, You're here !",
              style: TextStyle(
                fontSize: 30,
                color: Color(0xff3D348B),
                fontWeight: FontWeight.w500,
              ),
            ),
            SizedBox(height: 30),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {

                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/google.png',
                        height: 50,
                      ),
                      SizedBox(height: 10),
                      Text(
                        'Google',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
                SizedBox(width: 20),

                TextButton(
                  style: TextButton.styleFrom(
                    padding: EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                    backgroundColor: Colors.indigo,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                  onPressed: () {
                    // Add your Facebook sign-in logic here
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/facebook.png',
                        height: 50, // Adjust size of the image
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Facebook',
                        style: TextStyle(color: Colors.white, fontSize: 16),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            SizedBox(height: 10),
            Text(
              'Or',
              style: TextStyle(
                fontSize: 24,
                color: Colors.indigo,
              ),
            ),
            SizedBox(height: 10),
            TextButton(
              style: TextButton.styleFrom(
                padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                backgroundColor: Colors.indigo,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
              ),
              onPressed: () {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginPage(),
                  ),
                );
              },
              child: Text(
                'Login with Password',
                style: TextStyle(color: Colors.white, fontSize: 16),
              ),
            ),
            SizedBox(height: 20),
            Text(
              "New Member? ",
              style: TextStyle(color: Colors.indigo, fontSize: 16),
            ),
            TextButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const CreateAccount()),
                );
              },
              child: Text(
                "Create Account",
                style: TextStyle(color: Colors.deepOrange, fontSize: 20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}