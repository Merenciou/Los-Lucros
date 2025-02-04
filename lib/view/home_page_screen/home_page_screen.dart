import 'package:flutter/material.dart';
import 'package:los_lucros/view/home_page_screen/app_bar.dart';
import 'package:los_lucros/view/home_page_screen/best_seller.dart';
import 'package:los_lucros/view/home_page_screen/categories_carousel.dart';
import 'package:los_lucros/view/home_page_screen/weekly_offers.dart';
import 'package:los_lucros/view/home_page_screen/flash_sale.dart';

class HomePageScreen extends StatefulWidget {
  const HomePageScreen({super.key});

  @override
  State<HomePageScreen> createState() => _HomePageScreenState();
}

class _HomePageScreenState extends State<HomePageScreen> {
  @override
  Widget build(BuildContext context) {
    var device = MediaQuery.of(context);
    var deviceSize = device.size;

    return Scaffold(
      backgroundColor: const Color(0xFFD9D9D9),
      appBar: CustomAppBar(),
      body: Column(
        children: [
          CategoriesCarousel(),
          SizedBox(
            width: double.infinity,
            height: deviceSize.height / 1.55,
            child: ListView(
              scrollDirection: Axis.vertical,
              children: [
                FlashSale(),
                WeeklyOffers(),
                BestSeller(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
