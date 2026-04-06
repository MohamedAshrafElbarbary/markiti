import 'package:flutter/material.dart';
import 'package:markiti_app/features/auth/forget_password/view/congratulations_view.dart';
import 'package:markiti_app/features/auth/forget_password/view/forget_password_view.dart';
import 'package:markiti_app/features/auth/forget_password/view/new_password_view.dart';
import 'package:markiti_app/features/auth/forget_password/view/verification_view.dart';
import 'package:markiti_app/features/auth/sign_in/view/sign_in_view.dart';
import 'package:markiti_app/features/auth/sign_up/view/sign_up_view.dart';
import 'package:markiti_app/features/home/view/best_for_you_view.dart';
import 'package:markiti_app/features/home/view/brands_view.dart';
import 'package:markiti_app/features/home/view/buy_again_view.dart';
import 'package:markiti_app/features/home/view/cart_view.dart';
import 'package:markiti_app/features/home/view/categories_view.dart';
import 'package:markiti_app/features/home/view/favourites_view.dart';
import 'package:markiti_app/features/home/view/home_navigator.dart';
import 'package:markiti_app/features/home/view/home_view.dart';
import 'package:markiti_app/features/home/view/menu_view.dart';
import 'package:markiti_app/features/home/view/popular_porducts_view.dart';
import 'package:markiti_app/features/home/view/search_view.dart';
import 'package:markiti_app/features/onBoarding/view/on_boarding_view.dart';
import 'package:markiti_app/features/profile/view/account_preferences_view.dart';
import 'package:markiti_app/features/profile/view/profile_view.dart';
import 'package:markiti_app/features/splash/view/splash_view.dart';

Route<dynamic> onGenerateRoute(RouteSettings settings) {
  switch (settings.name) {
    case SplashView.routeName:
      return MaterialPageRoute(builder: (context) => const SplashView());

    case OnBoardingView.routeName:
      return MaterialPageRoute(builder: (context) => const OnBoardingView());

    case SignInView.routeName:
      return MaterialPageRoute(builder: (context) => const SignInView());

    case HomeNavigator.routeName:
      return MaterialPageRoute(builder: (context) => const HomeNavigator());

    case HomeView.routeName:
      return MaterialPageRoute(builder: (context) => const HomeView());

    case SearchView.routeName:
      return MaterialPageRoute(builder: (context) => const SearchView());

    case CartView.routeName:
      return MaterialPageRoute(builder: (context) => const CartView());
    //
    case PopularPorductsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const PopularPorductsView(),
      );

    case BuyAgainView.routeName:
      return MaterialPageRoute(builder: (context) => const BuyAgainView());

    case BestForYouView.routeName:
      return MaterialPageRoute(builder: (context) => const BestForYouView());

    case CategoriesView.routeName:
      return MaterialPageRoute(builder: (context) => const CategoriesView());

    case BrandsView.routeName:
      return MaterialPageRoute(builder: (context) => const BrandsView());
    //

    case FavouritesView.routeName:
      return MaterialPageRoute(builder: (context) => const FavouritesView());

    case MenuView.routeName:
      return MaterialPageRoute(builder: (context) => const MenuView());

    case SignUpView.routeName:
      return MaterialPageRoute(builder: (context) => const SignUpView());

    case NewPasswordView.routeName:
      return MaterialPageRoute(builder: (context) => const NewPasswordView());

    case ForgetPasswordView.routeName:
      return MaterialPageRoute(
        builder: (context) => const ForgetPasswordView(),
      );

    case VerificationView.routeName:
      return MaterialPageRoute(builder: (context) => const VerificationView());

    case CongratulationsView.routeName:
      return MaterialPageRoute(
        builder: (context) => const CongratulationsView(),
      );

    case ProfileView.routeName:
      return MaterialPageRoute(builder: (context) => const ProfileView());

    case AccountPreferencesView.routeName:
      return MaterialPageRoute(
        builder: (context) => const AccountPreferencesView(),
      );

    default:
      return MaterialPageRoute(builder: (context) => const Scaffold());
  }
}
