import 'package:get/get.dart';
import 'package:shyp_ai_app/Screens/AddCustomer%20Details%20Screen/addcustomer_details_screen.dart';
import 'package:shyp_ai_app/Screens/Bank%20Details%20Screen/bank_details_screen.dart';
import 'package:shyp_ai_app/Screens/Basic%20Information%20Screen/basic_information_screen.dart';
import 'package:shyp_ai_app/Screens/Book%20Shipment%20Screen/book_shipment_screen.dart';
import 'package:shyp_ai_app/Screens/Create%20Account%20Screen/create_account_screen.dart';
import 'package:shyp_ai_app/Screens/Create%20Password%20Screen/create_password_screen.dart';
import 'package:shyp_ai_app/Screens/Customer%20Screen/customer_screen.dart';
import 'package:shyp_ai_app/Screens/Dashboard%20Screen/dashboard_screen.dart';
import 'package:shyp_ai_app/Screens/Document%20Upload%20Screen/document_upload_screen.dart';
import 'package:shyp_ai_app/Screens/Forgot%20Password%20Screen/forgot_password_screen.dart';
import 'package:shyp_ai_app/Screens/Login%20Screen/login_screen.dart';
import 'package:shyp_ai_app/Screens/OTP%20%20SCREEN/otp_screen.dart';
import 'package:shyp_ai_app/Screens/Shipment%20Details%20Screen/shipment_details_screen.dart';
import 'package:shyp_ai_app/Screens/Others%20Screen/others_screen.dart';
import 'package:shyp_ai_app/Screens/Primary%20Contact%20Screen/primary_contact_screen.dart';
import 'package:shyp_ai_app/Screens/Reciever%20Details%20Screen/reciever_details_screen.dart';
import 'package:shyp_ai_app/Screens/Secondary%20Details%20Screen/secondary%20_details_screen.dart';
import 'package:shyp_ai_app/Screens/SendLink%20Screen/send_link_screen.dart';
import 'package:shyp_ai_app/Screens/Sender%20Details%20Screen/sender__details_screen.dart';
import 'package:shyp_ai_app/Screens/Shipments%20Sreen/shipment_screen.dart';
import 'package:shyp_ai_app/Screens/SideBar%20Screen/side_bar_screen.dart';
import 'package:shyp_ai_app/Screens/Splash%20Screen/splash_screen.dart';
import 'package:shyp_ai_app/Screens/Terms%20Conditions%20Screen/terms_condition_screen.dart';
import 'package:shyp_ai_app/Screens/Tracking%20Details/tracking_details_screen.dart';
import 'package:shyp_ai_app/Screens/Tracking%20Screen/tracking_screen.dart';

final List<GetPage<dynamic>> routes = [
  GetPage(
    name: SplashScreen.routeName,
    page: () => const SplashScreen(),
  ),
  GetPage(
    name: LoginScreen.routeName,
    page: () => LoginScreen(),
  ),
  GetPage(
    name: DashboardScreen.routeName,
    page: () => const DashboardScreen(),
  ),
  GetPage(
    name: SideBarSreen.routeName,
    page: () => const SideBarSreen(),
  ),

  GetPage(
    name: TrackingScreen.routeName,
    page: () => const TrackingScreen(),
  ),

  GetPage(
    name: TrackingDetailsScreen.routeName,
    page: () => const TrackingDetailsScreen(),
  ),

  GetPage(
    name: CustomerScreen.routeName,
    page: () => const CustomerScreen(),
  ),
  GetPage(
    name: AddCustomDetails.routeName,
    page: () => AddCustomDetails(),
  ),
  GetPage(
    name: SendLinkScreen.routeName,
    page: () => const SendLinkScreen(),
  ), //
  GetPage(
    name: BasicinformationScreen.routeName,
    page: () => BasicinformationScreen(),
  ),

  GetPage(
    name: PrimaryContactScreen.routeName,
    page: () => PrimaryContactScreen(),
  ),

  GetPage(
    name: SecondaryDetailScreen.routeName,
    page: () => SecondaryDetailScreen(),
  ), //
  GetPage(
    name: BankDetailScreen.routeName,
    page: () => BankDetailScreen(),
  ),
  GetPage(
    name: DocumentUploadScreen.routeName,
    page: () => const DocumentUploadScreen(),
  ),

  GetPage(
    name: OtherScreen.routeName,
    page: () => OtherScreen(),
  ),

  GetPage(
    name: TermConditionScreen.routeName,
    page: () => const TermConditionScreen(),
  ),

  GetPage(
    name: ShipmentScreen.routeName,
    page: () => const ShipmentScreen(),
  ),
  GetPage(
    name: BookShipmentScreen.routeName,
    page: () => BookShipmentScreen(),
  ),
  GetPage(
    name: SenderDetailsScreen.routeName,
    page: () => SenderDetailsScreen(),
  ),
  GetPage(
    name: ReceiverDetailsScreen.routeName,
    page: () => ReceiverDetailsScreen(),
  ),
  GetPage(
    name: ShipmentDetailsScreen.routeName,
    page: () => ShipmentDetailsScreen(),
  ),
  GetPage(
    name: ForgotPasswordScreen.routeName,
    page: () => ForgotPasswordScreen(),
  ),
  GetPage(
    name: CreateAccountScreen.routeName,
    page: () => CreateAccountScreen(),
  ),
  GetPage(
    name: OtpScreen.routeName,
    page: () => OtpScreen(),
  ),
  GetPage(
    name: CreatePasswordScreen.routeName,
    page: () => CreatePasswordScreen(),
  ),
];
