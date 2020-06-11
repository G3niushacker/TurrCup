import 'package:http/http.dart' as http;
import 'package:doorstepf/Models/HomeScreenModels/TopCardView.dart';
import 'package:doorstepf/Models/HomeScreenModels/SalonSubServices.dart';
import 'package:doorstepf/Models/HomeScreenModels/ServiceCatgories.dart';
import 'package:doorstepf/Models/HomeScreenModels/SubServicesList.dart';


class HomeScreenServices {

  //TopCardView Json Data

  static const String cardurl = "http://192.168.56.1/Api/readData.php";

  Future<List<TopCardView>> getTopCardView() async {

    final response = await http.get(cardurl);
    if (200 == response.statusCode) {
      List<TopCardView> topCardView = topCardViewFromJson(response.body);
      return topCardView;
     }else{
      return List<TopCardView>();
    }

  }

  //Services Grid View Json Data

  static const String serviceurl = "http://192.168.56.1/Api/serviceCatgories.php";

  Future<List<ServiceCatgories>> getServiceCatgories() async {

    final response = await http.get(serviceurl);
    if (200 == response.statusCode) {
      List<ServiceCatgories> serviceCatgories = serviceCatgoriesFromJson(response.body);
      return serviceCatgories;
    }else{
      return List<ServiceCatgories>();
    }

  }

  // SalonSubServices Json Data

  static const String subServiceUrl = "http://192.168.56.1/Api/salonsubservice.php";

  Future<List<SalonSubServicesModel>> getSalonSubService() async {

    final response = await http.get(subServiceUrl);
    if (200 == response.statusCode) {
      List<SalonSubServicesModel> salonSubServices = salonSubServicesFromJson(response.body);
      return salonSubServices;
    }else{
      return List<SalonSubServicesModel>();
    }

  }

//  SalonSubServicesList Json Data


  static const String subServiceListUrl = "http://192.168.56.1/Api/subserviceslist.php";

  Future<List<SubServicesList>> getSubServiceList() async {

    final response = await http.get(subServiceListUrl);
    if (200 == response.statusCode) {
      List<SubServicesList> subServiceList = subServicesListFromJson(response.body);
      return subServiceList;
    }else{
      return List<SubServicesList>();
    }

  }


}

