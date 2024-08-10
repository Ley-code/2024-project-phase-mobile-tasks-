import 'package:application1/features/product/domain/usecases/delete_product_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helper/test_helper.mocks.dart';

void main(){

  late MockProductRepository mockProductRepository;
  late DeleteProductUsecase deleteProductUsecase;
  
  setUp((){
    mockProductRepository = MockProductRepository();
    deleteProductUsecase = DeleteProductUsecase(mockProductRepository);
  });

  test(
    'should delete Product from ProductRepository and return a bool',
    () async {
      // Arrange
      when(mockProductRepository.deleteProduct('3'))
          .thenAnswer((_) async => const Right(true));
      
      // Act
      final result = await deleteProductUsecase.execute('3');
      
      // Assert
      expect(result, const Right(true));
    },
  );
}