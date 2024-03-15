import 'package:flutter/material.dart';
import 'package:navigation_bar/common/card_list.dart';
import '../model/car.dart';

class CourseDetail extends StatelessWidget {
  const CourseDetail(this.course, {super.key});
  final Course course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Stack(
      children: [
        // for image
        Image.asset(
          "assets/aviet locations.png",
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          fit: BoxFit.fill,
        ),

        courseDetailAppbar(context),
        Positioned(
          left: 10,
          right: 10,
          bottom: 25,
          child: Stack(
            children: [ 
              Container(
                padding: EdgeInsets.all(15),
                margin: EdgeInsets.only(top: 45),
                decoration: BoxDecoration(
                  color: Colors.blue.shade900,
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
                            CourseItems(name: "Engine", value: course.model),
                            CourseItems(name: "CO2", value: course.co2),
                            CourseItems(name: "Duration", value: course.fuelCons),

                          ],
                        )
                      ],
                    ),
              ),
              Positioned( 
                right: 60,
                child: Image.asset(
                  course.image,
                ),
              )
            ],
          ),
        )

        // for back button, name and menu icon
      ],
    ));
  }

  SafeArea courseDetailAppbar(BuildContext context) {
    return SafeArea(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back_ios, color: Colors.pink),
          ),
          const Text(
            "Course Detail",
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),
          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Colors.white,
            ),
          ),
        ],
      ),
    );
  }
}
