import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:online_shopping_app/ui/theme/app_colors.dart';

import '../../mixins/mixins.dart';
import '../pages.dart';
import 'components/components.dart';

class HomePage extends StatefulWidget {
  final HomePresenter presenter;

  const HomePage({
    final Key? key,
    required this.presenter,
  }) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with UIErrorManager {
  int _selectedIndex = 0;

  @override
  void initState() {
    super.initState();
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(final BuildContext context) => Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(_selectedIndex == 0 ? Icons.home : Icons.home_outlined,
                color: AppColors.black),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 1 ? Icons.favorite : Icons.favorite_border,
                color: AppColors.black),
            label: 'Favorites',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 2
                    ? Icons.shopping_cart
                    : Icons.shopping_cart_outlined,
                color: AppColors.black),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(
                _selectedIndex == 3 ? Icons.person : Icons.person_outlined,
                color: AppColors.black),
            label: 'Profile',
          ),
        ],
        selectedItemColor: AppColors.black,
        unselectedItemColor: AppColors.black,
        selectedFontSize: 15.0,
        unselectedFontSize: 15.0,
        showUnselectedLabels: true,
        backgroundColor: Colors.white,
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  margin: const EdgeInsets.only(left: 15),
                  decoration: const BoxDecoration(
                    color: AppColors.grey1,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  height: 40,
                  width: 300,
                  child: TextFormField(),
                ),
                Container(
                  margin: const EdgeInsets.only(right: 15),
                  decoration: const BoxDecoration(
                    color: AppColors.grey1,
                    borderRadius: BorderRadius.all(Radius.circular(8.0)),
                  ),
                  padding: const EdgeInsets.all(8),
                  height: 40,
                  width: 40,
                  child: Image.asset('lib/ui/assets/images/equalizer.png'),
                )
              ],
            ),
            // ListView.builder(
            //     itemCount: 8,
            //     itemBuilder: (context, index) {
            //       return const CategoryFlag();
            //     }),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'New collection',
                style: GoogleFonts.didactGothic(
                    fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: ListView.builder(
                  itemCount: 8,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: const [
                            ProductCard(),
                            ProductCard(),
                          ],
                        ),
                      ),
                    );
                  }),
            ),
          ],
        ),
      ));
}
