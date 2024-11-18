import 'package:flutter/material.dart';
import 'package:lastsession/pages/secondpage.dart';

class FirstPage extends StatefulWidget {
  const FirstPage({super.key});

  @override
  State<FirstPage> createState() => _FirstPageState();
}

class _FirstPageState extends State<FirstPage> {
  String selectedGoal = '';

  final List<String> goals = [
    'Programming',
    'Marketing',
    'UI/UX Design',
    'Development',
    'Graphics'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.indigo,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.close, color: Colors.white),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              'What you will learn?',
              style: TextStyle(
                color: Colors.white,
                fontSize: 30,
                fontWeight: FontWeight.w600,
              ),
            ),
            const SizedBox(height: 10),
            const Text(
              'Select your goal of learn',
              style: TextStyle(
                color: Colors.white70,
                fontSize: 16,
              ),
            ),
            const SizedBox(height: 40),
            Wrap(
              spacing: 30,
              runSpacing: 50,
              children: goals.map((goal) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      selectedGoal = goal;
                    });
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 12, horizontal: 24),
                    decoration: BoxDecoration(
                      color: selectedGoal == goal
                          ? Colors.blueAccent
                          : Colors.white,
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: selectedGoal == goal
                            ? Colors.white
                            : Colors.transparent,
                        width: 4,
                      ),
                    ),
                    child: Text(
                      goal,
                      style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                );
              }).toList(),
            ),
            const SizedBox(height: 20),
            Center(
              child: Image.asset(
                'assets/firstpage.png', // Replace with your image path
                height: 250,
                width: 250,
              ),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) =>  CoursesScreen(),
                    ),
                  );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.white,
                padding: const EdgeInsets.symmetric(
                    horizontal: 30, vertical: 10),
              ),
              child: const Text(
                'Continue',
                style: TextStyle(
                  color: Colors.indigo,
                  fontSize: 16,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
