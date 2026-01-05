import 'dart:convert';

import 'package:party_decoration/core/errors/exceptions.dart';
import 'package:party_decoration/features/product/data/datasources/product_datasource.dart';
import 'package:party_decoration/features/product/data/models/product_model.dart';

class ProductApiDatasource implements ProductDatasource {
  // TODO: it must have a client for fetch data from server
  const ProductApiDatasource();

  final String _sampleJson = '''{
  "id" : "Kids Birthday",
  "name": "Kids Birthday Party Decoration Set",
  "description": "A colorful birthday party decoration set perfect for kids parties. Includes balloons, banners, and table decor to create a joyful celebration atmosphere.",
  "images": [
  "https://example.com/images/birthday_set_1.jpg",
  "https://example.com/images/birthday_set_2.jpg",
  "https://example.com/images/birthday_set_3.jpg"
  ],
  "price": 49.99,
  "discount": 10.0,
  "rate": 4.7,
  "review": {
  "writer": "Emily Johnson",
  "reviewText": "Amazing quality decorations! My son loved the setup and it made the party look fantastic.",
  "location": "Austin, TX"
  },
  "packageInclutionList": [
  "Happy Birthday banner",
  "30 colorful balloons",
  "Table cover",
  "Cake topper",
  "Party hats (10 pcs)"
  ],
  "faqList": [
  {
  "id": "faq_1",
  "question": "Is this decoration set reusable?",
  "answer": "Yes, most items like the banner and table cover can be reused if handled carefully."
  },
  {
  "id": "faq_2",
  "question": "Is this suitable for outdoor parties?",
  "answer": "Yes, but we recommend securing lightweight items to prevent them from blowing away."
  },
  {
  "id": "faq_3",
  "question": "Does it include helium balloons?",
  "answer": "No, the balloons are air-filled. Helium is not included."
  }
  ],
  "deliveryDetails": [
  "Free standard delivery within 3–5 business days",
  "Express delivery available at extra cost",
  "Same-day delivery available in select cities"
  ],
  "careInfoList": [
  "Keep away from sharp objects",
  "Store in a dry place after use",
  "Do not expose balloons to direct sunlight for long periods"
  ],
  "productTag": "trending"
}
''';

  @override
  Future<ProductModel> getProduct(String productId) async {
    try {
      await Future.delayed(Duration(seconds: 1));
      final ProductModel productModel = ProductModel.fromJson(
        jsonDecode(_sampleJson),
      );
      return productModel;
    } catch (e) {
      throw ServerException(
        message: "Server Error occurred : ${e.toString()}",
        statusCode: 500,
      );
    }
  }
}
