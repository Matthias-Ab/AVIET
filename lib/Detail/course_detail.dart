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
          fit: BoxFit.fitHeight,
        ),

        courseDetailAppbar(context),
        Positioned(
          left: 10,
          right: 10,
          bottom: 25,
          child: Stack(
            children: [
              Container(
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.only(top: 45),
                decoration: BoxDecoration(
                    color: Colors.white70,
                    borderRadius: BorderRadius.circular(20)),
                child: courseInformation(),
              ),
              Positioned(
                right: -30,
                child: Image.asset(
                  course.image,
                  height: 200,
                ),
              )
            ],
          ),
        )

        // for back button, name and menu icon
      ],
    ));
  }

  Column courseInformation() {
    return Column(
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
        const Text(
          "Aircraft Type",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 15,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            CourseItems(
              name: "Course",
              value: course.brand,
              textColor: Colors.black,
            ),
            CourseItems(
                name: "From", value: course.model, textColor: Colors.black),
            CourseItems(name: "To", value: course.co2, textColor: Colors.black),
            CourseItems(
                name: "Duration",
                value: course.fuelCons,
                textColor: Colors.black),
          ],
        ),
        const Divider(
          height: 50,
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "- BOEING 747-400 (GE CF-6) AND BOEING 747-400 \n (GE CF-6 TO PW4000) DIFFERENCES",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "- BOEING 747-400 (GE CF-6) AND BOEING 747-400 \n (GE CF-6 TO PW4000) DIFFERENCES",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "- BOEING 747-400 (GE CF-6) AND BOEING 747-400 \n (GE CF-6 TO PW4000) DIFFERENCES",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "- BOEING 747-400 (GE CF-6) AND BOEING 747-400 \n (GE CF-6 TO PW4000) DIFFERENCES",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "- BOEING 747-400 (GE CF-6) AND BOEING 747-400 \n (GE CF-6 TO PW4000) DIFFERENCES",
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 12),
            ),
          ],
        ),
      ],
    );
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
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 40,),
          ),
          const Text(
            textAlign: TextAlign.right,
            
            "Course Detail",
            
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 25, color: Colors.white),
          ),

          IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back, color: Colors.white, size: 40,),
          ),
        ],
      ),
    );
  }
}
