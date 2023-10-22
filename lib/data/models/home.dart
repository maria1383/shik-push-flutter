class HomeEntity {
  List<product>? news;
  List<Slides>? slides;
  List<product>? mostVisited;

  HomeEntity({this.news, this.slides, this.mostVisited});

  HomeEntity.fromJson(Map<String, dynamic> json) {
    if (json['news'] != null) {
      news = <product>[];
      json['news'].forEach((v) {
        news!.add(product.fromJson(v));
      });
    }
    if (json['slides'] != null) {
      slides = <Slides>[];
      json['slides'].forEach((v) {
        slides!.add(Slides.fromJson(v));
      });
    }
    if (json['mostVisited'] != null) {
      mostVisited = <product>[];
      json['mostVisited'].forEach((v) {
        mostVisited!.add(product.fromJson(v));
      });
    }
  }

}

class product {
  num? id;
  String? title;
  num? price;
  num? discountPrice;
  bool? hasDiscount;
  num? discountPercent;
  String? image;

 product(
      {this.id,
      this.title,
      this.price,
      this.discountPrice,
      this.hasDiscount,
      this.discountPercent,
      this.image});

  product.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    title = json['title'];
    price = json['price'];
    discountPrice = json['discountPrice'];
    hasDiscount = json['hasDiscount'];
    discountPercent = json['discountPercent'];
    image = json['image'];
  }

 
}

class Slides {
  String? title;
  String? image;
  String? url;

  Slides({this.title, this.image, this.url});

  Slides.fromJson(Map<String, dynamic> json) {
    title = json['title'];
    image = json['image'];
    url = json['url'];
  }

  
}
