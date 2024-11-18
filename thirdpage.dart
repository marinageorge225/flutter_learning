import 'package:flutter/material.dart';
import 'package:lastsession/models/problem_model.dart';
import 'package:lastsession/views/feedback.dart';

class ThirdPage extends StatelessWidget {
  final List<Problem> problems = [
    Problem(images: 'assets/problem1.jpg', title: 'Array Sum', difficulty: 'Easy'),
    Problem(images: 'assets/problem2.jpg', title: 'Binary Search', difficulty: 'Medium'),
    Problem(images: 'assets/problem3.jpg', title: 'Graph Traversal', difficulty: 'Hard'),
    Problem(images: 'assets/problem4.jpg', title: 'Dynamic Programming', difficulty: 'Hard'),
    Problem(images: 'assets/problem5.jpg', title: 'Sorting Algorithms', difficulty: 'Medium'),
    Problem(images: 'assets/problem6.jpg', title: 'Recursion Basics', difficulty: 'Easy'),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        title: Text("Problem Solving"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(8.0),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            crossAxisSpacing: 8.0,
            mainAxisSpacing: 8.0,
            childAspectRatio: 0.8,
          ),
          itemCount: problems.length,
          itemBuilder: (context, index) {
            return ProblemWidget(problem: problems[index]);
          },
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {

          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => FeedbackPage()),
          );
        },
        child: Icon(Icons.feedback),
        backgroundColor: Color(0xFF635BFF),
      ),
    );
  }
}

class ProblemWidget extends StatelessWidget {
  final Problem problem;

  ProblemWidget({required this.problem});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1.5, // Adjust aspect ratio as needed
            child: Image.asset(problem.images, fit: BoxFit.cover),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0), // Adjust padding
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text(problem.title, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14)),
                SizedBox(height: 4),
                Text('Difficulty: ${problem.difficulty}', style: TextStyle(color: Colors.grey[700], fontSize: 12)),
                SizedBox(height: 4),
                ElevatedButton(
                  onPressed: () {

                  },
                  child: Text('Solve'),
                  style: ElevatedButton.styleFrom(
                    minimumSize: Size(double.infinity, 36),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
