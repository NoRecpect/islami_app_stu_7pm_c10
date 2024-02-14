import 'package:flutter/material.dart';
import 'package:islam_app_c10_sun_4pm/hadeth/page/hadeth_view.dart';
import 'package:islam_app_c10_sun_4pm/quran/page/quran_view.dart';
import 'package:islam_app_c10_sun_4pm/radio/page/radio_view.dart';
import 'package:islam_app_c10_sun_4pm/settings/page/settings_view.dart';
import 'package:islam_app_c10_sun_4pm/tasbeh/page/tasbeh_view.dart';

class LayOutView extends StatefulWidget {
  static const String routeName = "layout";

  const LayOutView({super.key});

  @override
  State<LayOutView> createState() => _LayOutViewState();
}

class _LayOutViewState extends State<LayOutView> {
  int currentIndex = 0;
  List<Widget> screens = [
    QuranView(),
    HadethView(),
    TasbehView(),
    RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            "assets/images/main_background.png",
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text(
            "إسلامي",
          ),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/quran_icn.png"),
                ),
                label: "Quran",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/hadeth_icn.png"),
                ),
                label: "Hadeth",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/sebha_icn.png"),
                ),
                label: "Tasbeh",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage("assets/images/radio_icn.png"),
                ),
                label: "Radio",
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.settings),
                label: "settings",
              ),
            ]),
      ),
    );
  }
}
