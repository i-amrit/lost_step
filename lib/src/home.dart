import 'package:flutter/material.dart';
import 'package:lost_step/src/CustomNavigationBar/bottom_bar.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      bottomNavigationBar: ConvexBar(),
    );
  }
}
