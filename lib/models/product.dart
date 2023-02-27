import './image.dart';
import './brand.dart';

class Product {
  int? id;
  String? name;
  String? description;
  double? price;
  int? stock;
  double? discountPercentage;
  String? thumbnail;
  String? condition;
  int? rating;
  String? category;
  Brand? brand;
  List<Image>? images;

  Product(
      {this.id,
      this.name,
      this.description,
      this.price,
      this.stock,
      this.discountPercentage,
      this.thumbnail,
      this.condition,
      this.rating,
      this.category,
      this.brand,
      this.images});

  Product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    description = json['description'];
    price = json['price'].toDouble();
    stock = json['stock'];
    discountPercentage = json['discount_percentage'].toDouble();
    thumbnail = json['thumbnail'];
    condition = json['condition'];
    rating = json['rating'];
    category = json['category'];
    brand = json['brand'] != null ? Brand.fromJson(json['brand']) : null;
    if (json['images'] != null) {
      images = <Image>[];
      json['images'].forEach((v) {
        images!.add(Image.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['description'] = description;
    data['price'] = price;
    data['stock'] = stock;
    data['discount_percentage'] = discountPercentage;
    data['thumbnail'] = thumbnail;
    data['condition'] = condition;
    data['rating'] = rating;
    data['category'] = category;
    if (brand != null) {
      data['brand'] = brand!.toJson();
    }
    if (images != null) {
      data['images'] = images!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}
