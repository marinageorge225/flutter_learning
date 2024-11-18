import 'package:flutter/material.dart';
import '../models/onboarding_model.dart';
import 'loginscreen.dart'; // Import the LoginScreen

List<OnBoardingModel> onBoardingList = [
  OnBoardingModel(
    title: 'Learn',
    body: 'Learn anytime & anywhere easily and conveniently',
    image: 'assets/onboarding1.png',
  ),
  OnBoardingModel(
    title: 'Knowledge',
    body: 'Gain knowledge & skills ready for the job market',
    image: 'assets/onboarding2.png',
  ),
  OnBoardingModel(
    title: 'Collaborative Study',
    body: 'Study in groups, Share ideas',
    image: 'assets/onboarding3.png',
  ),
];

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int index = 0; // Initialize index as a state variable

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          TextButton(
            onPressed: () {
              if (index < onBoardingList.length - 1) {
                setState(() {
                  index++;
                });
              } else {
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const LoginScreen(),
                  ),
                );
              }
            },
            child: Text(
              index == onBoardingList.length - 1 ? 'Finish' : 'Next',
              style: TextStyle(
                color: Colors.white,
                fontSize: 20,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
        ],
      ),
      backgroundColor: Colors.indigoAccent,
      body: Padding(
        padding: const EdgeInsets.all(5.0),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(onBoardingList[index].image),
              SizedBox(height: 10),
              Text(
                onBoardingList[index].title,
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w900,
                  fontSize: 40,
                  letterSpacing: 4.0,
                ),
                textAlign: TextAlign.center,
              ),
              SizedBox(height: 20),
              Text(
                onBoardingList[index].body,
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                  fontWeight: FontWeight.w500,
                ),
                textAlign: TextAlign.center,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
