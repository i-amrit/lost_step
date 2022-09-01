import 'package:flutter/material.dart';
import 'package:convex_bottom_bar/convex_bottom_bar.dart';
import '../account.dart';
import '../cart.dart';
import '../homePage.dart';

const _iconPages = <String, IconData> {
  'Cart': Icons.shopping_cart_outlined,
  'Home': Icons.home_outlined,
  'Account': Icons.account_circle_outlined,
};

const _aPages = <String, Widget>{
  'Cart': Cart(),
  'Home': HomePage(),
  'Account': Account(),
};

class ConvexBar extends StatefulWidget {
  const ConvexBar({Key? key}) : super(key: key);

  @override
  State<ConvexBar> createState() => _ConvexBarState();
}

class _ConvexBarState extends State<ConvexBar> {
  @override
  Widget build(BuildContext context) {
    return StyleProvider(
      style: Style(),
      child: DefaultTabController(length: 3,
          initialIndex: 1,
          child: Scaffold(
            body: Column(
            children: [
              Expanded(child: TabBarView(
                children: [
                  for (final pages in _aPages.values) pages,
                ],
              ))
            ],
            ),
            bottomNavigationBar: ConvexAppBar(items: <TabItem>[
                for (final entry in _iconPages.entries)
                  TabItem(icon: entry.value)
              ],
                height: 45,
                curveSize: 80,
                backgroundColor: Colors.white,
                activeColor: Colors.deepOrange,
                color: Colors.deepOrange,
              ),
            ),
      ),
    );
  }
}

class Style extends StyleHook{
  @override
  double get iconSize => 28;

  @override
  double get activeIconMargin => 7;

  @override
  double get activeIconSize => 32;

  @override
  TextStyle textStyle(Color color) {
    return TextStyle(fontSize: 20, color: color);
  }
}
