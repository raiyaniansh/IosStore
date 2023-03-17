import 'package:flutter/cupertino.dart';
import 'package:iosstore/screen/cart/view/cart_screen.dart';
import 'package:iosstore/screen/home/provider/home_provider.dart';
import 'package:iosstore/screen/home/view/home_screen.dart';
import 'package:iosstore/screen/search/view/search_screen.dart';
import 'package:iosstore/screen/tabbar/view/tab_screen.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => HomeProvider(),)
      ],
      child: CupertinoApp(
        theme: CupertinoThemeData(brightness: Brightness.light),
        debugShowCheckedModeBanner: false,
        routes: {
          '/':(p0) => TabScreen(),
        },
      ),
    ),
  );
}
