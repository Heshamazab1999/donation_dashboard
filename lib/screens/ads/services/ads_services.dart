import 'dart:async';
import 'dart:io';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donation_dashboard/screens/ads/model/ads_model.dart';
import 'package:firebase_storage/firebase_storage.dart';

class AdsServices {
  final store = FirebaseFirestore.instance;

  savePhoto(String imagePath, String name) async {
    final image = await uploadImage(imagePath, name);
    final data = await store.collection("ads").add({"image": image});
  }

  Future<String> uploadImage(String imagePath, String name) async {
    final ref =
        FirebaseStorage.instance.ref().child("AdsImages").child("photos/$name");
    final uploadTask = ref.putFile(File(imagePath));
    final imageUrl = (await (await uploadTask).ref.getDownloadURL()).toString();
    print(imageUrl);
    return imageUrl;
  }

  Future<List<AdsModel>> getAds() async {
    final data = await store.collection("ads").get();
    return data.docs.map((e) => AdsModel.fromJson(e)).toList();
  }

  Stream<List<AdsModel>> getAllAds() {
    return store
        .collection("ads")
        .snapshots()
        .transform(StreamTransformer.fromHandlers(handleData: (data, sink) {
      sink.add(data.docs.map((e) => AdsModel.fromJson(e)).toList());
    }));
  }
}
