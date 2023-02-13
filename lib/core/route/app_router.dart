
import 'package:capstone_2023_mo/pages/contract.dart';
import 'package:capstone_2023_mo/pages/payment/payment_page.dart';
import 'package:capstone_2023_mo/pages/report/report_page.dart';
import 'package:capstone_2023_mo/pages/flatpage/flat_screen.dart';
import 'package:capstone_2023_mo/pages/service/service_page.dart';
import 'package:capstone_2023_mo/pages/wallet/wallet_screen.dart';
import 'package:flutter/material.dart';

import '../../pages/forgot_password/presentation/forgot_password_screen.dart';
import '../../pages/homepage/bottom_menu.dart';
import '../../pages/homepage/homepage.dart';
import '../../pages/login/presentation/login_screen.dart';
import '../../pages/otp/otpScreen.dart';
import '../../pages/register/presentation/register_screen.dart';
import '../../pages/reset_password/presentation/reset_password_screen.dart';

class AppRoute {
  static Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case LoginScreen.route:
        return MaterialPageRoute(
          builder: (_) => const LoginScreen(),
          settings: settings,
        );

      case ForgotPasswordScreen.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const ForgotPasswordScreen(),
          transitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case ResetPassword.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const ResetPassword(),
          transitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from right (x = 1) to center (x = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case RegisterScreen.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const RegisterScreen(),
          transitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      case OTPScreen.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const OTPScreen(),
          transitionDuration: const Duration(milliseconds: 350),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(0, 1),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

      case HomePageScreen.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const HomePageScreen(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      case BottomMenu.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const BottomMenu(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
      case WalletScreen.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const WalletScreen(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
       case PaymentPage.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const PaymentPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
        
        case ReportPage.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => const ReportPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

        case FlatPage.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => FlatPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

        case ServicePage.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => ServicePage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );

        case ContractPage.route:
        return PageRouteBuilder(
          settings: settings,
          pageBuilder: (_, __, ___) => ContractPage(),
          transitionDuration: const Duration(milliseconds: 300),
          transitionsBuilder: (_, animation, __, child) {
            // slide in transition,
            // from bottom (y = 1) to center (y = 0) screen
            return SlideTransition(
              position: Tween<Offset>(
                begin: const Offset(1, 0),
                end: Offset.zero,
              ).animate(animation),
              child: child,
            );
          },
        );
    }
    return null;
  }
}
