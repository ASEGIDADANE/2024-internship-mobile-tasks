
import 'dart:io';

class Product {
  String name;
  String description;
  double price;

  Product(this.name, this.description, this.price);

  @override
  String toString() {
    return 'Name: $name\nDescription: $description\nPrice: \$${price.toStringAsFixed(2)}';
  }
}

class ProductManager {
  List<Product> products = [];

  void addProduct(Product product) {
    products.add(product);
    print('Product added successfully!');
  }

  void viewAllProducts() {
    if (products.isEmpty) {
      print('No products available.');
    } else {
      for (var i = 0; i < products.length; i++) {
        print('Product ${i + 1}:\n${products[i]}\n');
      }
    }
  }

  void viewProduct(int index) {
    if (index < 1 || index > products.length) {
      print('Invalid product index.');
    } else {
      print(products[index - 1]);
    }
  }

  void editProduct(int index, String name, String description, double price) {
    if (index < 1 || index > products.length) {
      print('Invalid product index.');
    } else {
      products[index - 1].name = name;
      products[index - 1].description = description;
      products[index - 1].price = price;
      print('Product updated successfully!');
    }
  }

  void deleteProduct(int index) {
    if (index < 1 || index > products.length) {
      print('Invalid product index.');
    } else {
      products.removeAt(index - 1);
      print('Product deleted successfully!');
    }
  }
}

void main() {
  var productManager = ProductManager();

  while (true) {
    print('Enter your choice:');
    print('1. Add a product');
    print('2. View all products');
    print('3. View a product');
    print('4. Edit a product');
    print('5. Delete a product');
    print('6. Exit');

    var choice = int.parse(stdin.readLineSync()!);

    switch (choice) {
      case 1:
        print('Enter product name:');
        var name = stdin.readLineSync()!;
        print('Enter product description:');
        var description = stdin.readLineSync()!;
        print('Enter product price:');
        var price = double.parse(stdin.readLineSync()!);
        var product = Product(name, description, price);
        productManager.addProduct(product);
        break;
      case 2:
        productManager.viewAllProducts();
        break;
      case 3:
        print('Enter the index of the product you want to view:');
        var index = int.parse(stdin.readLineSync()!);
        productManager.viewProduct(index);
        break;
      case 4:
        print('Enter the index of the product you want to edit:');
        var index = int.parse(stdin.readLineSync()!);
        print('Enter new product name:');
        var newName = stdin.readLineSync()!;
        print('Enter new product description:');
        var newDescription = stdin.readLineSync()!;
        print('Enter new product price:');
        var newPrice = double.parse(stdin.readLineSync()!);
        productManager.editProduct(index, newName, newDescription, newPrice);
        break;
      case 5:
        print('Enter the index of the product you want to delete:');
        var index = int.parse(stdin.readLineSync()!);
        productManager.deleteProduct(index);
        break;
      case 6:
        exit(0);
        break;
      default:
        print ('Invalid choice. Please try again.');
    }
  }
}