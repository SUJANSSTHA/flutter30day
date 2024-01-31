class CatalogModel {
  static final items = [
    Item(
      id: 1,
      name: "iPhone 22 Pro",
      desc: "Apple iPhone 22nd generation",
      price: 200,
      color: "#33505a",
      image:
          "https://nayapurano.shop/cdn/shop/files/apple-iphone-12-pro-max-1.jpg?v=1701932754&width=1445",
    ),
  ];
}

class Item {
  final int id;
  final String name;
  final String desc;
  final num price;
  final String color;
  final String image;

  // Marking 'color' as required
  Item(
      {required this.id,
      required this.name,
      required this.desc,
      required this.price,
      required this.color,
      required this.image});
}
