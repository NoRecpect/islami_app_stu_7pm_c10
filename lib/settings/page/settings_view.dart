import 'package:animated_custom_dropdown/custom_dropdown.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:islam_app_c10_sun_4pm/config/settings_provider.dart';
import 'package:provider/provider.dart';

class SettingsView extends StatelessWidget {
  final List<String> languageList = ["English", "عربي"];
  final List<String> themeList = ["Dark", "Light"];

  SettingsView({super.key});

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    var local = AppLocalizations.of(context)!;
    var mediaQuery = MediaQuery.of(context).size;
    var vm = Provider.of<SettingsProvider>(context);
    return Padding(
      padding: const EdgeInsets.all(30.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: mediaQuery.height * 0.1,
          ),
          Text(
            local.language,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(
            height: mediaQuery.height * 0.01,
          ),
          CustomDropdown<String>(
            items: languageList,
            initialItem: vm.currentLanguage == "en" ? "English" : "عربي",
            decoration: CustomDropdownDecoration(
              closedFillColor:
                  vm.isDark() ? const Color(0xff141A2E) : Colors.white,
              expandedFillColor:
                  vm.isDark() ? const Color(0xff141A2E) : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: vm.isDark() ? const Color(0xffFACC1D) : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: vm.isDark() ? const Color(0xffFACC1D) : Colors.black,
              ),
            ),
            onChanged: (value) {
              if (value == "English") {
                vm.changeLanguage("en");
              } else if (value == "عربي") {
                vm.changeLanguage("ar");
              }
            },
          ),
          SizedBox(
            height: mediaQuery.height * 0.1,
          ),
          Text(
            local.theme,
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(
            height: mediaQuery.height * 0.01,
          ),
          CustomDropdown<String>(
            items: themeList,
            initialItem: vm.isDark() ? "Dark" : "Light",
            decoration: CustomDropdownDecoration(
              closedFillColor:
                  vm.isDark() ? const Color(0xff141A2E) : Colors.white,
              expandedFillColor:
                  vm.isDark() ? const Color(0xff141A2E) : Colors.white,
              closedSuffixIcon: Icon(
                Icons.keyboard_arrow_down_rounded,
                color: vm.isDark() ? const Color(0xffFACC1D) : Colors.black,
              ),
              expandedSuffixIcon: Icon(
                Icons.keyboard_arrow_up_rounded,
                color: vm.isDark() ? const Color(0xffFACC1D) : Colors.black,
              ),
            ),
            onChanged: (value) {
              if (value == "Dark") {
                vm.changeTheme(ThemeMode.dark);
              } else if (value == "Light") {
                vm.changeTheme(ThemeMode.light);
              }
            },
          )
        ],
      ),
    );
  }
}
