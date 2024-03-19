import 'package:flutter/material.dart';
// import '../assets/Logo/';

class UserHome extends StatelessWidget {
  const UserHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 3, 84, 150),
      // Header
      body: Column(children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: 25, horizontal: 25),
          alignment: Alignment.bottomCenter,
          height: 100,
          decoration:
              const BoxDecoration(color: Color.fromARGB(255, 3, 84, 150)),
          child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceBetween,
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
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                    Text(
                      "MAINTENANCE TRAINING",
                      style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Color.fromARGB(255, 255, 255, 255)),
                    ),
                  ],
                ),
                Row(
                  children: [
                    Image.asset('assets/logo/aviet-white.png'),
                    //Icon()
                  ],
                )
              ]),
        ),

        //Landing Page

        Expanded(
          child: ListView(
            padding: const EdgeInsets.all(25),
            children: [
              const Text(
                "We Provide",
                style: TextStyle(
                  color: Color.fromARGB(255, 255, 255, 255),
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
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(38),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.airplanemode_on)
                          //Image.asset('../assets/icons/open-book.png'),

                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Non Part-145',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),

                  // PART-147 Courses

                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(38),
                          margin: const EdgeInsets.only(left: 20),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.library_books)
                          //Image.asset('../assets/icons/book-of-black-cover-closed.png'),
                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'PART-147 Courses',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),

                  // PART-145 AVIET Technic

                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              borderRadius: BorderRadius.circular(10)),
                          padding: const EdgeInsets.all(38),
                          margin: const EdgeInsets.only(left: 20),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.tire_repair)
                          // Image.asset('../assets/icons/screwdriver-and-doble-wrench.png'),
                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'PART-145 AVIET Technic',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
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
                                color: Color.fromARGB(255, 3, 84, 150)),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => const UserHome()));
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
                                color: Color.fromARGB(255, 3, 84, 150)),
                          ),
                        ],
                      ),
                      IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.arrow_circle_right,
                            color: Color.fromARGB(255, 3, 84, 150),
                          ))
                    ]),
              ),


                         

              const SizedBox(
                height: 20,
              ),

              // Non-Part 147 Courses List in two Rows
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Non-Part 147 Courses",
                      style: TextStyle(
                        color: Color.fromARGB(255, 255, 255, 255),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        //decoration: TextDecoration.underline
                      ))
                ],
              ),

              Row(
                children: [
                  // Training Request
                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(38),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.airplanemode_on)
                          //Image.asset('../assets/icons/open-book.png'),

                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Human Factors',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),

                  // PART-147 Courses

                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(38),
                          margin: const EdgeInsets.only(left: 20),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.library_books)
                          //Image.asset('../assets/icons/book-of-black-cover-closed.png'),
                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Fuel Tanks Safety',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),

                  // PART-145 AVIET Technic

                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(38),
                          margin: const EdgeInsets.only(left: 20),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.tire_repair)
                          // Image.asset('../assets/icons/screwdriver-and-doble-wrench.png'),
                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'Train The Trainers',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),
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
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(38),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.airplanemode_on)
                          //Image.asset('../assets/icons/open-book.png'),

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

                  Column(
                    children: [
                      Container(
                          decoration: BoxDecoration(
                              color: const Color.fromARGB(255, 228, 19, 158),
                              borderRadius: BorderRadius.circular(100)),
                          padding: const EdgeInsets.all(38),
                          margin: const EdgeInsets.only(left: 20),
                          height: 100,
                          width: 100,
                          child: const Icon(Icons.library_books)
                          //Image.asset('../assets/icons/book-of-black-cover-closed.png'),
                          ),
                      const SizedBox(
                        height: 15,
                      ),
                      RichText(
                          text: const TextSpan(
                              text: 'EASA PART 66/147',
                              style: TextStyle(
                                color: Color.fromARGB(255, 255, 255, 255),
                                fontSize: 11,
                              )))
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              // OUR APPROVALS
              const Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Text("Our Approvals",
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

              Container(
                decoration: BoxDecoration(color: Colors.blue.shade900),
                height: 350,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(children: [
                    buildCard(),
                    const SizedBox(width: 12),
                    buildCard(),
                    const SizedBox(width: 12),
                    buildCard(),
                    const SizedBox(width: 12),
                  ]),
                ),
              ),
            ],
          ),
        )
      ]),

      // Bottom Navigation  Bar
    );
  }

  Widget buildCard() => Container(
        width: 200,
        height: 500,
        color: const Color.fromARGB(255, 3, 84, 150),
        child: Column(
          children: [
            Image.network(
                "https://aviet.aero/wp-content/uploads/2023/04/EASA-Form-11-Revision-12-2.png"),
            const Text(
              'EASA',
              style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            )
          ],
        ),
      );
}
