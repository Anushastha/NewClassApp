import 'package:flutter/material.dart';
import 'package:newclassapp/view/bottom_view/about_view.dart';
import 'package:newclassapp/view/bottom_view/cart_view.dart';
import 'package:newclassapp/view/bottom_view/home_view.dart';
import 'package:newclassapp/view/bottom_view/profile_view.dart';

class DashboardNavView extends StatefulWidget {
  const DashboardNavView({super.key});

  @override
  State<DashboardNavView> createState() => _DashboardNavViewState();
}

class _DashboardNavViewState extends State<DashboardNavView> {
  int _selectedIndex = 0;

  List<Widget> lstBottomScreen=[
    const HomeView(),
    const CartView(),
    const AboutView(),
    const ProfileView(),
  ];

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Dashboard'),
        centerTitle: true,
        automaticallyImplyLeading: false,
      ),
      body: lstBottomScreen[_selectedIndex],
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.pink,
        showUnselectedLabels: false,
        selectedItemColor: Colors.amberAccent,
        unselectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.shopping_cart), label: 'Cart'),
          BottomNavigationBarItem(icon: Icon(Icons.menu_book), label: 'About'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: 'Profile'),
        ],
        currentIndex: _selectedIndex,
        onTap: (index){
          setState(() {
            _selectedIndex = index;
          });
        },
      ),
    );
  }
}
