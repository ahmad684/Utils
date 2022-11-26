import 'package:driver_side/AppModule/Dashboard/OrderScreen/View/Widget.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import '../../AppModule/Dashboard/BottomNavigation/BottomNavigation.dart';
import '../../AppModule/ServicesProvider/ProviderDetail/ViewController/ProviderDetailScreen.dart';
import '../../AppModule/ServicesProvider/ServicesSubCategories/ViewController/ServicesSubCategories.dart';
import '../../AppModule/Task/ViewController/TabTask.dart';



class Routes {
  static final routes = [
    GetPage(name: '/', page: () =>  BottomNavigationDOP()),
   // GetPage(name: '/pickupDetailScreen', page: () => PickupDetailScreen()),
  ];
}

