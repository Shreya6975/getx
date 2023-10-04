import 'package:get/get.dart';
import 'package:getx/api_module/api_services.dart';
import 'package:getx/product_module/models/product_model.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    // TODO: implement onInit
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading(true);
      var products = await ApiService().fetchProducts();
      productList.assignAll(products);
    } finally {
      isLoading(false);
    }
  }
}
