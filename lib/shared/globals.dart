/*
Globals - stores variables that then can be used throughout the app for consistency
 */

import 'package:lab03/types/item.dart';
import 'package:lab03/types/user.dart';

// This is where variables that are used globally can be stored

const String appName = "Calvin Marketplace";

bool isLoggedIn = false;

User testUser = User(
    id: 1,
    userName: 'testUser',
    email: 'test@test.com',
    favoritedItems: [1, 3, 6],
    postedItems: [1, 2, 7, 8, 9]
  );

List<Item> testItems = [
  Item(
      id: 1,
      sellerId: 1,
      price: 30,
      isOBO: true,
      name: 'Computer Science 262',
      condition: 'New',
      category: 'Textbook'
  ),
  Item(
      id: 2,
      sellerId: 1,
      price: 20,
      isOBO: false,
      name: 'Adidas Tennis Shoes',
      condition: 'Pretty Good',
      category: 'Clothing',
      size: 'Medium',
      gender: 'Womens',
      brand: 'Adidas',
  ),
  Item(
    id: 3,
    sellerId: 2,
    price: 30,
    isOBO: true,
    name: 'Tweed Jacket',
    condition: 'Pretty Good',
    category: 'Clothing',
    size: 'Large',
    gender: 'Mens',
    brand: 'Store Co.',
  ),
];
