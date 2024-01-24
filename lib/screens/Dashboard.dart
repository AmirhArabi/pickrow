import 'package:flutter/material.dart';
import 'package:uni/utils/BankingContants.dart';
import '../utils/BottomNavigationBar.dart';
import '../utils/Images.dart';
import 'home/HomePage.dart';
import 'transfer/TransgerPage.dart';
import 'payments/PaymentPage.dart';
import 'saving/SavingPage.dart';
import 'menu/MenuPage.dart';


class MainDashboard extends StatefulWidget {
  static var tag = "/MainDashboard";

  const MainDashboard({super.key});

  @override
  _MainDashboardState createState() => _MainDashboardState();
}

class _MainDashboardState extends State<MainDashboard> {
  var selectedIndex = 0;
  var pages = [
    const HomePage(),
    BankingTransfer(),
    BankingPayment(),
    const BankingSaving(),
    BankingMenu(),
  ];

  @override
  void initState() {
    super.initState();
    selectedIndex = 0;
  }

  void _onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: const Color(0xFFf3f5f9),
        bottomNavigationBar: BankingBottomNavigationBar(
          selectedItemColor: const Color(0xFF001A80),
          unselectedItemColor: const Color(0xFFA3A0A0).withOpacity(0.5),
          items: const <BankingBottomNavigationBarItem>[
            BankingBottomNavigationBarItem(
                icon: Banking_ic_Home, title: Text("خانه", style: TextStyle(fontFamily: fontRegular2))),
            BankingBottomNavigationBarItem(
                icon: Banking_ic_Transfer, title: Text("انتقال", style: TextStyle(fontFamily: fontRegular2))),
            BankingBottomNavigationBarItem(
                icon: Banking_ic_Payment, title: Text("پرداخت", style: TextStyle(fontFamily: fontRegular2))),
            BankingBottomNavigationBarItem(
                icon: Banking_ic_Saving, title: Text("پس انداز", style: TextStyle(fontFamily: fontRegular2))),
            BankingBottomNavigationBarItem(
                icon: Banking_ic_Menu, title: Text("فهرست", style: TextStyle(fontFamily: fontRegular2))),
          ],
          currentIndex: selectedIndex,
          unselectedIconTheme: IconThemeData(
              color: const Color(0xFFA3A0A0).withOpacity(0.5), size: 28),
          selectedIconTheme: const IconThemeData(color: Color(0xFF001A80), size: 28),
          onTap: _onItemTapped,
          type: BankingBottomNavigationBarType.fixed,
        ),
        body: SafeArea(
          child: pages[selectedIndex],
        ),
      ),
    );
  }
}
