import 'package:flutter/cupertino.dart';
import 'package:iosstore/screen/cart/view/cart_screen.dart';
import 'package:iosstore/screen/home/view/home_screen.dart';
import 'package:iosstore/screen/search/view/search_screen.dart';

class TabScreen extends StatefulWidget {
  const TabScreen({Key? key}) : super(key: key);

  @override
  State<TabScreen> createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  List screen = [HomeScreen(),SearchScreen(),CartScreen()];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.home),
              label: 'Home',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.search),
              label: 'Search',
            ),
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.cart),
              label: 'Cart',
            ),
          ],
        ),
        tabBuilder: (BuildContext context, int index) {
          return screen[index];
        },
      ),
    );
  }
}
