import 'package:flutter/material.dart';
import 'package:navigation_bar/Detail/course_detail.dart';
import 'package:navigation_bar/common/card_list.dart';
import 'package:navigation_bar/model/car.dart';
import 'package:navigation_bar/Detail/course_detail.dart';
import 'package:navigation_bar/common/card_list.dart';

class UserCourses extends StatelessWidget {
  const UserCourses({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 84, 150),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 3, 84, 150),
        title: const Text(
          "Our Courses",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: const [
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(
            width: 20,
          )
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: courseList.length,
        itemBuilder: (context, index) {
          final course = courseList[index];
          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) =>  CourseDetail(course)));
            },
            child: Container(
              margin: const EdgeInsets.only(bottom: 20),
              child: Stack(
                children: [
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
                    padding: const EdgeInsets.only(
                        left: 25, bottom: 15, right: 20, top: 10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          course.price.toString(),
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.pink[400],
                          ),
                        ),
                        Text(
                          "Aircraft Type",
                          style: TextStyle(
                              color: Colors.blue.shade900,
                              fontWeight: FontWeight.bold),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CourseItems(name: "Course", value: course.brand),
                            CourseItems(name: "From", value: course.model),
                            CourseItems(name: "To", value: course.co2),
                            CourseItems(name: "Duration", value: course.fuelCons),

                          ],
                        )
                      ],
                    ),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 30,
                    child: Image.asset(
                      course.image,
                      // color: Colors.blue.shade900,
                      height: 200,
                    ),
                  )
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
