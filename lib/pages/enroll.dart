import 'package:flutter/material.dart';

class UserEnroll extends StatelessWidget {

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
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
            const Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "AVIET AIRCRAFT",
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue
                  ),
                ),
                Text(
                  "MAINTENANCE TRAINING",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue),
                ),
              ],
            ),
            // Row(
            //   children: [
                
            //     // Image.asset('assets/Logo/aviet-white.png'),
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
                "Enroll Now",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
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
                            Icons.edit_document,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                        
                      
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'General Training Form',
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
                            Icons.edit_document,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                        
                      
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Part-147 Type Courses',
                        style: TextStyle(
                          fontSize: 16,
                          color: Color.fromARGB(255, 3, 84, 150)
                        ),
                      ),
                      ],
                      ),
                      IconButton(
                        onPressed: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) =>  UserEnroll()));
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
                            Icons.edit_document,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                        
                      
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Non Part-147 Courses',
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
                            Icons.edit_document,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                        
                      
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'Specialized Courses',
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
                            Icons.edit_document,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ),
                        
                      
                      SizedBox(
                        width: 20,
                      ),
                      Text(
                        'General Familiarization Training',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
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


            ],
          ),
        )
      ]),
      

                

    );
  }
}