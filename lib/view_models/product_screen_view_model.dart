

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:stacked/stacked.dart';

import '../models/item.dart';
import '../services/firebase_services.dart';

class ProductsScreenViewModel extends BaseViewModel{


  List<Item> items =[];


  void init(){

    FirebaseServices().firestore.collection('items').get().then((value){
      QuerySnapshot<Map<String,dynamic>> snapshot = value;

      snapshot.docs.forEach((element) {
          Item item = Item.fromJson(Map<String,dynamic>.from(element.data() as Map))

      });

    });

  }




}