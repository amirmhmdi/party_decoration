part of 'router.dart';

final rootNavigationKey = GlobalKey<NavigatorState>();

final GoRouter router = GoRouter(
  navigatorKey: rootNavigationKey,
  initialLocation: '/',
  debugLogDiagnostics: true,
  routes: [
    GoRoute(name: "home", path: '/', builder: (context, state) => HomeScreen()),
    GoRoute(
      name: "product",
      path: "/:productName",
      builder: (context, state) => ProductScreen(
        productName: state.pathParameters['productName'] ?? "NULL",
      ),
    ),
  ],
);
