import 'dart:ffi';

import 'package:cloud_firestore/cloud_firestore.dart';

class DatabaseService {
  // Collection Reference
  final CollectionReference cravingsCollection =
      FirebaseFirestore.instance.collection('cravings');

  Future updateCustomerData(
      String userId, String name, String cravingsName, Float budget) async {
    return await cravingsCollection.doc(userId).set({
      'name': name,
      'cravingsName': cravingsName,
      'budget': budget,
    });
  }

  Future postCustomerCravings(
      String userId, String cravingName, String cravingDescription) async {
    return await cravingsCollection.doc(userId).collection('cravings').add({
      'cravingName': cravingName,
      'cravingDescription': cravingDescription,
    });
  }
}
