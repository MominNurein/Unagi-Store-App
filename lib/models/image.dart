class Image {
  int? id;
  String? image;
  int? productId;

  Image({this.id, this.image, this.productId});

  Image.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    image = json['image'];
    productId = json['productId'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['image'] = image;
    data['productId'] = productId;
    return data;
  }
}
