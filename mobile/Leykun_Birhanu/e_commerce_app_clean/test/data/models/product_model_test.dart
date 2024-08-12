import 'dart:convert';

import 'package:application1/features/product/data/models/product_model.dart';
import 'package:application1/features/product/domain/entities/product_entity.dart';
import 'package:flutter_test/flutter_test.dart';

import '../../helper/dummy_data/json_reader.dart';

void main() {
  const tProductModel = ProductModel(
    id: '3',
    name: 'airjordan',
    description: 'something you wear',
    price: 566,
    imageUrl: 'https://www.google.com',
    category: 'men\'s shoes',
    rating: 3,
  );

  test(
    'should extend from the product entity',
    () async {
      // Assert
      expect(tProductModel, isA<ProductEntity>());
    },
  );

  test(
    'should receive a fromjson function',
    () async {
      //arrange
      final Map<String, dynamic> jsonMap = json
          .decode(readJson('helper\\dummy_data\\dummy_product_response.json'));
      //act
      final result = ProductModel.fromJson(jsonMap);
      //assert
      expect(tProductModel, result);
    },
  );

  test('should convert to a json format', () async {
    //arrange
    final expectedJson = {
      'id': '3',
      'name': 'airjordan',
      'description': 'something you wear',
      'price': 566,
      'imageUrl': 'https://www.google.com',
      'category': 'men\'s shoes',
      'rating': 3,
    };
    //act
    final result = tProductModel.toJson();
    //assert
    expect(result, expectedJson);
  });
}
