
import 'package:application1/core/network/network_info.dart';
import 'package:application1/features/product/data/data_sources/local/local_data_source.dart';
import 'package:application1/features/product/data/data_sources/remote/remote_data_source.dart';
import 'package:application1/features/product/domain/repository/product_repository.dart';
import 'package:http/http.dart' as http;
import 'package:mockito/annotations.dart';
import 'package:shared_preferences/shared_preferences.dart';

@GenerateMocks(
  [
    ProductRepository,
    ProductRemoteDataSource,
    ProductLocalDataSource,
    NetworkInfo,
    SharedPreferences,
  ],
  
  
  customMocks: [MockSpec<http.Client>(as: #MockHttpClinet)]
)
void main() {}
