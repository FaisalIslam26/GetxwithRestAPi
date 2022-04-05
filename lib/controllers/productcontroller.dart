import 'package:apiwithgetx/models/product.dart';
import 'package:apiwithgetx/services/remote_services.dart';
import 'package:get/get.dart';

class ProductController extends GetxController {
  var isLoading = true.obs;
  var productList = <ProductModel>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  void fetchProducts() async {
    isLoading(true);
    productList.value = await RemoteServices.fetchProduct();

    isLoading(false);
  }
}
