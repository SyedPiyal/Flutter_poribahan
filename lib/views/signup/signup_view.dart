import 'package:first_project/service/registration_request.dart';
import 'package:first_project/views/login/login_view.dart';
import 'package:flutter/material.dart';

import '../../service/service.dart';
import '../otp/otp_view.dart';

class SignUpActivity extends StatefulWidget {
  const SignUpActivity({super.key});

  @override
  State<SignUpActivity> createState() => _SignUpState();
}

class _SignUpState extends State<SignUpActivity> {
  String? selectedValue;

  String dropdownvalue = 'Male';
  var items = [
    'Male',
    'Female',
  ];
  final nameControler = TextEditingController();
  final phoneControler = TextEditingController();
  final emailControler = TextEditingController();
  final genderControler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        toolbarHeight: 70,
        backgroundColor: Colors.blueAccent,
      ),
      backgroundColor: const Color(0xFFF2F7FA),
      body: SingleChildScrollView(
        child: Container(
            height: 600,
            padding: const EdgeInsets.all(25),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              border: Border.all(width: .5, color: const Color(0xFFB8B5BC)),
              borderRadius: BorderRadius.circular(30),
              color: Colors.white,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                  alignment: Alignment.center,
                  child: Text("Sign Up",
                      style: TextStyle(fontSize: 25, color: Color(0xFF134D86))),
                ),
                const Text("Full Name",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                //name filed------>
                TextFormField(
                  controller: nameControler,
                  validator: (String? value) {
                    if (value == null) {
                      return "Enter Name ";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF134D86), width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "Wonjala Joshi",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(),
                      )),
                  keyboardType: TextInputType.name,
                ),
                const Text("Phone number",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                //phone number filed---->
                TextFormField(
                  controller: phoneControler,
                  validator: (String? value) {
                    if (value == null) {
                      return "Enter Phone Number ";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF134D86), width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: " 9825631478",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(),
                      )),
                  keyboardType: TextInputType.number,
                ),
                const Text("Email",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),

                //email filed------->
                TextFormField(
                  controller: emailControler,
                  validator: (String? value) {
                    if (value == null) {
                      return "Enter Email ";
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      contentPadding: const EdgeInsets.symmetric(
                          vertical: 5, horizontal: 5),
                      filled: true,
                      fillColor: const Color(0xFFFFFFFF),
                      enabledBorder: OutlineInputBorder(
                          borderSide: const BorderSide(
                              color: Color(0xFF134D86), width: 1),
                          borderRadius: BorderRadius.circular(30)),
                      hintText: "wassabi1@gmail.com",
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(30),
                        borderSide: const BorderSide(),
                      )),
                  keyboardType: TextInputType.emailAddress,
                ),
                const Text("Gender",
                    style:
                        TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
                //drop down menu for gender------->
                DropdownButtonFormField(
                    decoration: InputDecoration(
                        contentPadding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 5),
                        enabledBorder: OutlineInputBorder(
                            borderSide: const BorderSide(
                                color: Color(0xFF134D86), width: 1),
                            borderRadius: BorderRadius.circular(30)),
                        border: OutlineInputBorder(
                            borderSide: const BorderSide(),
                            borderRadius: BorderRadius.circular(30))),
                    value: dropdownvalue,
                    icon: const Icon(Icons.keyboard_arrow_down),
                    items: items.map((String items) {
                      return DropdownMenuItem(
                        value: items,
                        child: Text(items),
                      );
                    }).toList(),
                    onChanged: (String? newValue) {
                      setState(() {
                        dropdownvalue = newValue!;
                      });
                    }),
                //otp for radio--------->
                Row(
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
                //signup button--------->
                Align(
                  alignment: Alignment.center,
                  child: ElevatedButton(
                    onPressed: () async {
                      RegistrationRequest registrationRequest =
                          RegistrationRequest(
                              fullName: nameControler.text,
                              contactNumber: phoneControler.text,
                              gender: dropdownvalue,
                              password: "123456",
                              userName: emailControler.text);
                      final result = await NetworkServices().register(
                        url:
                            "http://165.232.166.13/loginsystem/user-registration",
                        requestModel: registrationRequest,
                      );
                      print(result);
                      // if (result['flag'] == "true") {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(content: Text("registration done")));
                      //   Navigator.push(
                      //       context,
                      //       MaterialPageRoute(
                      //           builder: (context) => const OtpPage()));
                      // } else {
                      //   ScaffoldMessenger.of(context).showSnackBar(
                      //       const SnackBar(
                      //           content: Text("Failed registration ")));
                      // }
                    },
                    style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                          32,
                        )),
                        minimumSize: const Size(170, 45),
                        foregroundColor: Colors.white,
                        // Text Color (Foreground color)
                        textStyle: const TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        backgroundColor: const Color(0xFF134D86)),
                    child: const Text("Sign Up"),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Have an account? "),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const Login()));
                      },
                      child: const Text(
                        "Login",
                        style: TextStyle(color: Colors.blue),
                      ),
                    )
                  ],
                )
              ],
            )),
      ),
    );
  }
}
