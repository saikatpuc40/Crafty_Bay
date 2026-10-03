import 'package:crafty_bay/presentation/state_holder/main_bottom_nav_provider.dart';
import 'package:crafty_bay/presentation/ui/screens/category_list_screen.dart' show CategoryListScreen;
import 'package:crafty_bay/presentation/ui/screens/home_screen.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainBottomNavScreen extends StatelessWidget {
  const MainBottomNavScreen({super.key});

  static const List<Widget> _screens = [
    HomeScreen(),
    CategoryListScreen(),
    CategoryListScreen(),
    CategoryListScreen(),
  ];

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: Selector<MainBottomNavProvider,int>(
        selector: (context,provider){
          return provider.selectedIndex;
        },
        builder: (context,selectedIndex,child) {
          return IndexedStack(
            index: selectedIndex,
            children: _screens,
          );
        }
      ),
      bottomNavigationBar: Selector<MainBottomNavProvider,int>(
        selector: (context,provider){
          return provider.selectedIndex;
        },
        builder: (context,selectedIndex,child) {
          return NavigationBar(
              selectedIndex: selectedIndex,
              onDestinationSelected: (index) {
                context
                    .read<MainBottomNavProvider>()
                    .changeIndex(index);
              },
              destinations: const [
                NavigationDestination(icon: Icon(Icons.home_outlined), label: 'Home'),
                NavigationDestination(icon: Icon(Icons.category_outlined), label: 'Category'),
                NavigationDestination(icon: Icon(Icons.shopping_cart), label: 'Cart'),
                NavigationDestination(icon: Icon(Icons.favorite_outline), label: 'Wishlist'),
              ]
          );
        }
      ),
    );

  }
}
