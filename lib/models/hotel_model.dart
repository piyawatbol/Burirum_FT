class Hotel {
  String imageUrl;
  String name;

  int price;

  Hotel({
    required this.imageUrl,
    required this.name,
    required this.price,
  });
}

final List<Hotel> hotels = [
  Hotel(
    imageUrl: 'assets/images/h1.jpg',
    name: 'อมารี บุรีรัมย์ ',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/h2.jpg',
    name: 'โรงแรมเบสต์ เวสเทิร์น',
    price: 120,
  ),
  Hotel(
    imageUrl: 'assets/images/h3.jpg',
    name: 'โรงแรมเครสโค',
    price: 150,
  ),
  Hotel(
    imageUrl: 'assets/images/h4.jpg',
    name: 'บีทู บุรีรัมย์ บูทิก ',
    price: 180,
  ),
  Hotel(
    imageUrl: 'assets/images/h5.jpg',
    name: 'โรงแรมเรย์',
    price: 300,
  ),
  Hotel(
    imageUrl: 'assets/images/h6.jpg',
    name: 'โฮเทล เดอ ลามูร์',
    price: 320,
  ),
  Hotel(
    imageUrl: 'assets/images/h7.jpg',
    name: 'โรงแรมคู',
    price: 200,
  ),
  Hotel(
    imageUrl: 'assets/images/h8.jpg',
    name: 'โรงแรม เดอะ เซอร์เคิล',
    price: 120,
  ),
  Hotel(imageUrl: 'assets/images/h9.jpg', name: "โรงแรมอัลเวเรซ", price: 160),
  Hotel(imageUrl: "assets/images/h10.jpg", name: "สกาย วิว รีสอร์ต", price: 190)
];
