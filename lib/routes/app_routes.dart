import 'package:flutter/material.dart';
import '../core/app_export.dart';
import '../presentation/app_navigation_screen/app_navigation_screen.dart';
import '../presentation/dashboard_container_screen/dashboard_container_screen.dart';
import '../presentation/news_tab_container_screen/news_tab_container_screen.dart';
import '../presentation/notificaions_disable_screen/notificaions_disable_screen.dart';
import '../presentation/watch_live_screen/watch_live_screen.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppRoutes {
  static const String dashboardContainerScreen = '/dashboard_container_screen';

  static const String dashboardPage = '/dashboard_page';

  static const String watchLiveScreen = '/watch_live_screen';

  static const String newsPage = '/news_page';

  static const String newsTabContainerScreen = '/news_tab_container_screen';

  static const String notificaionsDisableScreen =
      '/notificaions_disable_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> routes = {
    dashboardContainerScreen: (context) => DashboardContainerScreen(),
    watchLiveScreen: (context) => WatchLiveScreen(),
    newsTabContainerScreen: (context) => NewsTabContainerScreen(),
    notificaionsDisableScreen: (context) => NotificaionsDisableScreen(),
    appNavigationScreen: (context) => AppNavigationScreen(),
    initialRoute: (context) => DashboardContainerScreen()
  };
}
