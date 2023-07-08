import 'package:go_router/go_router.dart';

import 'routes.dart';
import 'package:products_app/features/products/products.dart';
import 'package:products_app/features/auth/presentation/presentation.dart';

final goRouter = GoRouter(
  initialLocation: '/login',
  routes: [
    ///* Auth Routes
    GoRoute(
      path: Routes.login,
      builder: (context, state) => const LoginScreen(),
    ),

    ///* Product Routes
    GoRoute(
      path: Routes.product,
      builder: (context, state) => const ProductScreen(),
    ),
  ],
);
