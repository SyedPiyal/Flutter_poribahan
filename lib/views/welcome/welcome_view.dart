import 'package:flutter/material.dart';

import '../login/login_view.dart';
import '../signup/signup_view.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          automaticallyImplyLeading: false,
          title: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text('PARIBAHAN.COM | '),
              Image.asset("assets/images/ic_carr.png", width: 15, height: 15)
            ],
          ),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
          toolbarHeight: 80,
          backgroundColor: Colors.blueAccent,
        ),
        body: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Padding(
                padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                child: Image.asset("assets/images/iv_bus.png",
                    width: 350, height: 300)),
            const Text(
              "Welcome!",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 25, left: 35, right: 35),
              child: Text(
                "Paribahan.com is a online tickets booking service for bus & launch. Login now to use this service.",
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Row(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 50, left: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Login()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          32,
                        )),
                        minimumSize: const Size(140, 40),
                        foregroundColor: Colors.white,
                        // Text Color (Foreground color)
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        backgroundColor: const Color(0xFF134D86)),
                    child: const Text("Login"),
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.only(top: 50, right: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const SignUpActivity()));
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          32,
                        )),
                        minimumSize: const Size(140, 40),
                        foregroundColor: Colors.white,
                        // Text Color (Foreground color)
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        backgroundColor: const Color(0xFF134D86)),
                    child: const Text("Sign Up"),
                  ),
                )
              ],
            )
          ],
        ));
  }
}
