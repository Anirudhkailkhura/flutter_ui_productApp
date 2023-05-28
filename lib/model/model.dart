
class Model {
  final String name;
  final String price;
  final String description;
  final String category;
  final List image;

  // static var products;

  Model({
    required this.name,
    required this.price,
    required this.description,
    required this.category,
    required this.image,
  });

  @override
  String toString() {
    return "Name: $name, Price: $price, Desc: $description, Category: $category, Image: $image";
  }
}

class TabBarMenuButton {
  final int id;
  final String name;

  TabBarMenuButton({required this.id, required this.name});
}
