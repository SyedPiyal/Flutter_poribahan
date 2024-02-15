import 'package:first_project/views/signup/signup_view.dart';
import 'package:flutter/material.dart';

import '../otp/otp_view.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  String? selectedValue;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: const Color(0xFFF2F7FA),
        appBar: AppBar(
          iconTheme: const IconThemeData(
            color: Colors.white, //change your color here
          ),
          title: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              const Text('PARIBAHAN.COM | '),
              Image.asset("assets/images/ic_carr.png", width: 15, height: 15)
            ],
          ),
          titleTextStyle: const TextStyle(color: Colors.white, fontSize: 22),
          toolbarHeight: 80,
          backgroundColor: Colors.blueAccent,
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 20, left: 10, right: 10),
                  child: Image.asset("assets/images/iv_login.png",
                      width: 350, height: 250)),
              const Padding(
                padding: EdgeInsets.only(top: 15),
                child: Text(
                  "Login",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.cyan,
                      fontSize: 20),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 25, left: 20, right: 20),
                child: Text(
                  "Login with phone/ Email address",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 0, left: 60),
                child: Row(
                  children: [
                    const Text(
                      "OTP Type",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    Radio(
                        value: "radio value",
                        groupValue: selectedValue,
                        onChanged: (value) {
                          setState(() {
                            selectedValue = value;
                          }); //selected value
                        }),
                    const Text("Email"),
                    Radio(
                        value: "radio ",
                        groupValue: selectedValue,
                        onChanged: (value) {
                          //selected value
                          setState(() {
                            selectedValue = value;
                          });
                        }),
                    const Text("Phone"),
                    // Create a RadioListTile for option 1
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(left: 40, bottom: 5),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Phone Number",
                      style:
                          TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 30, right: 30),
                child: TextField(
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 15),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF134D86), width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "01266",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(),
                      )),
                  keyboardType: TextInputType.number,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 10),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OtpPage()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        32,
                      )),
                      minimumSize: const Size(243, 40),
                      foregroundColor: Colors.white,
                      // Text Color (Foreground color)
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      backgroundColor: const Color(0xFF134D86)),
                  child: const Text("Request OTP"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 90),
                child: Row(
                  children: [
                    const Text("Don’t have account? "),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const SignUpActivity()));
                      },
                      child: const Text(
                        "Sign Up",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ));
  }
}
