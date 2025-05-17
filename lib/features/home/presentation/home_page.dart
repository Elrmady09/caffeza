import 'package:caffeza/core/constants/app_icons.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../../../core/constants/app_colors.dart';
import '../../../core/widgets/General Text.dart';
import '../../../core/widgets/space.dart';
import '../logic/home_provider.dart';
import '../widgets/coffee_grid.dart';
import '../widgets/coffee_promo_card.dart';
import '../widgets/coffee_tabs.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final FocusNode _focusNodeAddSearch = FocusNode();

  @override
  void initState() {
    super.initState();
    _focusNodeAddSearch.addListener(() {
      if (!_focusNodeAddSearch.hasFocus) {
        _closeAddTitle();
      }
    });
  }

  void _closeAddTitle() {
    FocusScope.of(context).unfocus(); // ✅ إخفاء لوحة المفاتيح عند فقدان التركيز
  }






  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: _closeAddTitle,
      child: Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Stack(
                  children: [
                    Container(
                      width: size.width,
                      height: size.height * 0.35,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [Color(0xff313030),Color(0xff000000)],
                          begin: Alignment.bottomLeft,
                          end: Alignment.topRight,
                        ),
                      ),


                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.056,
                        vertical: size.height * 0.02,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          HeightSpace(space: 0.02),
                          GeneralText(
                            text: 'Location',
                            sizetext: size.width * 0.035,
                            color: Colors.grey,
                          ),
                          Row(
                            children: [
                              GeneralText(
                                text: 'Bilzen, Tanjungbalai',
                                sizetext: size.width * 0.045,
                                fontWeight: FontWeight.bold,
                              ),
                              WidthSpace(space: 0.01),
                              Icon(Icons.keyboard_arrow_down_outlined)
                            ],
                          ),
                          HeightSpace(space: 0.02),
                          // 🔍 Search Bar
                          Row(
                            children: [
                              Container(
                                margin: EdgeInsets.only(left: size.width * 0.03),
                                width: size.width * 0.65,
                                padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(size.width * 0.03),
                                  gradient: LinearGradient(
                                    colors: [Color(0xff313030),Color(0xff212121)],
                                    begin: Alignment.bottomLeft,
                                    end: Alignment.topRight,
                                  ),
                                ),
                                child: Row(
                                  children: [
                                    const Icon(Icons.search, color: Colors.white70),
                                    WidthSpace(space: 0.02),
                                    Expanded(
                                      child: TextField(
                                        focusNode: _focusNodeAddSearch,
                                        decoration: InputDecoration(
                                          hintText: 'Search coffee',
                                          border: InputBorder.none,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              Container(
                                margin: EdgeInsets.only(left: size.width * 0.035),
                                padding: EdgeInsets.symmetric(horizontal: size.width * 0.035,vertical: size.height * 0.018),
                                decoration: BoxDecoration(
                                  color: AppColors.primary,
                                  borderRadius: BorderRadius.circular(size.width * 0.03),
                                ),
                                child: Image.asset(AppIcons.filet),

                              ),
                            ],
                          ),
                          HeightSpace(space: 0.025),
                          const CoffeePromoCard(),
                          HeightSpace(space: 0.02),
                          const CoffeeTabs(),
                          HeightSpace(space: 0.015),
                          CoffeeGrid(),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed, // هام لجعل الخلفية تعمل بشكل جيد
          backgroundColor: Colors.white,
          selectedItemColor: AppColors.primary,
          unselectedItemColor: Colors.grey,
          currentIndex: context.watch<HomeProvider>().selectedIndex,
          onTap: (index) => context.read<HomeProvider>().changeTab(index),
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.favorite_border), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.shopping_bag_outlined), label: ''),
            BottomNavigationBarItem(icon: Icon(Icons.person_outline), label: ''),
          ],
        ),

      ),
    );
  }
}