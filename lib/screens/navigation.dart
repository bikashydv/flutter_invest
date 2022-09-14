import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:invest/screens/home.dart';
import 'package:invest/screens/serch.dart';
import 'package:invest/screens/user.dart';
import 'package:invest/screens/wallet.dart';

class Navigation extends StatefulWidget {
  const Navigation({Key? key}) : super(key: key);

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int currentPage = 0;
  late List pages;
  @override
  void initState() {
    super.initState();
    pages = [
      HomePage(),
      UserPage(),
      WalletPage(),
      SearchPage(),
    ];
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          setState(() {
            currentPage = index;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Image.asset(
              "assets/navigationi_icon/home.png",
              color: currentPage == 0 ? Colors.green : Colors.grey,
            ),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/navigationi_icon/search.png",
                color: currentPage == 1 ? Colors.green : Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/navigationi_icon/doller.png",
                color: currentPage == 2 ? Colors.green : Colors.grey),
            label: "",
          ),
          BottomNavigationBarItem(
            icon: Image.asset("assets/navigationi_icon/user.png",
                color: currentPage == 3 ? Colors.green : Colors.grey),
            label: "",
          ),
        ],
      ),
      body: pages[currentPage],
    );
  }
}
