import 'dart:convert';
import 'dart:io';
import 'package:get/get.dart';
import 'package:http/http.dart' as http;
import 'package:intl/intl.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ApiService {
  static final String BASE_URL = "https://gulmargccos.com/";
  static final String signup = BASE_URL + "signup";
  static final String verifyOtpu = BASE_URL + "verifyOtp";
  // static final String allProducts=BASE_URL+"products";
  // static final String productDetails="BASE_URL+productById";
  // static final String homeStore=BASE_URL+"homestore";
  static final String reSendOtpu = BASE_URL + "resendOtp";
  static final String getProfileu = BASE_URL + "displayProfile";
  static final String getHome = BASE_URL + "homeApi";
  static final String UPLOAD_IMAGE = BASE_URL + "updateCustomerImageApi";
  static final String DEPOSITE_AMOUNT = BASE_URL + "depositeApiNew";
  static final String WITHDRAWL_AMOUNT = BASE_URL + "withdrawalApiNew";
  static final String CUSTOMER_DETAIL = BASE_URL + "accountDetailsApi";
  static final String Agent_transaction_report =
      BASE_URL + "agentTransactionApi";
  static final String ADD_CUSTOMER = BASE_URL + "addCustomerApi";
  static final String ADD_FDs = BASE_URL + "createFdApi";
  static final String CHECK_VERSION = BASE_URL + "checkVersion";

  Future getGameList() async
  {
    // final prefs = await SharedPreferences.getInstance();
    // var userId=prefs.getInt("userid");
    // final response = await http.post(Uri.parse(GET_HOME_OFFER_LIST),
    //     headers: {HttpHeaders.acceptHeader: "application/json"},
    //     body: json.encode({"userId": '$userId'}));
    // print(response.body);
    var convertDataToJson = '{"status":true,"game_list":[{"id":1,"name":"Age of emp","console":"PS4","image":"aaa.jpg","rating":"4.5","price":1520},{"id":2,"name":"AAA","console":"PS3","image":"aaa.jpg","rating":"3.5","price":1520},{"id":3,"name":"SSS","console":"PS4","image":"aaa.jpg","rating":"4.5","price":1580},{"id":4,"name":"RRR","console":"PS1","image":"aaa.jpg","rating":"2.0","price":19999},{"id":5,"name":"Workfine","console":"PS3","image":"aaa.jpg","rating":"1","price":17321}]}';//response.body;
    var status = json.decode(convertDataToJson)['status'];
    if (status)
    {
      var tag = json.decode(convertDataToJson); //['data'];
      print(tag);
      return tag;
    }
  }

  Future getPproductDetails(String productid) async
  {
    // final response = await http.post(Uri.parse(BASE_URL + productDetail),
    //     headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8',},
    //     body: json.encode({"Id": '$productid'}));
    // var ConvertDataToJson = jsonDecode(response.body);
    // return ConvertDataToJson;
    var convertDataToJson = '{"id":1,"categoryId":1,"name":"Glue Gun","price":205,"description":"it is demo description is there and this will be dynamic with the help of the your server data when live api will running.","image":"https://popuplearning.pk/wp-content/uploads/2020/02/1-141-dc-gear-motor-for-robot-2-motors-with-wheels.jpg","status":true}';//response.body;
    var status = json.decode(convertDataToJson)['status'];
    if (status)
    {
      var tag = json.decode(convertDataToJson); //['data'];
      print(tag);
      return tag;
    }
  }
  //--------------------------------------------------------------------------------------------------------------------------------------------

  Future sendOtp(String mobile) async {
    print(signup);
    print(json.encode({"mobile": '$mobile'}));
    final response = await http.post(Uri.parse(signup),
        // headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({"mobile": '$mobile'}));
    print("Body is here" + response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  } // SendOtp

  Future verifyOtp(String mobile, String otp, String userId) async {
    print(verifyOtpu);
    print(json.encode({
      "mobile": '$mobile',
      "userId": '$userId',
      "otp": '$otp',
    }));
    final response = await http.post(Uri.parse(verifyOtpu),
        // headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "mobile": '$mobile',
          "userId": '$userId',
          "otp": '$otp',
        }));
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future getHomeDetail() async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    print(json.encode({
      "userId": '$userId',
    }));
    print(getHome);
    final response = await http.post(Uri.parse(getHome),
        // headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "userId": '$userId',
        }));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future depositAmount(String customerId, String account_number,
      String account_type, String amount) async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    final response = await http.post(Uri.parse(DEPOSITE_AMOUNT),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        //headers: <String, String>{'Content-Type': 'application/json; charset=UTF-8',
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: json.encode({
          "agentId": '$userId',
          "user_id": '$customerId',
          "account_number": '$account_number',
          "account_type": '$account_type',
          "amount": '$amount',
          "transaction_type": "cr"
        }));
    print(DEPOSITE_AMOUNT);
    print(json.encode({
      "agentId": '$userId',
      "user_id": '$customerId',
      "account_number": '$account_number',
      "account_type": '$account_type',
      "amount": '$amount',
      "transaction_type": "cr"
    }));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future withdrawlAmount(String customerId, String account_number,
      String account_type, String amount) async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    final response = await http.post(Uri.parse(WITHDRAWL_AMOUNT),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "agentId": '$userId',
          "user_id": '$customerId',
          "account_number": '$account_number',
          "account_type": '$account_type',
          "amount": '$amount',
          "transaction_type": "dr"
        }));
    print(WITHDRAWL_AMOUNT);
    print(json.encode({
      "agentId": '$userId',
      "user_id": '$customerId',
      "account_number": '$account_number',
      "account_type": '$account_type',
      "amount": '$amount',
      "transaction_type": "dr"
    }));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future addCustomer(String name, String father_name, String email,
      String mobile, String address) async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    final response = await http.post(Uri.parse(ADD_CUSTOMER),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "agentId": '$userId',
          "name": '$name',
          "fathername": '$father_name',
          "email": '$email',
          "phone": '$mobile',
          "address": '$address'
        }));
    print(ADD_CUSTOMER);
    print(json.encode({
      "agentId": '$userId',
      "name": '$name',
      "fathername": '$father_name',
      "email": '$email',
      "phone": '$mobile',
      "address": '$address'
    }));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future addFdr(
      String planId, String amount, String duration, String customerId) async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    final response = await http.post(Uri.parse(ADD_FDs),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "agentId": '$userId',
          "planId": '$planId',
          "userId": '$customerId',
          "amount": '$amount',
          "duration": '$duration',
        }));
    print(ADD_FDs);
    print(json.encode({
      "agentId": '$userId',
      "planId": '$planId',
      "userId": '$customerId',
      "amount": '$amount',
      "duration": '$duration',
    }));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future getCustomerDetail(String account_number) async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    final response = await http.post(Uri.parse(CUSTOMER_DETAIL),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "account_number": '$account_number',
        }));
    print(CUSTOMER_DETAIL);
    print(json.encode({
      "account_number": '$account_number',
    }));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future getAgetnTransactionReport() async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    print(Agent_transaction_report);
    final response = await http.post(Uri.parse(Agent_transaction_report),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "agentId": '$userId',
        }));
    print(CUSTOMER_DETAIL);
    print(json.encode({
      "agentId": '$userId',
    }));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future getVersionUpdate(String versionCode, String versionName) async {
    print(CHECK_VERSION);
    print(json.encode({
      "versionCode": versionCode,
      "versionName": versionName,
    }));
    final response = await http.post(Uri.parse(CHECK_VERSION),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "versionCode": versionCode,
          "versionName": versionName,
        }));
    print("Response From Version Server:${response.body}");
    var status = json.decode(response.body)['status'];
    print("Response From Version After Proc:${status}");
    return status;
    // var ConvertDataToJson = jsonDecode(response.body);
    // return ConvertDataToJson;
  }

  // Future placeOrder(String items,String addressId,String date,String time) async
  // {
  //   String jsonItems = jsonEncode(cartController.FinalcartList);
  //   print(jsonItems);
  //
  //   final prefs = await SharedPreferences.getInstance();
  //   var userId=prefs.getString("userId");
  //   final response = await http.post(Uri.parse(CART),
  //       //headers: {HttpHeaders.acceptHeader: "application/json"},
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: json.encode({
  //         "userId":'$userId',
  //         "items":cartController.FinalcartList,
  //         "addressId":'$addressId',
  //         "date":'$date',
  //         "time":'$time',
  //       }));
  //   print(json.encode({
  //     "userId":'$userId',
  //     "items":cartController.FinalcartList,
  //     "addressId":'$addressId',
  //     "date":'$date',
  //     "time":'$time',
  //   })
  //   );
  //
  //   var ConvertDataToJson = jsonDecode(response.body);
  //   return ConvertDataToJson;
  // }

//   Future uploadImage(String image) async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     final response = await http.post(Uri.parse(UPLOAD_IMAGE),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token":'4****',
//           "image":'$image',
//           "userId":'$userId'
//         }));
//     print(json.encode({
//       "token":'4****',
//       "userId":'$userId',
//       "image":'$image'
//     }));
//
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
  Future resendOtp(String userId) async {
    final response = await http.post(Uri.parse(reSendOtpu),
        // headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({
          "userId": '$userId',
        }));
    print(reSendOtpu);
    print(json.encode({
      "userId": '$userId',
    }));
    print(response);
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  } // reSendOtp

  static final String FD_LIST = BASE_URL + "fdrList";
  Future getFDrList(String accountNumber) async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId").toString();
    final response = await http.post(Uri.parse(FD_LIST),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        //headers: {"Accept": "application/json","Content-type": "multipart/form-data"},
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: json
            .encode({"agentId": userId, "account_number": '$accountNumber'}));
    print(FD_LIST);
    print(json.encode({"agentId": userId, "account_number": '$accountNumber'}));
    print(response.body);
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
    // var status = json.decode(convertDataToJson)['status'];
    // if (status) {
    //   var tag = json.decode(convertDataToJson)['data']; //['data'];
    //   print(tag);
    //   // Map<String, dynamic> map = json.decode(convertDataToJson);
    //   // List<dynamic> dta = [];
    //   // dta = map["details"];
    //   return addressFromJson(json.encode(tag));
    // }
  }

  static final String FD_PLAN_LIST = BASE_URL + "fdPlanApi";
  Future getFDrPlanList() async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId").toString();
    print(FD_PLAN_LIST);
    //final response=await http.get(Uri.parse(FD_PLAN_LIST),headers: {HttpHeaders.acceptHeader: "application/json"},);

    final response = await http.post(Uri.parse(FD_PLAN_LIST),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: json.encode({"agentId": userId, "account_number": '$userId'}));
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  static final String GENERATE_REPORT =
      BASE_URL + "transactionReportByDateByAccount";
  Future getGenrateReport(String userId, String acNumber, String fromDate,
      String toDate, String acType) async {
    print("${acType}");
    fromDate = changeDF(fromDate);
    toDate = changeDF(toDate);

    final prefs = await SharedPreferences.getInstance();
    var agentId = prefs.getString("userId").toString();
    print(GENERATE_REPORT);
    //final response=await http.get(Uri.parse(FD_PLAN_LIST),headers: {HttpHeaders.acceptHeader: "application/json"},);

    final response = await http.post(Uri.parse(GENERATE_REPORT),
        headers: {'Content-Type': 'application/json; charset=UTF-8'},
        body: json.encode({
          "agentId": agentId,
          "userId": '$userId',
          "acNumber": '$acNumber',
          "fromDate": '$fromDate',
          "toDate": '$toDate',
          "acType": '$acType',
        }));
    print(json.encode({
      "agentId": agentId,
      "userId": '$userId',
      "acNumber": '$acNumber',
      "fromDate": '$fromDate',
      "toDate": '$toDate',
      "acType": '$acType',
    }));
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

//
//   //showBanners
//   Future showBanners() async {
//     final response = await http.post(Uri.parse(BASE_URL + Banners),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '4****',
//           "banner_type": 'main_banner',
//
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   //Women Omark
//   Future allProducts(String token) async {
//     final response = await http.post(Uri.parse(BASE_URL + AllProducts),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   //Product
//   Future productDetails(String token,int productid) async {
//     final response = await http.post(Uri.parse(BASE_URL + ProductDetails),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "Id": '$productid',
//
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   static Future singleProductDetails(String productid) async
//   {
//     String token="4****";
//     final response = await http.post(Uri.parse(BASE_URL + ProductDetails),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "Id": '$productid',
//
//         }));
//     print(response.body);
//     // var ConvertDataToJson = jsonDecode(response.body);
//     // var tag = json.decode(ConvertDataToJson)['product']; //['data'];
//     // print(tag);
//     Map<String, dynamic> map = json.decode(response.body);
//     List<dynamic> dta = [];
//     dta = map["product"];
//     return productDetailFromJson(json.encode(dta));
//   }
//   // Cart Count
//   Future cartcount(String token, int userId) async {
//     print(
//         json.encode({
//           "token": '$token',
//           "userId": '$userId',
//           "type":"cart",
//         })
//     );
//     final response = await http.post(Uri.parse(BASE_URL +CartCount),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//
//           "userId": '$userId',
//           "type":'cart',
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   //Cart Count
//   Future cartSummary(String token, int userId) async {
//     print(json.encode({
//       "token": '$token',
//       "userId": '$userId',
//       "type":"cartsum",
//     }));
//     final response = await http.post(Uri.parse(BASE_URL +CartSummary),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "userId": '$userId',
//           "type":"cartsum",
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   //end of Product Details
//   Future homeStore(String token,String type) async {
//     final response = await http.post(Uri.parse(BASE_URL + HomeStore),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "type": '$type',
//
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   //Add To Cart
//   Future addToBagApi(String token, int userId, int productId,int colorId,int sizeId) async {
//     final response = await http.post(Uri.parse(BASE_URL + Cart),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "quantity":1,
//           "userId": '$userId',
//           "productId": '$productId',
//           "colorId": '$colorId',
//           "sizeId": '$sizeId',
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//
//   //DISPLAY BAG API
//   Future displayBag(String token, int userId, String type) async {
//     final response = await http.post(Uri.parse(BASE_URL + DisplayCart),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//
//           "userId": '$userId',
//           "type":"$type",
//         }));
//
//     print(response.body);
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   Future removeCartItem(String token, int userId,int cartkey) async {
//     final response = await http.post(Uri.parse(BASE_URL + RemoveItem),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//
//           "userId": '$userId',
//           "key":"$cartkey",
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//
//   static Future getGymList() async {
//     // final response = await http.post(Uri.parse(BASE_URL + GET_STUDENT_LIST),
//     //     headers: {HttpHeaders.acceptHeader: "application/json"},
//     //     body: json.encode({"userid": '$userid'}));
//     print(GET_GYM_LIST);
//     final response=await http.get(Uri.parse(GET_GYM_LIST),headers: {HttpHeaders.acceptHeader: "application/json"},);
//     if(response.statusCode==200)
//     {
//       print(response.body);
//       //var convertDataToJson = response.body;
//       var status=json.decode(response.body)['status'];
//       if(status)
//       {
//         var tag = json.decode(response.body)['data'];//['data'];
//         print(tag);
//         Map<String, dynamic> map = json.decode(response.body);
//         List<dynamic> dta=[];
//         dta = map["data"];
//         return gymFromJson(json.encode(tag));
//       }
//     }else
//     {
//       return gymFromJson(json.encode([]));
//     }
//   }
//
//   static Future getPlanList(String gymId,String planTypeId) async
//   {
//     final response = await http.post(Uri.parse(GET_PLAN_LIST),
//         headers: {HttpHeaders.acceptHeader: "application/json"},
//         body: json.encode({"gymId": '$gymId',"planTypeId": '$planTypeId'}));
//     // print(GET_GYM_LIST);
//     //var response = '{"status":true,"msg":"Gym list available","data":[{"id":1,"name":"Omark Fit Hit","duration":"12 months","amount":"5000","details":"Get Benifit up to 5000| 15% Off on Upi Payment| 1+1 Scheme for 1 months|1 Month advantage at 1 year subscription"},{"id":2,"name":"Go Fit Now","duration":"6 months","amount":"4000","details":"Get Benifit up to 4000|10% Off on Upi Payment|1+1 Scheme for 1 months|1 Month advantage at 1 year subscription"},{"id":3,"name":"Drewam Slim","duration":"4 months","amount":"3000","details":"Get Benifit up to 3000|15% Off on Upi Payment|1+1 Scheme for 1 months|1 Month advantage at 1 year subscription"}]}';
//     print('response.body');
//     var convertDataToJson = response.body;
//     var status = json.decode(convertDataToJson)['status'];
//     if (status) {
//       var tag = json.decode(convertDataToJson)['data']; //['data'];
//       print(tag);
//       Map<String, dynamic> map = json.decode(convertDataToJson);
//       List<dynamic> dta = [];
//       dta = map["data"];
//       return gymPlanFromJson(json.encode(tag));
//       //final response=await http.get(Uri.parse(GET_GYM_LIST),headers: {HttpHeaders.acceptHeader: "application/json"},);
//       // if(response.statusCode==200)
//       // {
//       //   print(response.body);
//       //   //var convertDataToJson = response.body;
//       //   var status=json.decode(response.body)['status'];
//       //   if(status)
//       //   {
//       //     var tag = json.decode(response.body)['data'];//['data'];
//       //     print(tag);
//       //     Map<String, dynamic> map = json.decode(response.body);
//       //     List<dynamic> dta=[];
//       //     dta = map["data"];
//       //     return gymFromJson(json.encode(tag));
//       //   }
//       // }else
//       // {
//       //   return gymFromJson(json.encode([]));
//       // }
//     }
//   }
//
//   //Get City List Start API
//
//   static final String GET_CITY_LIST = BASE_URL+"/city";//BASE_URL+"/address";
//   static Future getAvailableCityList() async
//   {
//     final response=await http.get(Uri.parse(GET_CITY_LIST),headers: {HttpHeaders.acceptHeader: "application/json"},);
//     print(GET_CITY_LIST);
//     print(response.body);
//     var convertDataToJson = response.body;
//       var tag = json.decode(convertDataToJson)['citiesDetails']; //['data'];
//       print(tag);
//       return nameIdBeanFromJson(json.encode(tag));
//   }
//
  //Get Address List start API
//
//   static final String GET_PLAN_AVAILABLITY = BASE_URL+"/subscriptionplanned";
//   static getPlanAvailablity(String planId) async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     String token="4****";
//     String type="address_list";
//     final response = await http.post(Uri.parse(GET_PLAN_AVAILABLITY),
//         headers: {'Content-Type': 'application/json; charset=UTF-8'},
//         //body: json.encode({"userId": '$userId',"type": 'address_list',"token": '4****'},));
//         body: json.encode({"userId": userId,"planId": planId,"token": '$token'}));
//     print(GET_PLAN_AVAILABLITY);
//     print(json.encode({"userId": userId,"planId": planId,"token": '$token'}));
//     print(response.body);
//     var convertDataToJson = response.body;
//     var status = json.decode(convertDataToJson)['status'];
//     print(status);
//     return status;
//     // if (status)
//     // return true;
//     // else
//     // return false;
//   }
//
//   static Future getSubscribedPlanList() async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     final response = await http.post(Uri.parse(GET_SUBSCRIBED_PLAN_LIST),
//         headers: {HttpHeaders.acceptHeader: "application/json"},
//         body: json.encode({"userId": '$userId'}));
//     print(json.encode({"userId": '$userId'}));
//     print(response.body);
//     var convertDataToJson = response.body;
//     var status = json.decode(convertDataToJson)['status'];
//     if (status)
//     {
//       var tag = json.decode(convertDataToJson)['details']; //['data'];
//       print(tag);
//       return subscribedPlanFromJson(json.encode(tag));
//     }
//   }
//
//   // static Future getHomeData() async
//   // {
//   //   final prefs = await SharedPreferences.getInstance();
//   //   var userId=prefs.getInt("userid");
//   //   // final response = await http.post(Uri.parse(GET_HOME_OFFER_LIST),
//   //   //     headers: {HttpHeaders.acceptHeader: "application/json"},
//   //   //     body: json.encode({"userId": '$userId'}));
//   //   // print(response.body);
//   //   var convertDataToJson = '{"status":true,"msg":"Gym list available","data":[{"id":3,"image":"1640690592.jpg","type":"gym","type_id":"11"},{"id":3,"image":"1640787153.jpg","type":"product","type_id":"4"},{"id":3,"image":"1640699447.jpg","type":"gym","type_id":"16"}]}';//response.body;
//   //   var status = json.decode(convertDataToJson)['status'];
//   //   if (status) {
//   //     var tag = json.decode(convertDataToJson)['data']; //['data'];
//   //     print(tag);
//   //     return homeFromJson(json.encode(tag));
//   //   }
//   // }
//
//   static Future getHomeData() async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     final response = await http.post(Uri.parse(GET_HOME_OFFER_LIST),
//         headers: {HttpHeaders.acceptHeader: "application/json"},
//         body: json.encode({"userId": '$userId'}));
//     print(response.body);
//     var convertDataToJson = response.body;//'{"status":true,"msg":"Gym list available","data":[{"id":3,"image":"1640690592.jpg","type":"gym","type_id":"11"},{"id":3,"image":"1640787153.jpg","type":"product","type_id":"4"},{"id":3,"image":"1640699447.jpg","type":"gym","type_id":"16"}]}';//response.body;
//     var status = json.decode(convertDataToJson)['status'];
//     if (status) {
//       var tag = json.decode(convertDataToJson)['data']; //['data'];
//       print(tag);
//       return homeFromJson(json.encode(tag));
//     }
//     // var tag = json.decode(convertDataToJson)['data']; //['data'];
//     // print(tag);
//     // return homeFromJson(json.encode(tag));
//   }
//
//
//   static Future purchasePlan(transactionId, userId, planId) async
//   {
//     print(GET_Subscription);
//     final response = await http.post(Uri.parse(GET_Subscription),
//         headers: {HttpHeaders.acceptHeader: "application/json"},
//         body: json.encode({"userId": '$userId', "transactionId": '$transactionId', "planId": '$planId'}));
//     print(json.encode({"userId": '$userId', "transactionId": '$transactionId', "planId": '$planId'}));
//     print(response.body.toString());
//     var ConvertDataToJson = jsonDecode(response.body);
//
//     return ConvertDataToJson;
//   }
//    Future placeOrder(String transactionId,int userId,int address_id) async
//   {
//    // print(GET_Subscription);
//     final response = await http.post(Uri.parse(PlaceOrder),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({"userId": '$userId',
//           "transactionId": '$transactionId',
//           "address_id": address_id,
//           "token":'4****',
//           "type":'updateall'}));
//     print(json.encode({"userId": '$userId',
//       "transactionId": '$transactionId',
//       "address_id": address_id,
//       "token":'4****',
//       "type":'updateall'}));
//     print(response.body.toString());
//     var ConvertDataToJson = jsonDecode(response.body);
//
//     return ConvertDataToJson;
//   }
  Future getProfile() async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getString("userId");
    final response = await http.post(Uri.parse(getProfileu),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({"userId": '$userId'}));
    print(json.encode({"userId": '$userId'}));
    print(response.body.toString());
    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  Future uploadImage(String image, customerId) async {
    final prefs = await SharedPreferences.getInstance();
    var userId = prefs.getInt("userid");
    print(UPLOAD_IMAGE);
    final response = await http.post(Uri.parse(UPLOAD_IMAGE),
        //headers: {HttpHeaders.acceptHeader: "application/json"},
        headers: <String, String>{
          'Content-Type': 'application/json; charset=UTF-8',
        },
        body: json.encode({"image": '$image', "customerId": '$customerId'}));
    print(json.encode({"image": '$image', "customerId": '$customerId'}));

    var ConvertDataToJson = jsonDecode(response.body);
    return ConvertDataToJson;
  }

  // Future uploadScrapImage(String image) async
  // {
  //   final prefs = await SharedPreferences.getInstance();
  //   var userId=prefs.getInt("userid");
  //   print(UPLOAD_IMAGE);
  //   final response = await http.post(Uri.parse(UPLOAD_SCRAP_IMAGE),
  //       //headers: {HttpHeaders.acceptHeader: "application/json"},
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: json.encode({
  //         "image":'$image',
  //       }));
  //   print(json.encode({
  //     "image":'$image'
  //   }));
  //
  //   var ConvertDataToJson = jsonDecode(response.body);
  //   return ConvertDataToJson;
  // }

//
//
//   //{"token":"4****","userId":"11","name":"Amit", "address_type" :"office", "address":"manal softech", "mobile":"789656516","zip":"456010","city":"ujjggfngfnbxin"}
//
//
//   Future deleteAddress(String addressId) async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     print(DELETE_ADDRESS);
//     final response = await http.post(Uri.parse(DELETE_ADDRESS),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token":'4****',
//           "userId":'$userId',
//           "key_address_id":'$addressId',
//         }));
//     print(json.encode({
//       // "mobile": '$mobile',
//       // "token": '$token'
//       "token":'4****',
//       "userId":'$userId',
//       "key_address_id":'$addressId'
//     }));
//
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//
//   Future addAddress(String name, String address_type, String address, String mobile, String zip,String city) async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     final response = await http.post(Uri.parse(ADD_ADDRESS),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           // "mobile": '$mobile',
//           // "token": '$token'
//           "token":'4****',
//           "userId":'$userId',
//           "name":'$name',
//           "address_type":'$address_type',
//           "address":'$address',
//           "mobile":'$mobile',
//           "zip":'$zip',
//           "city":'$city',
//         }));
//     print(json.encode({
//       // "mobile": '$mobile',
//       // "token": '$token'
//       "token":'4****',
//       "userId":'$userId',
//       "name":'$name',
//       "address_type":'$address_type',
//       "address":'$address',
//       "mobile":'$mobile',
//       "zip":'$zip',
//       "city":'$city',
//     }));
//
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//
//   Future updateAddress(String addressId,String name, String address_type, String address, String mobile, String zip,String city) async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     final response = await http.post(Uri.parse(UPDATE_ADDRESS),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           // "mobile": '$mobile',
//           "key_address_Id":'$addressId',
//           "token":'4****',
//           "userId":'$userId',
//           "name":'$name',
//           "address_type":'$address_type',
//           "address":'$address',
//           "mobile":'$mobile',
//           "zip":'$zip',
//           "city":'$city',
//         }));
//     print(json.encode({
//       // "mobile": '$mobile',
//       // "token": '$token'
//       "key_address_Id":'$addressId',
//       "token":'4****',
//       "userId":'$userId',
//       "name":'$name',
//       "address_type":'$address_type',
//       "address":'$address',
//       "mobile":'$mobile',
//       "zip":'$zip',
//       "city":'$city',
//     }));
//
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   //UPDATE PROFILE API
//   /*Future updateProfile(String name, String mobile, String email,String image) async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     final response = await http.post(Uri.parse(UPDATE_PROFILE),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token":'4****',
//           "userId":'$userId',
//           "f_name":'$name',
//           "mobile":'$mobile',
//           "email":'$email',
//         }));
//     print(json.encode({
//       "token":'4****',
//       "userId":'$userId',
//       "f_name":'$name',
//       "mobile":'$mobile',
//       "email":'$email',
//       "image":'$image',
//     }));
//
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }*/
//   Future updateProfile(String name, String mobile, String email) async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     final response = await http.post(Uri.parse(UPDATE_PROFILE),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token":'4****',
//           "userId":'$userId',
//           "f_name":'$name',
//           "mobile":'$mobile',
//           "email":'$email',
//         }));
//     print(json.encode({
//       "token":'4****',
//       "userId":'$userId',
//       "f_name":'$name',
//       "mobile":'$mobile',
//       "email":'$email',
//     }));
//
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//   //GYM PLAN DETAILS API
//   static Future getGymDetailPlan(String gymId) async
//   {
//     // var tag = json.decode('{"data":[{"id":2,"name":"ter","address":"dfgvsdf sdf","image":"1630421034.png","facility_id":"1,2,3,4,5","rating":3.5}],"status":true,"msg":"success"}')['data'];//['data'];
//     //     print(tag);
//     //     // Map<String, dynamic> map = json.decode(response.body);
//     //     // List<dynamic> dta=[];
//     //     //dta = map["data"];
//     //     return gymFromJson(json.encode(tag));
//     print(GET_GYM_DETAIL);
//     // print("to provider: $id");
//     final response = await http.post(Uri.parse(GET_GYM_DETAIL),
//         headers: {HttpHeaders.acceptHeader: "application/json"},
//         body: json.encode({"gymId": '$gymId'}));
//     ///print(response.body);
//     return response.body;
//     // if(response.statusCode==200)
//     // {
//     //   print(response.body);
//     //   //var convertDataToJson = response.body;
//     //   var status=json.decode(response.body)['status'];
//     //   if(status)
//     //   {
//     //     var tag = json.decode(response.body)['data'];//['data'];
//     //     return gymFromJson(json.encode(tag));
//     //   }
//     // }else
//     // {
//     //   return gymFromJson(json.encode([]));
//     // }
//   }
//
// // List Offfr
//   static final String GET_Coupan_LIST = BASE_URL+"/reward";

//   Future getPriceList() async
//   {
//     final prefs = await SharedPreferences.getInstance();
//     var userId=prefs.getInt("userid");
//     print(GET_PRICE_LIST);
//     final response = await http.post(Uri.parse(GET_PRICE_LIST),
//         // headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({"categoryId": '1'}));
//     print(json.encode({"categoryId": "1"}));
//     print(response.body);
//     var convertDataToJson =response.body;
//     var status = json.decode(convertDataToJson)['status'];
//     if (status)
//     {
//       var tag = json.decode(convertDataToJson)['data']; //['data'];
//       print(tag);
//       return priceListFromJson(json.encode(tag));
//     }
//   }

  // Future getOrderList() async
  // {
  //   final prefs = await SharedPreferences.getInstance();
  //   var userId=prefs.getString("userId");
  //   print(GET_ORDER_LIST);
  //   final response = await http.post(Uri.parse(GET_ORDER_LIST),
  //       // headers: {HttpHeaders.acceptHeader: "application/json"},
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: json.encode({"userId": userId}));
  //   print(json.encode({"userId": userId}));
  //   print(response.body);
  //   var convertDataToJson =response.body;
  //   var status = json.decode(convertDataToJson)['status'];
  //   if (status)
  //   {
  //     var tag = json.decode(convertDataToJson)['data']; //['data'];
  //     print(tag);
  //     return orderFromJson(json.encode(tag));
  //   }
  // }

  // Future getAddressList() async
  // {
  //   final prefs = await SharedPreferences.getInstance();
  //   var userId=prefs.getString("userId");
  //   print(GET_ADDRESS_LIST);
  //   final response = await http.post(Uri.parse(GET_ADDRESS_LIST),
  //       // headers: {HttpHeaders.acceptHeader: "application/json"},
  //       headers: <String, String>{
  //         'Content-Type': 'application/json; charset=UTF-8',
  //       },
  //       body: json.encode({"userId": userId}));
  //   print(json.encode({"userId": userId}));
  //   print(response.body);
  //   var convertDataToJson =response.body;
  //   var status = json.decode(convertDataToJson)['status'];
  //   if (status)
  //   {
  //     var tag = json.decode(convertDataToJson)['data']; //['data'];
  //     //print(tag);
  //     return addressFromJson(json.encode(tag));
  //   }
  // }
// //  remove-mov
//   Future removeAll(String token, int userId) async {
//     print(json.encode({
//       "token": '$token',
//       "userId": '$userId',
//       "type":"cart removal",
//     }));
//     final response = await http.post(Uri.parse(BASE_URL +RemoveAll),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "userId": '$userId',
//           "type":"cart removal",
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     return ConvertDataToJson;
//   }
//
//   //update cart API
//   Future updateCartQty(String token, int userId,List<Map<dynamic, dynamic>> quantity_data) async {
//     print(json.encode({
//       "token": '$token',
//       "userId": '$userId',
//
//       "quantity_data": '$quantity_data',
//
//     }));
//     final response = await http.post(Uri.parse(BASE_URL + UpdateCartQty),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "userId": '$userId',
//           "type": 'updateall',
//           "quantity_data": quantity_data,
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     //var ConvertDataToJson = response.body;
//     return ConvertDataToJson;
//   }
//
//   //Verify Coupon API
//   Future verifyCoupon(String token, int userId,String Coupon,String amount) async {
//     print(json.encode({
//       "token": '$token',
//       "userId":'$userId',
//       "Coupon":'$Coupon',
//       "amount":'$amount',
//
//     }));
//     final response = await http.post(Uri.parse(BASE_URL + Coup),
//         //headers: {HttpHeaders.acceptHeader: "application/json"},
//         headers: <String, String>{
//           'Content-Type': 'application/json; charset=UTF-8',
//         },
//         body: json.encode({
//           "token": '$token',
//           "userId":'$userId',
//           "Coupon":'$Coupon',
//           "amount":'$amount',
//         }));
//     var ConvertDataToJson = jsonDecode(response.body);
//     //var ConvertDataToJson = response.body;
//     return ConvertDataToJson;
//   }

  changeDF(String ddt) {
    var inputFormat = DateFormat('yyyy-MM-dd');
    var date1 = inputFormat.parse(ddt);

    var outputFormat = DateFormat('yyy-MM-dd');
    var date2 = outputFormat.format(date1); // 2019-08-18
    return date2;
  }
}
