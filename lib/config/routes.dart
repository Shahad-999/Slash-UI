import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:slash/presentation/views/product_details/product_details_screen.dart';
import 'package:slash/presentation/views/products/products_screen.dart';
import 'package:slash/presentation/views/search_screen.dart';

class AppRouter {
  static const productsRoute = '/products_screen';
  static const searchScreenRoute = '/search_screen';

  static productDetailsParam([int? id]) => '/product_details/${id ?? ':id'}';

  static Widget _productsRouteBuilder(
          BuildContext context, GoRouterState state) =>
      const ProductsScreen();
  static Widget _searchRouteBuilder(
          BuildContext context, GoRouterState state) =>
      const SearchScreen();

  static Widget _productDetailsRouteBuilder(
          BuildContext context, GoRouterState state) =>
      ProductDetailsScreen(id: state.pathParameters['id'] ?? '');

  static final GoRouter _router = GoRouter(
    initialLocation: searchScreenRoute,
    routes: [
      GoRoute(path: productsRoute, builder: _productsRouteBuilder),
      GoRoute(path: searchScreenRoute, builder: _searchRouteBuilder),
      GoRoute(
          path: productDetailsParam(), builder: _productDetailsRouteBuilder),
    ],
  );

  static GoRouter get router => _router;
}
