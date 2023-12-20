import 'package:go_router/go_router.dart';

enum AppRoute {
  home,
  product,
}

final appRouter = GoRouter(
  initialLocation: '/',
  routes: [],
);
