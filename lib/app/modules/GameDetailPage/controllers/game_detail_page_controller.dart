import 'package:app_decby/app/other/api_service.dart';
import 'package:get/get.dart';

class GameDetailPageController extends GetxController
{

    var productId="0".obs;
    var isLoading=false.obs;
    var productName="".obs;
    var description="".obs;
    var image="".obs;
    var price=0.obs;
    var quant=0.obs;
  @override
  void onInit()
  {
    super.onInit();
    var args=Get.arguments;
    print(args);
    productId.value=args[0];
    print(productId);
    getProductDetail();
  }

    void getProductDetail()async
    {
      print("valide");
      isLoading.value = true;
      var response = await ApiService().getPproductDetails(productId.value);
      isLoading.value = false;
      productName.value=response['name'];
      description.value=response['description'];
      image.value=response['image'];
      price.value=response['price'];
    }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
