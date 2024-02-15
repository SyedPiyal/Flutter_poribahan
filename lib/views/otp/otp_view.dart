import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../home/home_view.dart';

class OtpPage extends StatelessWidget {
  const OtpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          iconTheme: const IconThemeData(
        color: Color(0xFF134D86), //change your color here
      )),
      body: Padding(
        padding: const EdgeInsets.only(top: 50, left: 20, bottom: 20),
        child: Column(
          children: [
            const Align(
              alignment: Alignment.centerLeft,
              child: Text("Verify Code",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
              child: Text("Please enter the code we just sent to phone number"),
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(" (+880) 167 123 4123"),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, left: 35, right: 35),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(),
                          )),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(),
                          )),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(),
                          )),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: TextField(
                      textAlign: TextAlign.center,
                      decoration: InputDecoration(
                          contentPadding: EdgeInsets.symmetric(vertical: 10),
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(30),
                            borderSide: const BorderSide(),
                          )),
                      keyboardType: TextInputType.number,
                      inputFormatters: [
                        FilteringTextInputFormatter.digitsOnly,
                        LengthLimitingTextInputFormatter(1)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 65),
              child: ElevatedButton(
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) => const HomePage()));
                },
                style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                      32,
                    )),
                    minimumSize: const Size(300, 40),
                    foregroundColor: Colors.white,
                    // Text Color (Foreground color)
                    textStyle: const TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                    backgroundColor: const Color(0xFF134D86)),
                child: const Text("Continue"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
