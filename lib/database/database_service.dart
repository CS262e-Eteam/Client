import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_auth/firebase_auth.dart';
import 'dart:async';
import 'package:lab03/types/item.dart';
// import 'package:lab03/types/user.dart';

class DatabaseService{
  final Firestore _db = Firestore.instance;

  //return a future
  Future<Item> getItem(String id) async{
    var snap = await _db.collection('items').document(id).get();
    return Item.fromMap(snap.data);
  }
  //dynamic stream return of Item
  Stream<Item> streamItem(String id){
    return _db.collection('items').document(id).snapshots().map((snap) => Item.fromMap(snap.data));
  }
  //query a subcollection
  Stream<List<Item>> streamAllItems(){
    var ref = _db.collection('items');
    return ref.snapshots().map((list) =>
      list.documents.map((doc) => Item.fromFirestore(doc)).toList());
  }

}