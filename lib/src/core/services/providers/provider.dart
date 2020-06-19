import 'package:ecommerce_app_ui_kit/main.dart';
import 'package:ecommerce_app_ui_kit/src/core/models/brand.dart';
import 'package:ecommerce_app_ui_kit/src/core/models/category.dart';
import 'package:ecommerce_app_ui_kit/src/core/models/order.dart';
import 'package:ecommerce_app_ui_kit/src/core/models/product.dart';
import 'package:ecommerce_app_ui_kit/src/core/models/review.dart';
import 'package:ecommerce_app_ui_kit/src/core/models/theme.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../locators.dart';

class ProviderForAllApp extends StatelessWidget {
  final Widget child;
  ProviderForAllApp({this.child});
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<ProductsList>(
          create: (context) => locator<ProductsList>(),
          // dispose: (_, ProductsList provider) => provider.dispose(),
        ),
        ChangeNotifierProvider<ReviewsList>(
          create: (context) => locator<ReviewsList>(),
          // dispose: (_, ReviewsList provider) => provider.dispose(),
        ),
        ChangeNotifierProvider<CategoriesList>(
          create: (context) => locator<CategoriesList>(),
          // dispose: (_, CategoriesList provider) => provider.dispose(),
        ),
        ChangeNotifierProvider<SubCategoriesList>(
          create: (context) => locator<SubCategoriesList>(),
          // dispose: (_, SubCategoriesList provider) => provider.dispose(),
        ),
        ChangeNotifierProvider<OrderList>(
          create: (context) => locator<OrderList>(),
          // dispose: (_, OrderList provider) => provider.dispose(),
        ),
        ChangeNotifierProvider<BrandsList>(
          create: (context) => locator<BrandsList>(),
          // dispose: (_, OrderList provider) => provider.dispose(),
        ),
      ],
      child: child,
    );
  }
}
