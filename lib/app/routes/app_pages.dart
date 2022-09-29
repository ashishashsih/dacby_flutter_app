import 'package:get/get.dart';

import '../modules/AddAddress/bindings/add_address_binding.dart';
import '../modules/AddAddress/views/add_address_view.dart';
import '../modules/CartDetails/bindings/cart_details_binding.dart';
import '../modules/CartDetails/views/cart_details_view.dart';
import '../modules/CreatePost/bindings/create_post_binding.dart';
import '../modules/CreatePost/views/create_post_view.dart';
import '../modules/DashBoard/bindings/dash_board_binding.dart';
import '../modules/DashBoard/views/dash_board_view.dart';
import '../modules/GameDetailPage/bindings/game_detail_page_binding.dart';
import '../modules/GameDetailPage/views/game_detail_page_view.dart';
import '../modules/Games/bindings/games_binding.dart';
import '../modules/Games/views/games_view.dart';
import '../modules/Login/bindings/login_binding.dart';
import '../modules/Login/views/login_view.dart';
import '../modules/Notification/bindings/notification_binding.dart';
import '../modules/Notification/views/notification_view.dart';
import '../modules/RefferalCode/bindings/refferal_code_binding.dart';
import '../modules/RefferalCode/views/refferal_code_view.dart';
import '../modules/Registration/bindings/registration_binding.dart';
import '../modules/Registration/views/registration_view.dart';
import '../modules/Shop/bindings/shop_binding.dart';
import '../modules/Shop/views/shop_view.dart';
import '../modules/Slider/bindings/slider_binding.dart';
import '../modules/Slider/views/slider_view.dart';
import '../modules/SuccessMessage/bindings/success_message_binding.dart';
import '../modules/SuccessMessage/views/success_message_view.dart';
import '../modules/UserProfile/bindings/user_profile_binding.dart';
import '../modules/UserProfile/views/user_profile_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/profile/bindings/profile_binding.dart';
import '../modules/profile/views/profile_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.PROFILE,
      page: () => const ProfileView(),
      binding: ProfileBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => const LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.SLIDER,
      page: () => const SliderView(),
      binding: SliderBinding(),
    ),
    GetPage(
      name: _Paths.NOTIFICATION,
      page: () => const NotificationView(),
      binding: NotificationBinding(),
    ),
    GetPage(
      name: _Paths.REGISTRATION,
      page: () => const RegistrationView(),
      binding: RegistrationBinding(),
    ),
    GetPage(
      name: _Paths.DASH_BOARD,
      page: () => DashBoardView(),
      binding: DashBoardBinding(),
    ),
    GetPage(
      name: _Paths.USER_PROFILE,
      page: () => const UserProfileView(),
      binding: UserProfileBinding(),
    ),
    GetPage(
      name: _Paths.CREATE_POST,
      page: () => CreatePostView(),
      binding: CreatePostBinding(),
    ),
    GetPage(
      name: _Paths.SHOP,
      page: () => const ShopView(),
      binding: ShopBinding(),
    ),
    GetPage(
      name: _Paths.GAMES,
      page: () => GamesView(),
      binding: GamesBinding(),
    ),
    GetPage(
      name: _Paths.GAME_DETAIL_PAGE,
      page: () => GameDetailPageView(),
      binding: GameDetailPageBinding(),
    ),
    GetPage(
      name: _Paths.REFFERAL_CODE,
      page: () => RefferalCodeView(),
      binding: RefferalCodeBinding(),
    ),
    GetPage(
      name: _Paths.ADD_ADDRESS,
      page: () => AddAddressView(),
      binding: AddAddressBinding(),
    ),
    GetPage(
      name: _Paths.SUCCESS_MESSAGE,
      page: () => const SuccessMessageView(),
      binding: SuccessMessageBinding(),
    ),
    GetPage(
      name: _Paths.CART_DETAILS,
      page: () => const CartDetailsView(),
      binding: CartDetailsBinding(),
    ),
  ];
}
