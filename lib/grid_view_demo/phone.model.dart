import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Phone {
  Phone({
    required this.phoneName,
    required this.id,
    required this.image,
    required this.color,
    this.isFav = false,
  });

  int id;
  String phoneName;
  String image;
  Color color;
  bool isFav;

  static List<Phone> getPhoneList() {
    List<Phone> list = [
      new Phone(
          phoneName: 'NOKIA', id: 1, image: 'Nokia.png', color: Colors.amber),
      new Phone(phoneName: 'Y6', id: 2, image: '6s.png', color: Colors.red),
      new Phone(phoneName: 'Nova', id: 3, image: '6s.png', color: Colors.black),
      new Phone(
          phoneName: 'Apple Iphone x',
          id: 3,
          image: 'photo-1478144592103-25e218a04891.jpeg',
          color: Colors.greenAccent),
      new Phone(
          phoneName: 'Y8',
          id: 4,
          image: 'photo-1520981825232-ece5fae45120.jpeg',
          color: Colors.black),
      new Phone(
          phoneName: 'Y8', id: 3, image: 'samsung-m31.png', color: Colors.black),
      new Phone(
          phoneName: 'Y9',
          id: 3,
          image: 'SS_S20_Ultra.png',
          color: Colors.blue),
      new Phone(
          phoneName: 'Y99',
          id: 3,
          image: 'photo-1520981825232-ece5fae45120.jpeg',
          color: Colors.orange),
      new Phone(
          phoneName: 'Vivo', id: 3, image: 'Vivo.png', color: Colors.pink),
    ];
    return list;
  }
}
