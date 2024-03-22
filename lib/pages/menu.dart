import 'package:flutter/material.dart';
import 'courses.dart';
// import '../assets/Logo/';

class UserMenu extends StatelessWidget {
  const UserMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 84, 150),
      // Header
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 90,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 3, 84, 150)),
          child: const Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "Discover More",
                      style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    
                  ],
                ),
                
              ]),
        ),

        //Landing Page

        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Other Courses",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        //decoration: TextDecoration.underline
                      ))
                ],
              ),

              SizedBox(
                height: 20,
              ),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Training Request
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const UserCourses()))); // This Navigation Should be changed
                        },
                      
                      child: Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              //borderRadius: BorderRadius.circular(100)
                              ),
                          padding: const EdgeInsets.all(38),
                          height: 100,
                          width: 150,
                          child: const Icon(Icons.airplanemode_on)
                          //Image.asset('../assets/icons/open-book.png'),

                          ),

                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Specialized Courses',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),

                  // PART-147 Courses

                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const UserCourses()))); // This Navigation Should be changed
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 228, 19, 158),
                                //borderRadius: BorderRadius.circular(100)
                                ),
                            padding: const EdgeInsets.all(38),
                            margin: const EdgeInsets.only(left: 20),
                            height: 100,
                            width: 150,
                            child: const Icon(Icons.gas_meter)
                            //Image.asset('../assets/icons/book-of-black-cover-closed.png'),
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'General Familiarization Training',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),

                 
                ],
              ),

              SizedBox(
                height: 20,
              ),
              
              // UPCOMING COURSES

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("PART-147 Courses Aircraft Types",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),

              // Aribus and Boeing List View

              const SizedBox(
                height: 20,
              ),
              Container(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserCourses()));
                        },
                        child: const Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            'About Us',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 3, 84, 150)),
                          ),
                        ],
                      ),
                      ),
                       
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UserCourses()));
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ))
                    ]),
              ),

              Container(
                margin: const EdgeInsets.only(top: 15),
                padding: const EdgeInsets.symmetric(horizontal: 20),
                height: 65,
                decoration: BoxDecoration(
                    color: Colors.grey.shade200,
                    borderRadius: BorderRadius.circular(15)),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context)=>const UserCourses()));
                        },
                        child: const Row(
                          
                        children: [
                          Icon(
                            Icons.book,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                          SizedBox(
                            width: 20,
                          ),
                          Text(
                            
                            'Contact Us',
                            style: TextStyle(
                                fontSize: 16,
                                color: Color.fromARGB(255, 3, 84, 150)),
                          ),
                        ],
                      ),
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UserCourses()));
                          },
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ))
                    ]
                    ),
              ),

              const SizedBox(
                height: 20,
              ),

              // Non-Part 147 Courses List in two Rows
              

              

              const SizedBox(
                height: 20,
              ),

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Check Out AVIET Technic",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ))
                ],
              ),

              const SizedBox(
                height: 20,
              ),


              Row(
                mainAxisAlignment: MainAxisAlignment.center,

                children: [
                  // Training Request
                  Column(
                    children: <Widget>[
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: ((context) =>
                                      const UserCourses()))); // This Navigation Should be changed
                        },
                        child: Container(
                            decoration: BoxDecoration(
                                color: const Color.fromARGB(255, 228, 19, 158),
                                //borderRadius: BorderRadius.circular(100)
                                ),
                            padding: const EdgeInsets.all(38),
                            margin: const EdgeInsets.only(left: 20),
                            height: 100,
                            width: 200,
                            child: const Icon(Icons.tire_repair)
                            // Image.asset('../assets/icons/screwdriver-and-doble-wrench.png'),
                            ),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'EWIS',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),

                  // PART-147 Courses

                  
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // OUR APPROVALS
              
              
            ],
          ),
        )
      ]),

      // Bottom Navigation  Bar
    );
  }
}