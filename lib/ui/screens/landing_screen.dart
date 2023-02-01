import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:provider/provider.dart';
import 'package:writings/model/view_model/state_manager.dart';
import 'package:writings/ui/screens/home_screens/edit_screen.dart';
import 'package:writings/ui/screens/home_screens/writing_screen.dart';

import '../../model/helper/service_locater.dart';
import '../theme/constants.dart';
import 'home_screens/pdf_screen.dart';
import 'home_screens/profile_screen.dart';

class LandingScreen extends StatefulWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  List<Widget> screens = [
    const WritingScreen(),
    const EditScreen(),
    const PdfScreen(),
    const ProfileScreen()
  ];

  @override
  Widget build(BuildContext context) {
    int selectedIndex = Provider.of<StateManager>(context).selectedIndex;
    return LayoutBuilder(builder: (context, constraints) {
      double maxHeight = constraints.maxHeight;
      double maxWidth = constraints.maxWidth;
      double h1p = maxHeight * 0.01;
      double h10p = maxHeight * 0.1;
      double w10p = maxWidth * 0.1;
      double w1p = maxWidth * 0.01;
      return Scaffold(
          body: screens[selectedIndex],
          bottomNavigationBar: BottomNavigationBar(
            selectedLabelStyle: const TextStyle(fontSize: 0),
            unselectedLabelStyle: const TextStyle(fontSize: 0),
            unselectedItemColor: Colors.black,
            selectedItemColor: Colors.black,
            type: BottomNavigationBarType.fixed,
            currentIndex: selectedIndex,
            onTap: (index) {
              setState(() {
                getIt<StateManager>().changeIndex(index);
              });
            },
            items: [
              BottomNavigationBarItem(
                label: "",
                icon: Padding(
                    padding: EdgeInsets.only(bottom: h1p * 1.5, top: h1p * 1),
                    child: selectedIndex == 0
                        ? SvgPicture.asset("assets/images/Frame 1.svg")
                        : SvgPicture.asset("assets/images/Frame 5.svg")),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Padding(
                    padding: EdgeInsets.only(bottom: h1p * 1.5, top: h1p * 1),
                    child: selectedIndex == 1
                        ? SvgPicture.asset("assets/images/Frame 6.svg")
                        : SvgPicture.asset("assets/images/Frame 2.svg")),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Padding(
                    padding: EdgeInsets.only(bottom: h1p * 1.5, top: h1p * 1),
                    child: selectedIndex == 2
                        ? SvgPicture.asset("assets/images/Frame 3.svg")
                        : SvgPicture.asset("assets/images/Frame 5.svg")),
              ),
              BottomNavigationBarItem(
                label: "",
                icon: Padding(
                    padding: EdgeInsets.only(bottom: h1p * 1.5, top: h1p * 1),
                    child: selectedIndex == 3
                        ? SvgPicture.asset("assets/images/Frame 4.svg")
                        : SvgPicture.asset("assets/images/Frame 5.svg")),
              ),
            ],
          ));
    });
  }
}
