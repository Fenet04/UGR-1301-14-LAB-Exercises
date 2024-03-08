class Product {
  String name;
  double price;
  int quantity;

  Product({required this.name, required this.price, required this.quantity});

  double calculateTotalCost() {
    return price * quantity;
  }
}

void main() {

  Product product = Product(name: "Laptop", price: 999.99, quantity: 2);

  print("Product: ${product.name}");
  print("Price per unit: \$${product.price}");
  print("Quantity: ${product.quantity}");
  print("Total cost: \$${product.calculateTotalCost()}");
}
