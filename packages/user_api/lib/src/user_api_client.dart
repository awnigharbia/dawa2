import 'dart:io';
import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart' as firebase_auth;
import 'package:firebase_storage/firebase_storage.dart';

import '../user_api.dart';

class UserApiClient {
  firebase_auth.FirebaseAuth? _auth;
  FirebaseStorage? _firebaseStorage;
  CollectionReference _userCollection =
      FirebaseFirestore.instance.collection("users");

  UserApiClient() {
    _auth = firebase_auth.FirebaseAuth.instance;
    _firebaseStorage = FirebaseStorage.instance;
  }

  Future<String> _uploadPhoto(File photo) async {
    int randomNumber = Random().nextInt(100000);
    String uid = _auth!.currentUser!.uid;
    String uploadPath = "users/$uid/profile-pics/$randomNumber.jpg";
    SettableMetadata metaData =
        SettableMetadata(customMetadata: <String, String>{
      'userId': uid,
    });

    try {
      Reference photoRef = _firebaseStorage!.ref().child(uploadPath);

      TaskSnapshot uploadTask = await photoRef.putFile(photo, metaData);

      String photoUrl = await uploadTask.ref.getDownloadURL();

      return photoUrl;
    } on FirebaseException catch (e) {
      return e.message!;
    }
  }

  Future<void> updateUserPhoto(File photo) async {
    String imgUrl = await _uploadPhoto(photo);
    await _auth!.currentUser!.updateProfile(photoURL: imgUrl);

    await updateUserFirestoreProfileImage(_auth!.currentUser!.uid, imgUrl);
  }

  Future<void> updateDisplayName(String name) async {
    await _auth!.currentUser!.updateProfile(displayName: name);
    await updateUserFirestoreDisplayName(_auth!.currentUser!.uid, name);
  }

  Future saveUserToFirestore(User newUser) async {
    await _userCollection.doc(newUser.id).set(newUser.toJson());
  }

  Future updateUserFirestoreProfileImage(String docId, String imgUrl) async {
    await _userCollection.doc(docId).update({"photo": imgUrl});
  }

  Future updateUserFirestoreDisplayName(
      String docId, String displayName) async {
    await _userCollection.doc(docId).update({"name": displayName});
  }

  Future<User> getUserById(String id) async {
    final snapshot = await _userCollection.doc(id).get();
    final userData = snapshot.data();

    return User.fromJson(snapshot.id, userData!);
  }
}
