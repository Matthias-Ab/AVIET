class Course {
  String image;
  String price;
  String brand;
  String model;
  String co2;
  String fuelCons;

  Course(
    this.image,
    this.price,
    this.brand,
    this.model,
    this.co2,
    this.fuelCons,
  );
}

List<Course> courseList = [
  Course(
    'assets/logo/place-flying-sunset-sky.jpg',
    "Airbus",
    'Differences',
    '3A 9200',
    '77/km',
    '12 Days',
  ),
  Course(
    'assets/logo/aviet-white.png',
    "Airbus",
    'Airbus A350',
    '3A 9200',
    '77/km',
    '12 Days',
  ),
  Course(
    'assets/logo/aviet-white.png',
    "Airbus",
    'Boeing B777',
    '3A 9200',
    '77/km',
    '12 Days',
  ),
  Course(
    'assets/logo/aviet-white.png',
    "Airbus",
    'Boeing B747',
    '3A 9200',
    '77/km',
    '12 Days',
  ),
];