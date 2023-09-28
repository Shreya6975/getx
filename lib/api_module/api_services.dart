import 'package:getx/product_module/models/product_model.dart';
import 'package:http/http.dart' as http;

class ApiService {
  static var client = http.Client();

  static Future<List<ProductModel>> fetchProducts() async {
    var uri = Uri.parse("https://makeup-api.herokuapp.com/api/v1/products.json?brand=colourpop");
    var response = await client.get(uri);

    if (response.statusCode == 200) {
      var jsonString = response.body;

      return productFromJson(jsonString);
    }
    return [];
  }
}
