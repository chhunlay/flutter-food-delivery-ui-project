import 'package:flutter/material.dart';
import 'package:flutter_food_delivery_app/views/chat_page/answer_call_page.dart';
import 'package:flutter_food_delivery_app/views/chat_page/chat_page.dart';
import 'package:flutter_food_delivery_app/views/main_page.dart';

import 'package:flutter_food_delivery_app/views/profile_page/profile_page.dart';

import '../views/chat_page/call_page.dart';
import '../views/chat_page/completed_order_page.dart';
import '../views/chat_page/please_rate_the_restaurant.dart';
import '../views/congrate_page.dart';
import '../views/congrate_reset_password.dart';

import '../views/detail_location_page.dart';
import '../views/order_page/deliver_page.dart';
import '../views/order_page/deliver_to_home.dart';
import '../views/order_page/order_history.dart';
import '../views/order_page/orders_page.dart';
import '../views/order_page/payment_method_from_order.dart';
import '../views/order_page/thank_for_ordering.dart';
import '../views/order_page/track_location.dart';
import '../views/profile_page/favorite_food_list.dart';
import '../views/fill_in_your_bio.dart';
import '../views/forget_password_page.dart';
import '../views/get_started_page.dart';
import '../views/home_page/home_page.dart';
import '../views/home_page/lovy_food_restuarant_page.dart';
import '../views/chat_page/message_details.dart';
import '../views/home_page/notification_page.dart';

import '../views/home_page/original_salad_page.dart';
import '../views/home_page/payment_from_special_deal.dart';
import '../views/payment_method.dart';

import '../views/chat_page/please_rate_the_menu.dart';

import '../views/home_page/popular_foods.dart';
import '../views/home_page/popular_restaurant.dart';
import '../views/home_page/promotion_page.dart';
import '../views/reset_password_page.dart';
import '../views/set_your_location_page.dart';
import '../views/sign_in_page.dart';
import '../views/splash_page.dart';
import '../views/take_photo_page.dart';
import '../views/home_page/testimonial_list.dart';

import '../views/upload_your_photo_page.dart';
import '../views/verification_page.dart';
Route<RouteSettings> onGenerateRoute(RouteSettings settings) {
  var args = settings.arguments;

  switch (settings.name) {
    case SplashPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SplashPage(),
      );

    case GetStartedPage.routeName:
      return MaterialPageRoute(
        builder: (context) => GetStartedPage(
          arguments: args as GetStartedPageArguments,
        ),
      );
    case MainPage.routeName:
      return MaterialPageRoute(
        builder: (context) => MainPage(),
      );
    case HomePage.routeName:
      return MaterialPageRoute(
        builder: (context) => HomePage(),
      );
    case OrdersPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrdersPage(),
      );
    case ChatPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ChatPage(),
      );
    case ProfilePage.routeName:
      return MaterialPageRoute(
        builder: (context) => ProfilePage(),
      );
    case SignInPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SignInPage(),
      );
    case FillInYourBio.routeName:
      return MaterialPageRoute(
        builder: (context) => FillInYourBio(),
      );
    case PaymentMethodPage.routeName:
      return MaterialPageRoute(
        builder: (context) => PaymentMethodPage(),
      );
    case UploadYourPhotoPage.routeName:
      return MaterialPageRoute(
        builder: (context) => UploadYourPhotoPage(),
      );
    case TakePhotoPage.routeName:
      return MaterialPageRoute(
        builder: (context) => TakePhotoPage(),
      );
    case SetYourLocationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => SetYourLocationPage(),
      );
    case DetailLocationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => DetailLocationPage(),
      );
    case CongratePage.routeName:
      return MaterialPageRoute(
        builder: (context) => CongratePage(),
      );
    case ForgetPasswordPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ForgetPasswordPage(),
      );
    case VerificationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => VerificationPage(),
      );
    case ResetPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => ResetPassword(),
      );
    case CongrateResetPassword.routeName:
      return MaterialPageRoute(
        builder: (context) => CongrateResetPassword(),
      );
    case PopularRestaurant.routeName:
      return MaterialPageRoute(
        builder: (context) => PopularRestaurant(),
      );
    case PromotionPage.routeName:
      return MaterialPageRoute(
        builder: (context) => PromotionPage(),
      );
    case NotificationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => NotificationPage(),
      );

    case MessagePage.routeName:
      return MaterialPageRoute(
        builder: (context) => MessagePage(),
      );

    case CallPage.routeName:
      return MaterialPageRoute(
        builder: (context) => CallPage(),
      );

    case AnswerCallingPage.routeName:
      return MaterialPageRoute(
        builder: (context) => AnswerCallingPage(),
      );

    case CompletedOrderPage.routeName:
      return MaterialPageRoute(
        builder: (context) => CompletedOrderPage(),
      );

    case PleaseRateTheMenu.routeName:
      return MaterialPageRoute(
        builder: (context) => PleaseRateTheMenu(),
      );

    case PleaseRateTheRestaurantPage.routeName:
      return MaterialPageRoute(
        builder: (context) => PleaseRateTheRestaurantPage(),
      );

    case DeliverPage.routeName:
      return MaterialPageRoute(
        builder: (context) => DeliverPage(),
      );

    case PaymentMethodFromOrder.routeName:
      return MaterialPageRoute(
        builder: (context) => PaymentMethodFromOrder(),
      );

    case OrderHistoryPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OrderHistoryPage(),
      );

    case DeliverToHome.routeName:
      return MaterialPageRoute(
        builder: (context) => DeliverToHome(),
      );

    case TrackLocationPage.routeName:
      return MaterialPageRoute(
        builder: (context) => TrackLocationPage(),
      );

    case ThankForOrderingPage.routeName:
      return MaterialPageRoute(
        builder: (context) => ThankForOrderingPage(),
      );

    case PaymentMethodFromSpecialDeal.routeName:
      return MaterialPageRoute(
        builder: (context) => PaymentMethodFromSpecialDeal(),
      );

    case PopularFoodsPage.routeName:
      return MaterialPageRoute(
        builder: (context) => PopularFoodsPage(),
      );

    case TestTimonialListPage.routeName:
      return MaterialPageRoute(
        builder: (context) => TestTimonialListPage(),
      );

    case FavoriteFoodList.routeName:
      return MaterialPageRoute(
        builder: (context) => FavoriteFoodList(),
      );

    case OriginalSaladPage.routeName:
      return MaterialPageRoute(
        builder: (context) => OriginalSaladPage(),
      );

    case LovyFoodRestaurantPage.routeName:
      return MaterialPageRoute(
        builder: (context) => LovyFoodRestaurantPage(),
      );

    default:
      return MaterialPageRoute(
        builder: (context) => Scaffold(
          body: Center(
            child: Text('No route defined for ${settings.name}'),
          ),
        ),
      );
  }
}
