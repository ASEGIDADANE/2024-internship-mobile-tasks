import 'package:flutter_test/flutter_test.dart';
import 'package:task6/features/product/data/models/product_model.dart';
import 'package:task6/features/product/domain/entities/product.dart';
// import 'package:task6/features/product/data/models/product_model.dart';

void main() {
  ProductModel template = ProductModel(
    description: "hello",
    id: 1,
    name: "asegid",
    price: 12,
    imageUrl: "dedye",
  );

  final json = {
    "description": 'hello',
    "id": 1,
    "name": 'asegid',
    "price": 12.00,
    "imageUrl": 'dedye',
  };

  group("model testing by asegid", () {
    test("the model extends the entity", () {
      expect(template, isA<Product>());
    });

    test("should convert to JSON", () {
      expect(template.toJson(), json);
    });

    test("should convert from JSON", () {
      final fromJson = ProductModel.fromJson(json);
      expect(fromJson.description, template.description);
      expect(fromJson.id, template.id);
      expect(fromJson.name, template.name);
      expect(fromJson.price, template.price);
      expect(fromJson.imageUrl, template.imageUrl);
    });
  });
}