void main() {
  List<Map<String, dynamic>> fruit = [
    {"name": "Apple", "color": "Red", "price": 2.5},
    {"name": "Banana", "color": "Yellow", "price": 1.0},
    {"name": "Grapes", "color": "Purple", "price": 3.0},
  ];

  print("Fruit before Discount:");
  displayFruit(fruit);

  priceDiscount(fruit, 10);

  print("\nFruit Details After Applying 10% Discount:");
  displayFruit(fruit);
}

void displayFruit(List<Map<String, dynamic>> fruit) {
  for (var fruits in fruit) {
    print(
        "Name: ${fruits["name"]}, Color: ${fruits["color"]}, Price: \$${(fruits["price"] as double).toStringAsFixed(2)}");
  }
}

void priceDiscount(List<Map<String, dynamic>> fruit, double discountPer) {
  for (var fruits in fruit) {
    double mainPrice = fruits["price"];
    double discountAmount = (mainPrice * discountPer) / 100;
    fruits["price"] = mainPrice - discountAmount;
  }
}
