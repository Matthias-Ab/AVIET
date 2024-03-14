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
      ),

      body: ListView.builder(
        shrinkWrap: true,
        itemCount: carList.length,
        itemBuilder: (context, index) {
          final car = carList[index];

          return GestureDetector(
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => CarDetailScreen(car)));
            },

            child: Container( 
              margin: const EdgeInsets.only(bottom: 20),
              child: Stack( 
                children: [ 
                  Container(
                    width: double.infinity,
                    margin: const EdgeInsets.only(left: 24, right: 24, top: 50),
                    padding: const EdgeInsets.only(
                      left: 25, bottom: 15, right: 20, top: 10
                      
                    ),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Colors.grey.shade200,
                    ),

                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [ 
                        Text(
                          "\$${car.price.toString()}",
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 25,
                            color: Colors.pink,
                          ),
                        ),

                        const Text(
                          "Price/hr",
                          style: TextStyle(
                            color: Colors.pink, fontWeight: FontWeight.bold
                          ),

                          
                        ),

                        const SizedBox(
                            height: 15,
                          ),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            CarItems(name: "Aircraft", value: car.brand, textColor: Color.fromARGB(255, 3, 84, 150)),
                            CarItems(name: "Engine", value: car.model, textColor: Color.fromARGB(255, 3, 84, 150)),
                            CarItems(name: "Practical", value: car.co2, textColor: Color.fromARGB(255, 3, 84, 150)),
                            CarItems(name: "Theoretical", value: car.fuelCons, textColor: Color.fromARGB(255, 3, 84, 150)),
                          ],
                        )
                        
                      ],
                      
                    ),
                  ),

                  Positioned(
                      right: 30,
                      child: Hero( 
                        tag: car.image,
                        child: Image.asset( 
                          car.image, height: 115,
                        ),
                      ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
                

    );
  }
}