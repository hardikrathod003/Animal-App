import 'dart:typed_data';
import 'package:flutter/services.dart';

class Plans {
  final String subName;
  final double prize;
  final String image;

  Plans({
    required this.subName,
    required this.prize,
    required this.image,
  });
}

List<Plans> plans = <Plans>[
  Plans(
      subName: 'Week Subscription',
      prize: 1.99,
      image:
          'https://images.unsplash.com/photo-1528359645462-5ff224bf906e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTMzfDIxNDIwNTh8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
  Plans(
      subName: '1 Month Subscription',
      prize: 4.39,
      image:
          'https://images.unsplash.com/photo-1472501814172-342d019bb470?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxjb2xsZWN0aW9uLXBhZ2V8MTE1fDIxNDIwNTh8fGVufDB8fHx8&auto=format&fit=crop&w=500&q=60'),
  Plans(
      subName: '3 Month Subscription',
      prize: 9.99,
      image:
          'https://images.unsplash.com/photo-1456926631375-92c8ce872def?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGFuaW1hbHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60'),
  Plans(
      subName: '6 Month Subscription',
      prize: 13,
      image:
          'https://images.unsplash.com/photo-1546182990-dffeafbe841d?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8YW5pbWFsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'),
];

class Animal {
  final String name;
  final String description;
  final String category;

  Animal({
    required this.name,
    required this.description,
    required this.category,
  });

  factory Animal.fromMap(Map<String, dynamic> data) {
    return Animal(
      name: data['name'],
      description: data['description'],
      category: data['category'],
      // image: data['image'],
    );
  }
}

loadImage({required String? image}) async {
  final ByteData bytes = await rootBundle.load('$image');
  final Uint8List myImg = bytes.buffer.asUint8List();
  return myImg;
}

String des =
    'Lorem Ipsum is simply dummy text of the printing and typesetting industry.';

List<Animal> animal = <Animal>[
  Animal(
    name: 'Tiger',
    description: des,
    category: 'animal',
  ),
  Animal(
    name: 'Lion',
    description: des,
    category: 'animal',
  ),
  Animal(
    name: 'Panda',
    description: des,
    category: 'animal',
  ),
  Animal(
    name: 'Elephant',
    description: des,
    category: 'animal',
  ),
  Animal(
    name: 'Horse',
    description: des,
    category: 'animal',
  ),
  Animal(
    name: 'Pigeon',
    description: des,
    category: 'bird',
  ),
  Animal(
    name: 'Peacock',
    description: des,
    category: 'bird',
  ),
  Animal(
    name: 'Parrot',
    description: des,
    category: 'bird',
  ),
  Animal(
    name: 'Swan',
    description: des,
    category: 'bird',
  ),
  Animal(
    name: 'Penguin',
    description: des,
    category: 'bird',
  ),
  Animal(
    name: 'String ray',
    description: des,
    category: 'fish',
  ),
  Animal(
    name: 'Gold fish',
    description: des,
    category: 'fish',
  ),
  Animal(
    name: 'Dolphin',
    description: des,
    category: 'fish',
  ),
  Animal(
    name: 'Star fish',
    description: des,
    category: 'fish',
  ),
  Animal(
    name: 'Sea horse',
    description: des,
    category: 'fish',
  ),
  Animal(
    name: 'Ant',
    description: des,
    category: 'insect',
  ),
  Animal(
    name: 'Butterfly',
    description: des,
    category: 'insect',
  ),
  Animal(
    name: 'Snail',
    description: des,
    category: 'insect',
  ),
  Animal(
    name: 'Warm',
    description: des,
    category: 'insect',
  ),
  Animal(
    name: 'Spider',
    description: des,
    category: 'insect',
  ),
];

String category = 'animal';

late Future<List<Animal>> fetchData;

List animalImages = [
  'https://images.unsplash.com/photo-1561731216-c3a4d99437d5?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8dGlnZXJ8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1614027164847-1b28cfe1df60?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8bGlvbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1525382455947-f319bc05fb35?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8cGFuZGF8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1575187105891-be9b5d30cecd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTF8fGVsZXBoYW50fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1599053581540-248ea75b59cb?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTd8fGhvcnNlfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
];

List birdImages = [
  'https://images.unsplash.com/photo-1549216580-cdaa97339899?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8cGlnZW9ufGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1587011158961-5f27e4578293?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8cGVhY29ja3xlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1552728089-57bdde30beb3?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Mnx8cGFycm90fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1588485256313-f021c74731f1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8c3dhbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1551986782-d0169b3f8fa7?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8cGVuZ3VpbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
];

List fishImages = [
  'https://images.unsplash.com/photo-1558586545-5634bea8ef84?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8c3RpbmclMjByYXl8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1544943910-4c1dc44aab44?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NXx8Z29sZCUyMGZpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1570481662006-a3a1374699e8?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8M3x8ZG9scGhpbnxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1523857159215-11e46223d00b?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c3RhciUyMGZpc2h8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1623408997115-7bbfcbb23c76?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8Nnx8c2VhaG9yc2V8ZW58MHx8MHx8&auto=format&fit=crop&w=500&q=60',
];

List insectImages = [
  'https://images.unsplash.com/photo-1581859779941-775b7a24a9fa?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTB8fGFudHxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1564514476902-542f8c30121e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8NHx8YnV0dGVyZmx5fGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1600432807454-92915c99c8a1?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8MTV8fHNuYWlsfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1587579738688-e08132f5b442?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OHx8d29ybXxlbnwwfHwwfHw%3D&auto=format&fit=crop&w=500&q=60',
  'https://images.unsplash.com/photo-1567939973912-f499537375bd?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxzZWFyY2h8OXx8c3BpZGVyfGVufDB8fDB8fA%3D%3D&auto=format&fit=crop&w=500&q=60'
];
