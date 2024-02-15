import 'package:first_project/views/welcome/welcome_view.dart';
import 'package:flutter/material.dart';

class StartPage extends StatelessWidget {
  const StartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.infinity,
          height: double.infinity,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage(
                    "assets/images/opening.png",
                  ))),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                  padding: const EdgeInsets.only(top: 50),
                  child: Image.asset("assets/images/ic_logo.png",
                      width: 150, height: 50)),
              Padding(
                padding: const EdgeInsets.only(left: 40),
                child: Row(
                  children: [
                    const Text(
                      "PARIBAHAN",
                      style: TextStyle(fontSize: 30, color: Colors.black),
                    ),
                    const Text(
                      ".",
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const Text(
                      "COM",
                      style: TextStyle(fontSize: 30, color: Colors.blueAccent),
                    ),
                    const Text(
                      "|",
                      style: TextStyle(fontSize: 35, color: Colors.black),
                    ),
                    Image.asset("assets/images/ic_car.png",
                        width: 25, height: 25)
                  ],
                ),
              ),
              const Spacer(),
              Padding(
                padding: const EdgeInsets.only(bottom: 35),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const WelcomePage()));
                  },
                  style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(
                        32,
                      )),
                      minimumSize: const Size(216, 40),
                      foregroundColor: Colors.white,
                      // Text Color (Foreground color)
                      textStyle: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                      ),
                      backgroundColor: const Color(0xFF134D86)),
                  child: const Text("Get Started"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
