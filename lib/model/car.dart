class Car {
  String image;
  int price;
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
    'assets/Logo/aviet.png-white',
    120,
    'Airbus A220',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'assets/Logo/aviet.png',
    185,
    'Airbus A350',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'assets/Logo/aviet.png',
    100,
    'Boeing B777',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
  Car(
    'assets/Logo/aviet.png',
    90,
    'Boeing B747',
    '3A 9200',
    '77/km',
    '5,5 L',
  ),
];