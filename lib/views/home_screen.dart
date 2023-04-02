import 'package:app_food_flutter/constants/assets.dart';
import 'package:app_food_flutter/data.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../components/categories_widget.dart';
import '../components/order_now.dart';
import '../components/popular_food_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const Text(
          'Food App',
          style: TextStyle(fontWeight: FontWeight.bold, color: Colors.blueGrey),
        ),
        elevation: 0,
        centerTitle: true,
        leading: const Icon(
          Icons.menu,
          color: Colors.blueGrey,
        ),
        actions: const [
          Icon(
            Icons.notification_add,
            color: Colors.blueGrey,
          ),
          SizedBox(
            width: 20,
          ),
          Padding(
            padding: EdgeInsets.all(8.0),
            child: CircleAvatar(
              radius: 20,
              child: ClipOval(
                child: Image(
                  image: AssetImage(profileLogo),
                ),
              ),
            ),
          ),
        ],
      ),
      body: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const OrderNow(),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Categories',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Flexible(
            child: Categories(),
          ),
          Row(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text(
                  'Popular Food',
                  style: Theme.of(context).textTheme.headlineMedium!.copyWith(
                      color: Colors.black, fontWeight: FontWeight.bold),
                ),
              ),
            ],
          ),
          const Flexible(child: PopularFood()),
        ],
      ),
    );
  }
}
