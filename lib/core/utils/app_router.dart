import 'package:go_router/go_router.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/forget_password_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/login_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/new_password_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/pin_code_view.dart';
import 'package:mypharmacy_app/features/auth/presentation/views/register_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/categories_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/category_details_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/home_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/neare_pharmacy_view.dart';
import 'package:mypharmacy_app/features/home/presentation/views/offers_view.dart';
import 'package:mypharmacy_app/features/splash/presentation/view/splash_view.dart';

import '../../features/home/presentation/views/pharmacy_details_view.dart';
import '../../features/home/presentation/views/status_order_details_view.dart';
import '../../features/home/presentation/views/status_order_views.dart';
import '../../features/setting/presentation/views/personal_information_view.dart';
import '../../features/setting/presentation/views/save_address_view.dart';
import '../../features/shopping/presentation/views/payment_view.dart';

abstract class AppRouter {
  static final loginView = '/loginview';
  static final registerView = '/registerview';
  static final forgetPasswardView = '/forgetpasswordview';
  static final pinCodeView = '/pincodeview';
  static final newPasswardView = '/newpasswordview';
  static final homeView = '/homeview';
  static final nearPharmacyView = '/nearpharmacyview';
  static final offersView = '/offersview';
  static final categoriesView = '/categoriesview';
  static final categoryDetailsView = '/categorydetailsview';
  static final statusOrderView = '/statusorderview';
  static final statusOrderDetailsView = '/statusorderdetailsview';
  static final pharmacyDetailsView = '/pharmacydetailsview';

  static final paymentView = '/paymentview';
  static final personalInformationView = '/personalinformationview';
  static final saveAdressView = '/saveadressview';

  static final router = GoRouter(routes: [
    GoRoute(
      path: "/",
      builder: (context, state) => const SplashView(),
    ),
    GoRoute(
      path: loginView,
      builder: (context, state) => const LoginView(),
    ),
    GoRoute(
      path: registerView,
      builder: (context, state) => const RegesterView(),
    ),
    GoRoute(
      path: forgetPasswardView,
      builder: (context, state) => const ForgetPasswordView(),
    ),
    GoRoute(
      path: pinCodeView,
      builder: (context, state) => const PinCodeView(),
    ),
    GoRoute(
      path: newPasswardView,
      builder: (context, state) => const NewPasswordView(),
    ),
    GoRoute(
      path: homeView,
      builder: (context, state) => const HomeView(),
    ),
    GoRoute(
      path: nearPharmacyView,
      builder: (context, state) => const NearPharmacyView(),
    ),
    GoRoute(
      path: offersView,
      builder: (context, state) => const OffersView(),
    ),
    GoRoute(
      path: categoriesView,
      builder: (context, state) => const CategoriesView(),
    ),
    GoRoute(
      path: categoryDetailsView,
      builder: (context, state) => const CategoryDetailsView(),
    ),
    GoRoute(
      path: statusOrderView,
      builder: (context, state) => const StatusOrderView(),
    ),
    GoRoute(
      path: statusOrderDetailsView,
      builder: (context, state) => const StatusOrderDetailsView(),
    ),
    GoRoute(
      path: pharmacyDetailsView,
      builder: (context, state) => const PharmacyDetailsView(),
    ),
    GoRoute(
      path: paymentView,
      builder: (context, state) => const PaymentView(),
    ),
    GoRoute(
      path: personalInformationView,
      builder: (context, state) => const PersonalInformationView(),
    ),
    GoRoute(
      path: saveAdressView,
      builder: (context, state) => const SaveAdressView(),
    ),
  ]);
}
