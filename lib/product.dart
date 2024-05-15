import 'package:flutter/material.dart';

class Product {
  final String image, title, description;
  final int price, size, id;
  final Color color;

  Product({
    required this.id,
    required this.image,
    required this.title,
    required this.price,
    required this.description,
    required this.size,
    required this.color,
  });
}

List<Product> Products = [
  Product(
      id: 2,
      image: "assets/images/bag_2.png",
      title: "Office Bags",
      price: 49,
      description: 'Brown Office Bag',
      size: 24,
      color: Color(0xffCC8655)),
  Product(
      id: 3,
      image: "assets/images/bag_3.png",
      title: "Title 3",
      price: 34,
      description: 'Black Handbag',
      size: 24,
      color: Color(0xff464344)),
  Product(
      id: 4,
      image: "assets/images/bag_4.png",
      title: "Women's Purse",
      price: 23,
      description: 'Brown Handcarry',
      size: 48,
      color: Color(0xffD77942)),
  Product(
      id: 5,
      image: "assets/images/bag_5.png",
      title: "Title 5",
      price: 34,
      description: 'Pink Purse',
      size: 38,
      color: Color(0xffDF5057)),
  Product(
      id: 6,
      image: "assets/images/bag_6.png",
      title: "Title 6",
      price: 234,
      description: 'Black Office Bag',
      size: 12,
      color: Color(0xff424545)),
];
