import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../../../core/widgets/space.dart';
import '../logic/home_provider.dart';
import '../widgets/coffee_grid.dart';
import '../widgets/coffee_promo_card.dart';
import '../widgets/coffee_tabs.dart';
import '../widgets/home_app_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: size.width * 0.056,
            vertical: size.height * 0.02,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeAppBar(),
              HeightSpace(space: 0.02),
              GeneralText(
                text: 'Location',
                sizetext: size.width * 0.035,
                color: Colors.grey,
              ),
              GeneralText(
                text: 'Bilzen, Tanjungbalai',
                sizetext: size.width * 0.045,
                fontWeight: FontWeight.bold,
              ),
              HeightSpace(space: 0.02),
              // 🔍 Search Bar
              Container(
                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                decoration: BoxDecoration(
                  color: Colors.grey.shade200,
                  borderRadius: BorderRadius.circular(size.width * 0.04),
                ),
                child: Row(
                  children: [
                    const Icon(Icons.search, color: Colors.grey),
                    WidthSpace(space: 0.02),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                          hintText: 'Search coffee',
                          border: InputBorder.none,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              HeightSpace(space: 0.025),
              const CoffeePromoCard(),
              HeightSpace(space: 0.02),
              const CoffeeTabs(),
              HeightSpace(space: 0.015),
              const Expanded(child: CoffeeGrid()),
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<HomeProvider>().selectedIndex,
        onTap: (index) => context.read<HomeProvider>().changeTab(index),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.notifications_none), label: ''),
          BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
        ],
      ),

    );
  }
}