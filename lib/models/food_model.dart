class Food {
  String name;
  String rating;
  String time;
  String img;
  Food(
      {required this.img,
      required this.name,
      required this.rating,
      required this.time});
}

List<Food> foods = [
  Food(
      img: 'assets/images/food1.jpg',
      name: 'Phutara Green Park ',
      rating: "4.8",
      time: '18.30'),
  Food(
      img: 'assets/images/food2.jpg',
      name: 'ลูกชิ้นป้านก สถานีรถไฟบุรีรัมย์ ',
      rating: "5",
      time: '13.40'),
  Food(
      img: 'assets/images/food3.jpg',
      name: 'ชุมพล ปาท่องโก๋ บุรีรัมย์ ',
      rating: "4.9",
      time: '12.00'),
  Food(
      img: 'assets/images/food4.jpg',
      name: 'หลังวังประโคนชัย',
      rating: "4.6",
      time: '20.00'),
  Food(
      img: 'assets/images/food6.jpg',
      name: 'สองพี่น้อง บุรีรัมย์',
      rating: "4.7",
      time: '22.00'),
  Food(
      img: 'assets/images/food7.jpg',
      name: 'เจ้อ้วนเนื้อย่างเกาหลี',
      rating: "4.8",
      time: '00.00'),
  Food(
      img: 'assets/images/food8.jpg',
      name: 'Chef Plus Cafe ',
      rating: "5",
      time: '17.00'),
];
