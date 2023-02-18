import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:rendoc_admin/assets/code/dbicons.dart';
import 'package:rendoc_admin/pages/homepage.dart';
import 'package:rendoc_admin/pages/info_page.dart';

class Bottomnav extends StatefulWidget {
  const Bottomnav({super.key});

  @override
  State<Bottomnav> createState() => _BottomnavState();
}

class _BottomnavState extends State<Bottomnav> {
  int selectedpageindex = 0;

  void spfun(int index) {
    setState(() {
      selectedpageindex = index;
    });
  }

  List<Widget> pages = [
    const HomePage(),
    const InfoPage()
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Image.asset('assets/images/main_page/RenDoc_main_logo.png'),
        actions: [
          IconButton(onPressed: (() {}), icon: const Icon(Icons.person))
        ],
      ),
      bottomNavigationBar: Container(
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(15), topRight: Radius.circular(15)),
          boxShadow: [
            BoxShadow(
              blurRadius: 12,
              offset: Offset(0, 10)
            )
          ],
        ),
        child: GNav(
            backgroundColor: Colors.white,
            color: const Color(0xFF41514E),
            activeColor: Colors.black,
            gap: 8,
            rippleColor: const Color.fromRGBO(158, 158, 158, 0.4),
            padding: const EdgeInsets.all(14),
            tabMargin: const EdgeInsets.all(8),
            iconSize: 32,
            tabBackgroundColor: Theme.of(context).colorScheme.secondary,
            // padding: const EdgeInsets.symmetric(vertical: 8),
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            onTabChange: (value) {
              spfun(value);
            },
            selectedIndex: selectedpageindex,
            tabs: const [
              GButton(
                icon: BDicons.estate,
              ),
              GButton(
                icon: BDicons.pen,
              ),
              GButton(
                icon: BDicons.bell,
              ),
              GButton(
                icon: BDicons.setting,
              ),
            ]),
      ),
      body: pages[selectedpageindex],
    );
  }
}
