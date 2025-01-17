import 'package:estrus_detector/alarm_page.dart';
import 'package:estrus_detector/history_detail_page.dart';
import 'package:estrus_detector/history_page.dart';
import 'package:estrus_detector/register_page.dart';
import 'package:estrus_detector/statistics_page.dart';
import 'package:go_router/go_router.dart';
import 'home_page.dart';
import 'login_page.dart';

final router = GoRouter(
  routes: [
    GoRoute(
      path: '/',
      builder: (context, state) => MyLoginPage(),
      routes: [
        GoRoute(
          path: 'register',
          builder: (context, state) => MyRegisterPage(),
        ),
      ],
    ),
    GoRoute(
      path: '/home',
      builder: (context, state) => MyHomePage(token: state.extra as String),
    ),
    GoRoute(
      path: '/alarm',
      builder: (context, state) => MyAlarmPage(token: state.extra as String),
    ),
    GoRoute(
      path: '/history',
      builder: (context, state) => MyHistoryPage(token: state.extra as String),
      routes: [
        GoRoute(
          path: 'history_detail',
          builder: (context, state) =>
              MyHistoryDetailPage(detail: state.extra as String),
        ),
      ],
    ),
    GoRoute(
      path: '/statistics',
      builder: (context, state) =>
          MyStatisticsPage(token: state.extra as String),
    ),
  ],
);
