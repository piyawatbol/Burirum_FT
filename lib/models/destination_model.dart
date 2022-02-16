import 'package:work3/models/activity_model.dart';

class Destination {
  String imageUrl;
  String city;
  String country;
  String description;
  List<Activity> activities;

  Destination({
    required this.imageUrl,
    required this.city,
    required this.country,
    required this.description,
    required this.activities,
  });
}

List<Activity> activities = [
  Activity(
    imageUrl: 'assets/images/stmarksbasilica.jpg',
    name: 'St. Mark\'s Basilica',
    type: 'Sightseeing Tour',
    startTimes: ['9:00 am', '11:00 am'],
    rating: 5,
    price: 30,
  ),
  Activity(
    imageUrl: 'assets/images/gondola.jpg',
    name: 'Walking Tour and Gonadola Ride',
    type: 'Sightseeing Tour',
    startTimes: ['11:00 pm', '1:00 pm'],
    rating: 4,
    price: 210,
  ),
  Activity(
    imageUrl: 'assets/images/murano.jpg',
    name: 'Murano and Burano Tour',
    type: 'Sightseeing Tour',
    startTimes: ['12:30 pm', '2:00 pm'],
    rating: 3,
    price: 125,
  ),
];

List<Destination> destinations = [
  Destination(
    imageUrl: 'assets/images/1.jpg',
    city: 'Chang Arena ',
    country: 'เมือง',
    description:
        'ชื่อเดิม ไอ-โมบาย สเตเดียม ตั้งอยู่ที่อำเภอเมือง สนามแห่งมีความจุ 32,600 ที่นั่ง',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/2.jpg',
    city: 'เขาพนมรุ้ง',
    country: 'เฉลิมพระเกียรติ',
    description: 'ห่างจากตัวเมืองบุรีรัมย์ลงมาทางทิศใต้ประมาณ 77 กิโลเมตร',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newdelhi.jpg',
    city: 'New Delhi',
    country: 'India',
    description: 'Visit New Delhi for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/saopaulo.jpg',
    city: 'Sao Paulo',
    country: 'Brazil',
    description: 'Visit Sao Paulo for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/newyork.jpg',
    city: 'New York City',
    country: 'United States',
    description: 'Visit New York for an amazing and unforgettable adventure.',
    activities: activities,
  ),
  Destination(
    imageUrl: 'assets/images/1.jpg',
    city: 'Chang Arena ',
    country: 'Muang',
    description:
        'ชื่อเดิม ไอ-โมบาย สเตเดียม ตั้งอยู่ที่อำเภอเมือง สนามแห่งมีความจุ 32,600 ที่นั่ง',
    activities: activities,
  ),
];
