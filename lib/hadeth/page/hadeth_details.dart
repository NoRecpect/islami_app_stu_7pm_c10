import 'package:flutter/material.dart';
import 'package:islam_app_c10_sun_4pm/config/settings_provider.dart';
import 'package:islam_app_c10_sun_4pm/hadeth/page/hadeth_view.dart';
import 'package:provider/provider.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routeName = "Hadeth Details View";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(vm.getBackground()),
          fit: BoxFit.cover,
        ),
      ),
      child: Scaffold(
        appBar: AppBar(
          title: const Text("إسلامي"),
        ),
        body: Container(
          margin:
              const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 80),
          padding:
              const EdgeInsets.only(top: 15, left: 20, right: 20, bottom: 15),
          width: mediaQuery.width,
          height: mediaQuery.height,
          decoration: BoxDecoration(
            color: vm.isDark()
                ? const Color(0xff141A2E).withOpacity(0.8)
                : const Color(0XFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: theme.textTheme.bodyMedium!.copyWith(
                  color: vm.isDark() ? const Color(0xffFACC1D) : Colors.black,
                ),
              ),
              const SizedBox(
                width: 20,
              ),
              const Divider(
                thickness: 2,
              ),
              Expanded(
                child: ListView(children: [
                  Text(
                    args.content,
                    style: theme.textTheme.bodyMedium!.copyWith(
                        color: vm.isDark()
                            ? const Color(0xffFACC1D)
                            : Colors.black,
                        height: 1.8),
                    textAlign: TextAlign.center,
                  ),
                ]),
              )
            ],
          ),
        ),
      ),
    );
  }
}
