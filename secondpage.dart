import 'package:flutter/material.dart';
import 'package:lastsession/models/courses_model.dart';
import 'package:lastsession/pages/thirdpage.dart';

class CoursesScreen extends StatelessWidget {
  final List<Course> courses = [
    Course(image: 'assets/course1.jpg', title: 'Java Courses', tutor: 'Steve Holmes', cost: 50, rating: 4.5),
    Course(image: 'assets/course2.jpg', title: 'C++ Courses', tutor: 'Palmer Walter', cost: 70, rating: 4.5),
    Course(image: 'assets/course3.jpg', title: 'Dart Courses', tutor: 'Arlene McCoy', cost: 90, rating: 4.5),
    Course(image: 'assets/course4.jpg', title: 'Python courses', tutor: 'Savannah', cost: 100, rating: 4.0),
    Course(image: 'assets/course5.jpg', title: 'Html courses', tutor: 'Liam Stone', cost: 60, rating: 4.2),
    Course(image: 'assets/course6.jpg', title: 'Javascript courses', tutor: 'Emma Davis', cost: 85, rating: 4.8),
    Course(image: 'assets/course7.jpg', title: 'Css courses', tutor: 'Olivia Brown', cost: 75, rating: 4.3),
    Course(image: 'assets/course8.jpg', title: 'C# courses', tutor: 'Noah Johnson', cost: 95, rating: 4.6),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Available Courses',
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        leading: IconButton(
          icon: Icon(Icons.arrow_back),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Column(
        children: [
          Expanded(
            child: GridView.builder(
              padding: EdgeInsets.all(8.0),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 8.0,
                mainAxisSpacing: 8.0,
                childAspectRatio: 0.8,
              ),
              itemCount: courses.length,
              itemBuilder: (context, index) {
                return CourseWidget(course: courses[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => ThirdPage(),
            ),
          );
        },
        child: Icon(Icons.navigate_next, color: Colors.white),
        backgroundColor: Colors.indigo,
        tooltip: 'Next',
      ),
    );
  }
}

class CourseWidget extends StatelessWidget {
  final Course course;

  CourseWidget({required this.course});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {

      },
      child: Container(
        margin: EdgeInsets.all(4), // Adjusted margin
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            AspectRatio(
              aspectRatio: 1.5, // Adjust aspect ratio of the image
              child: Image.asset(course.image, fit: BoxFit.cover),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    course.title,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 14),
                  ), // Adjust font size
                  SizedBox(height: 4),
                  Text(
                    'Course Tutor: ${course.tutor}',
                    style: TextStyle(color: Colors.grey[700], fontSize: 12),
                  ), // Adjust font size
                  SizedBox(height: 4),
                  Text(
                    'Cost: \$${course.cost}',
                    style: TextStyle(color: Colors.black, fontSize: 12),
                  ), // Adjust font size
                  SizedBox(height: 4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      for (int i = 0; i < 5; i++)
                        Icon(
                          i < course.rating ? Icons.star : Icons.star_border,
                          color: Colors.amber,
                          size: 16, // Adjust icon size
                        ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
