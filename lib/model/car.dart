class Car {
  String image;
  String price;
  String brand;
  String model;
  String co2;
  String fuelCons;

  Car(
    this.image,
    this.price,
    this.brand,
    this.model,
    this.co2,
    this.fuelCons,
  );
}

List<Car> carList = [
  Car(
    'assets/Logo/aviet.png',
    "Airbus",
    'Airbus A220',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'assets/Logo/aviet.png',
    "Airbus",
    'Airbus A350',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'assets/Logo/aviet.png',
    "Airbus",
    'Boeing B777',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'assets/Logo/aviet.png',
    "Airbus",
    'Boeing B747',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
];