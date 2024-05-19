import 'package:flutter/material.dart';

import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';
import 'components/special_offers.dart';
import 'components/deal_banner.dart';
import 'components/sponsored.dart';
import 'components/summersale.dart';
import 'components/trending_banner.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = "/home";

  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.menu),
        title: Center(
          child: Image.asset(
            'assets/images/visa.png',
            width: 40,
            height: 32,
          ),
        ),
        actions: [
          Padding(
            padding: EdgeInsets.only(right: 5),
            child: CircleAvatar(
              
              backgroundImage: AssetImage('assets/images/Profile_Image.png'),
              radius: 20,
             
            ),
          ),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.symmetric(vertical: 16),
          child: Column(
            children: [
              HomeHeader(),
              Categories(),
              DiscountBanner(),

              SizedBox(height: 15),
              PopularProducts(),
              SizedBox(height: 15),
              DealBanner(),
              SpecialOffers(),
              SizedBox(height: 15),
              TrendingBanner(),
              PopularProducts(),
              SummerSale(),
              Sponsored(),
              SizedBox(height: 15),
              
            ],
          ),
          
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home, color: Colors.black),
            label: 'Home',
            activeIcon: Icon(Icons.home, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.circle, color: Colors.black),
            label: 'Wishlist',
            activeIcon: Icon(Icons.circle, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search, color: Colors.black),
            label: 'Search',
            activeIcon: Icon(Icons.search, color: Colors.black),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings, color: Colors.black),
            label: 'Setting',
            activeIcon: Icon(Icons.settings, color: Colors.black),
          ),
        ],
      ),
    );
  }
}