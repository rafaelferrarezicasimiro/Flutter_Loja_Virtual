import 'package:cloud_firestore/cloud_firestore.dart';

class ProductData {
  late String category;
  late String id;
  late String title;
  late String description;
  late double price;
  late List images;
  late List sizes;

  ProductData.fromDocument(DocumentSnapshot snapshot) {
    id = snapshot.id;
    title = snapshot["title"];
    description = snapshot["description"];
    price = snapshot["price"].toDouble();
    images = snapshot["images"];
    sizes = snapshot["sizes"];
  }

  Map<String, dynamic> toResumeMap() {
    return {"title": title, "price": price};
  }
}
