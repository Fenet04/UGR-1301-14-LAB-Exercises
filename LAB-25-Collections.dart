import 'dart:io';

void main() {
 
  Map<String, int> shoppingCart = {};

  Map<String, double> productPrices = {
    'Apple': 0.5,
    'Banana': 0.3,
    'Orange': 0.4,
    'Mango': 1.0,
  };

  while (true) {

    print('\nMenu:');
    print('1. Add item to cart');
    print('2. Remove item from cart');
    print('3. View cart');
    print('4. Calculate total price');
    print('5. Exit');

    print('\nEnter your choice:');
    String choice = stdin.readLineSync()!;

    switch (choice) {
      case '1':
        print('\nEnter product name:');
        String productName = stdin.readLineSync()!;
        if (productPrices.containsKey(productName)) {
          print('Enter quantity:');
          int quantity = int.parse(stdin.readLineSync()!);
          shoppingCart[productName] = shoppingCart.containsKey(productName)
              ? shoppingCart[productName]! + quantity
              : quantity;
          print('$quantity $productName added to cart.');
        } else {
          print('Product not found.');
        }
        break;
      case '2':
        print('\nEnter product name to remove:');
        String productName = stdin.readLineSync()!;
        if (shoppingCart.containsKey(productName)) {
          print('Enter quantity to remove:');
          int quantity = int.parse(stdin.readLineSync()!);
          if (quantity >= shoppingCart[productName]!) {
            shoppingCart.remove(productName);
          } else {
            shoppingCart[productName] = shoppingCart[productName]! - quantity;
          }
          print('$quantity $productName removed from cart.');
        } else {
          print('Product not found in cart.');
        }
        break;
      case '3':
        print('\nShopping Cart:');
        if (shoppingCart.isEmpty) {
          print('Empty');
        } else {
          shoppingCart.forEach((product, quantity) {
            print('$product: $quantity');
          });
        }
        break;
      case '4':
        double totalPrice = 0;
        shoppingCart.forEach((product, quantity) {
          totalPrice += productPrices[product]! * quantity;
        });
        print('\nTotal price: \$${totalPrice.toStringAsFixed(2)}');
        break;
      case '5':
        print('Exiting...');
        return;
      default:
        print('Invalid choice. Please enter a number between 1 and 5.');
    }
  }
}
