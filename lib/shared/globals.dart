import 'package:lab03/types/item.dart';

// This is where variables that are used globally can be stored

const String appName = "Calvin Marketplace";

Item item = Item(
  id: 1,
  sellerId: 1,
  price: 25,
  isOBO: false,
  name: 'Computer Networking',
  description: 'This is a useful textbook that you absolutely need',
  imageURL: '',
  category: 'Textbooks',
  iSBN: '123412341234',
  author: 'John Doe',
  course: 'CS 342',
);

List<Item> testItems = [
    Item(
      id: 1,
      sellerId: 1,
      price: 25,
      isOBO: false,
      name: 'Computer Networking',
      description: 'This is a useful textbook that you absolutely need',
      imageURL: '',
      category: 'Textbook',
      iSBN: '123412341234',
      author: 'John Doe',
      course: 'CS 342',
    ),
    Item(
      id: 2,
      sellerId: 1,
      price: 25,
      isOBO: true,
      name: 'Computer Networking',
      description: 'This is a useful textbook that you absolutely need',
      imageURL: '',
      category: 'Textbook',
      iSBN: '123412341234',
      author: 'John Doe',
      course: 'CS 342',
    ),
    Item(
      id: 3,
      sellerId: 1,
      price: 25,
      isOBO: false,
      name: 'Software Engineering',
      description: '',
      imageURL: '',
      category: 'Textbook',
      iSBN: '123412341234',
      author: 'John Doe',
      course: 'CS 262',
    ),
    Item(
      id: 4,
      sellerId: 2,
      price: 10,
      isOBO: false,
      name: 'Software Engineering',
      description: '',
      imageURL: '',
      category: 'Textbook',
      iSBN: '123412341234',
      author: 'John Doe',
      course: 'CS 262',
    ),
    Item(
      id: 5,
      sellerId: 2,
      price: 0,
      isOBO: true,
      name: 'Software Engineering',
      description: 'This is an example of a longer textual piece for a description'
          'that is really interesting because I want to keep getting a lot bigger',
      imageURL: '',
      category: 'Textbook',
      iSBN: '123412342222',
      author: 'James Doe',
      course: 'CS 262',
    ),
    Item(
      id: 6,
      sellerId: 3,
      price: 25,
      isOBO: false,
      name: 'Computer Networking',
      description: 'This is a useful textbook that you absolutely need',
      imageURL: '',
      category: 'Textbook',
      iSBN: '123412341234',
      author: 'John Doe',
      course: 'CS 342',
    ),
    Item(
      id: 7,
      sellerId: 1,
      price: 5,
      isOBO: false,
      name: 'T Shirt',
      description: '',
      imageURL: '',
      category: 'Clothing',
      size: 'Medium',
      gender: 'Mens',
      brand: 'American Eagle'
    ),
    Item(
      id: 8,
      sellerId: 1,
      price: 5,
      isOBO: false,
      name: 'Black Adidas Shoes',
      description: '',
      imageURL: '',
      category: 'Clothing',
      size: '7',
      gender: 'Mens',
      brand: 'Adidas'
    ),
  ];