import 'package:flutter/material.dart';

import '../screens/analysis/analysis_screen.dart';
import '../screens/community/community_screen.dart';
import '../screens/home/home_screen.dart';
import '../screens/profile/profile_screen.dart';
import '../screens/program/program_screen.dart';
import 'app_routes.dart';

class AppPages {
  static Map<String, WidgetBuilder> routes = {
    AppRoutes.analysis: (context) => const AnalysisScreen(),
    AppRoutes.community: (context) => const CommunityScreen(),
    AppRoutes.home: (context) => const HomeScreen(),
    AppRoutes.profile: (context) => const ProfileScreen(),
    AppRoutes.program: (context) => const ProgramScreen(),
  };

  // Optional: onGenerateRoute for dynamic routing
  static Route<dynamic>? onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case AppRoutes.profile:
        return MaterialPageRoute(builder: (context) => const ProfileScreen());
      case AppRoutes.program:
        return MaterialPageRoute(builder: (context) => const ProgramScreen());
      case AppRoutes.analysis:
        return MaterialPageRoute(builder: (context) => const AnalysisScreen());
      case AppRoutes.community:
        return MaterialPageRoute(builder: (context) => const CommunityScreen());
      default:
        return null;
    }
  }
}
