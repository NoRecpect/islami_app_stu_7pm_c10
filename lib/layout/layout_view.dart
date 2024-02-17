import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app_c10_sun_4pm/config/settings_provider.dart';
import 'package:islam_app_c10_sun_4pm/hadeth/page/hadeth_view.dart';
import 'package:islam_app_c10_sun_4pm/quran/page/quran_view.dart';
import 'package:islam_app_c10_sun_4pm/radio/page/radio_view.dart';
import 'package:islam_app_c10_sun_4pm/settings/page/settings_view.dart';
import 'package:islam_app_c10_sun_4pm/tasbeh/page/tasbeh_view.dart';
import 'package:provider/provider.dart';

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
    const HadethView(),
    const TasbehView(),
    const RadioView(),
    SettingsView(),
  ];

  @override
  Widget build(BuildContext context) {
    Size mediaQuery = MediaQuery.of(context).size;
    var local = AppLocalizations.of(context)!;
    var vm = Provider.of<SettingsProvider>(context);

    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            vm.getBackground(),
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            local.islami,
          ),
        ),
        body: screens[currentIndex],
        bottomNavigationBar: BottomNavigationBar(
            currentIndex: currentIndex,
            onTap: (index) {
              currentIndex = index;
              setState(() {});
            },
            items: [
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/quran_icn.png"),
                ),
                label: local.quran,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/hadeth_icn.png"),
                ),
                label: local.hadeth,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/sebha_icn.png"),
                ),
                label: local.tasbeh,
              ),
              BottomNavigationBarItem(
                icon: const ImageIcon(
                  AssetImage("assets/images/radio_icn.png"),
                ),
                label: local.radio,
              ),
              BottomNavigationBarItem(
                icon: const Icon(Icons.settings),
                label: local.settings,
              ),
            ]),
      ),
    );
  }
}
