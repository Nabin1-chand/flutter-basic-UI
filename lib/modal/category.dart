class CatalogModal {
  static List<Item>? items;
  // Item(
  //   id: 1,
  //   name: "Iphone",
  //   color: "#33505a",
  //   price: 999,
  //   desc: "what a product is and why it's worth purchasing.",
  //   image:
  //       "https://www.91-img.com/gallery_images_uploads/3/d/3df5ca6a9b470f715b085991144a5b76e70da975.JPG?tr=h-550,w-0,c-at_max",
  // ),
  // ];
}

class Item {
  final int id;
  final String name;
  final String color;
  final num price;
  final String image;
  final String desc;

  Item(
      {required this.id,
      required this.name,
      required this.color,
      required this.price,
      required this.image,
      required this.desc});

  factory Item.fromMap(Map<String, dynamic> json) {
    return Item(
        id: json["id"],
        name: json["name"],
        color: json["color"],
        price: json["price"],
        image: json["image"],
        desc: json["desc"]);
  }
}
