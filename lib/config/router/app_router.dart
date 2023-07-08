import 'package:go_router/go_router.dart';

import 'package:products_app/features/auth/presentation/presentation.dart';

final goRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    ///* Auth Routes
    GoRoute(
      path: '/login',
      builder: (context, state) => const LoginScreen(),
    ),
  ],
);
