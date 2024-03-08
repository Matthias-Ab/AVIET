import 'package:flutter/material.dart';
// import '../assets/Logo/';


class UserHome extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
// Header
      body: Column(children: [
        Container(
          padding:  const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 100,
          decoration:   const BoxDecoration(color: Color.fromARGB(255, 255, 255, 255)),


          child:  Row(
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "AVIET AIRCRAFT",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 80, 138)
                  ),
                ),
                Text(
                  "MAINTENANCE TRAINING",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Color.fromARGB(255, 8, 89, 155)),
                ),
              ],
            ),
            // Row(
            //   children: [
            //     // Image.asset('../assets/Logo/aviet-white.png'),
            //     Icon()
            //   ],
            // )
          ]),
        ),

        



              //Landing Page

        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children:  [
              const Text(
                "We Provide",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                children: [

                    // Training Request
                  Column(
                    
                    children: [
                      
                      Container(
                        
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 19, 158),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(38),
                        height: 100,
                        width: 100,
                        child: Icon(Icons.airplanemode_on)
                        //Image.asset('../assets/icons/open-book.png'),
                        
                        
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                        
                        text: const TextSpan(
                        text: 'Non Part-145',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 84, 150),
                          fontSize: 11,
                        )
                      ))
                    ],
                  ),

                    
                    // PART-147 Courses

                Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 19, 158),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(38),
                        margin: const EdgeInsets.only(left: 20),
                        height: 100,
                        width: 100,
                        child: Icon(Icons.library_books)
                        //Image.asset('../assets/icons/book-of-black-cover-closed.png'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                        text: const TextSpan(
                        text: 'PART-147 Courses',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 84, 150),
                          fontSize: 11,
                        )
                      ))
                    ],
                  ),

                        // PART-145 AVIET Technic

              Column(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 228, 19, 158),
                          borderRadius: BorderRadius.circular(10)
                        ),
                        padding: const EdgeInsets.all(38),
                        margin: const EdgeInsets.only(left: 20),
                        height: 100,
                        width: 100,
                        child: Icon(Icons.tire_repair)
                        // Image.asset('../assets/icons/screwdriver-and-doble-wrench.png'),
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                        text: const TextSpan(
                        text: 'PART-145 AVIET Technic',
                        style: TextStyle(
                          color: Color.fromARGB(255, 3, 84, 150),
                          fontSize: 11,
                          
                        )
                      ))
                    ],
                  ),

                  

                  
                ],
              ),
                      
                      // DIVIDER
              const Divider(
                    height: 60,
                  ),
                
                    // UPCOMING COURSES

              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                      Text(
                        "Upcoming Courses",
                        style: TextStyle (
                          color: Color.fromARGB(255, 3, 84, 150),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ],
                  ),

                        // Aribus and Boeing List View

                  const SizedBox(height: 20,),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 65,
                    decoration: BoxDecoration( 
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                      const Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                        
                      
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Airbus',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 3, 84, 150)
                        ),
                      ),
                      ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  UserHome()
                            )
                          );
                        }, 
                        icon: const Icon(
                        Icons.arrow_circle_right,
                        color: Color.fromARGB(255, 3, 84, 150),
                      )
                      )
                    ]),

                    
                  ),


                  Container(
                    margin: const EdgeInsets.only(top: 15),
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    height: 65,
                    decoration: BoxDecoration( 
                      color: Colors.grey.shade200,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child:  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [ 
                      const Row(
                        children: [
                          Icon(
                            Icons.book,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                        
                      
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Boeing',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 3, 84, 150)
                        ),
                      ),
                      ],
                      ),
                      IconButton(
                        onPressed: () {}, 
                        icon: const Icon(
                        Icons.arrow_circle_right,
                        color: Color.fromARGB(255, 3, 84, 150),
                      )
                      )
                    ]),

                    
                  ),

                  // OUR APPROVALS
                  const Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [ 
                      Text(
                        "Our Approvals",
                        style: TextStyle (
                          color: Color.fromARGB(255, 3, 84, 150),
                          fontSize: 18,
                          fontWeight: FontWeight.bold,
                        )
                      )
                    ],
                  ),

                  
                  

            ],
          ),
        )
      ]),
      

                
                // Bottom Navigation  Bar


      
    );
  }
}