class Product {
  final double price;
  final String Name;
  final String image;
  final int num;

  Product(
      {required this.price,
        required this.image,
        required this.Name,
        required this.num});
}

var productList = [
  Product(price: 7.00, image:  "assets/images/sandwich.jpg", Name: "Sandwich", num: 3),
  Product(price: 5.22, image:  "assets/images/pizza.jpg", Name: "Pizza", num: 1),
  Product(price: 3.22, image:  "assets/images/frenkie.jpg", Name: "Frenkie", num: 2),
  Product(price: 2.58, image:  "assets/images/burger.jpg", Name: "Burger", num: 5),

];