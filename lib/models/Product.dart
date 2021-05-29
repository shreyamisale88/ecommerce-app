import 'package:flutter/material.dart';
class Product {
  final int id;
  final String title, description;
  final List<String> images;
  final double rating, price;
  final bool isFavourite, isPopular;

  Product({
    @required this.id,
    @required this.images,
    this.rating = 0.0,
    this.isFavourite = false,
    this.isPopular = false,
    @required this.title,
    @required this.price,
    @required this.description,
  });
}

List<Product> demoProducts = [
  Product(
    id: 1,
    images: [
      "assets/images/warna.jpg",
    ],

    title: "Warna Cow Milk",
    price: 18.00,
    description: "Cow Milk of Warna Company",
    rating: 4.8,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 2,
    images: [
      "assets/images/nandini.jpeg",
    ],

    title: "Nandini Cow Milk",
    price: 20.00,
    description: "Cow Milk of Nandini Company",
    rating: 4.1,
    isPopular: true,

  ),
  Product(
    id: 3,
    images: [
      "assets/images/motherdairy.jpeg",
    ],

    title: "MotherDairy Cow Milk",
    price: 24.00,
    description: "Cow Milk of Motherdairy Company",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
  Product(
    id: 4,
    images: [
      "assets/images/amul.jpg",
    ],

    title: "Amul Cow Milk",
    price: 61.00,
    description: "Cow Milk of Amul Company",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),

  Product(
    id: 5,
    images: [
      "assets/images/chitale.jpg",
    ],

    title: "Chitale Cow Milk",
    price: 19.00,
    description: "Cow Milk of Chitale Company",
    rating: 4.1,
    isFavourite: true,
    isPopular: true,
  ),
];

