
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash/presentation/screens/products/products_screen.dart';

class AppRouter{
  static const productsRoute = '/products_screen';
  static productDetailsParam([String? id]) => '/product_details/${id ?? ':id'}';

  static Widget _productsRouteBuilder(BuildContext context, GoRouterState state) =>  const ProductsScreen();
  static Widget _productDetailsRouteBuilder(BuildContext context, GoRouterState state) =>   Center(child: Text('product details ${state.pathParameters['id']}'));

  static final GoRouter _router =
  GoRouter(
    initialLocation: productsRoute,
    routes: [
      GoRoute(path: productsRoute, builder: _productsRouteBuilder),
      GoRoute(path: productDetailsParam(), builder: _productDetailsRouteBuilder),
    ],
  );

  static GoRouter get router => _router;

}