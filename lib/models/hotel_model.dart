// ignore_for_file: prefer_typing_uninitialized_variables

class Hotel {
  String imageUrl;
  String name;
  int rating;
  int price;

  Hotel(
      {required this.imageUrl,
      required this.name,
      required this.price,
      required this.rating});
}

List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/h1.jpg',
    name: 'อมารี บุรีรัมย์ ',
    price: 300,
    rating: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/h2.jpg',
    name: 'โรงแรมเบสต์ เวสเทิร์น',
    price: 120,
    rating: 3,
  ),
  Hotel(
    imageUrl: 'assets/images/h3.jpg',
    name: 'โรงแรมเครสโค',
    price: 150,
    rating: 2,
  ),
  Hotel(
    imageUrl: 'assets/images/h4.jpg',
    name: 'บีทู บุรีรัมย์ บูทิก ',
    price: 180,
    rating: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/h5.jpg',
    name: 'โรงแรมเรย์',
    price: 300,
    rating: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/h6.jpg',
    name: 'โฮเทล เดอ ลามูร์',
    price: 320,
    rating: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/h7.jpg',
    name: 'โรงแรมคู',
    price: 200,
    rating: 5,
  ),
  Hotel(
    imageUrl: 'assets/images/h8.jpg',
    name: 'โรงแรม เดอะ เซอร์เคิล',
    price: 120,
    rating: 5,
  ),
  Hotel(
      imageUrl: 'assets/images/h9.jpg',
      name: "โรงแรมอัลเวเรซ",
      price: 160,
      rating: 4),
  Hotel(
      imageUrl: "assets/images/h10.jpg",
      name: "สกาย วิว รีสอร์ต",
      price: 190,
      rating: 4)
];

class Bed {
  final bed1;
  final bed2;
  final bed3;
  Bed({required this.bed1, required this.bed2, required this.bed3});
}

List<Bed> beds = [
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
  Bed(
      bed1: 'assets/images/bed1.png',
      bed2: 'assets/images/bed2.png',
      bed3: 'assets/images/bed3.png'),
];
