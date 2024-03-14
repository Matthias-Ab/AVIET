import 'package:flutter/material.dart';
import 'package:navigation_bar/model/car.dart';
import 'package:navigation_bar/Detail/course_detail.dart';
import 'package:navigation_bar/common/card_list.dart';

class UserCourses extends StatelessWidget {
  const UserCourses({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 3, 84, 150),
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Color.fromARGB(255, 3, 84, 150),
        title: const Text(
          "Our Courses",
          style: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 25,
            color: Colors.white,
          ),
        ),
        actions: [ 
          Icon(
            Icons.menu,
            color: Colors.white,
          ),
          SizedBox(width: 20,)
        ],
      ),
      body: ListView.builder(
        shrinkWrap: true,
        itemCount: 1,
        itemBuilder: (context, index) {
          final course = courseList[index];
          return GestureDetector(
            onTap: () {},
            child: Stack(
              children: [ 
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(left: 24, right: 24, top: 50),
                  padding: EdgeInsets.only(
                    left: 25, bottom: 15, right: 20, top: 10
                  ),
                  decoration: BoxDecoration( 
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.grey.shade200,
                  ),
                  child: Column(
                    children: [Text(
                      "${course.price.toString()}",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 25,
                        color: Colors.pink[400],
                      ),
                    )],
                  ),
                ),

                Positioned(
                  right: 30,
                  child: Image.asset(
                    course.image,
                  ),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}