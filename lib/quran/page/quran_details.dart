import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_app_c10_sun_4pm/config/settings_provider.dart';
import 'package:islam_app_c10_sun_4pm/quran/page/quran_view.dart';
import 'package:provider/provider.dart';

class QuranDetailsView extends StatefulWidget {
  static const String routeName = "quran details";

  const QuranDetailsView({super.key});

  @override
  State<QuranDetailsView> createState() => _QuranDetailsViewState();
}

class _QuranDetailsViewState extends State<QuranDetailsView> {
  List<String> versesList = [];

  @override
  Widget build(BuildContext context) {
    var args = ModalRoute.of(context)?.settings.arguments as SuraDetails;
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var vm = Provider.of<SettingsProvider>(context);
    if (versesList.isEmpty) loadData(args.suraNumber);
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
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "سورة ${args.suraName}",
                    style: theme.textTheme.bodyMedium!.copyWith(
                      color:
                          vm.isDark() ? const Color(0xffFACC1D) : Colors.black,
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Icon(
                    Icons.play_circle_filled_rounded,
                    size: 28,
                    color: vm.isDark() ? const Color(0xffFACC1D) : Colors.black,
                  )
                ],
              ),
              const Divider(
                thickness: 2,
              ),
              if (versesList.isEmpty)
                Center(
                  child: CircularProgressIndicator(
                    color: theme.primaryColor,
                  ),
                ),
              if (versesList.isNotEmpty)
                Expanded(
                  child: ListView.builder(
                    itemBuilder: (context, index) => Text(
                      "${{index + 1}} ${versesList[index]}",
                      textAlign: TextAlign.center,
                      style: theme.textTheme.bodyMedium!.copyWith(
                          color: vm.isDark()
                              ? const Color(0xffFACC1D)
                              : Colors.black,
                          height: 1.8),
                    ),
                    itemCount: versesList.length,
                  ),
                )
            ],
          ),
        ),
      ),
    );
  }

  Future<void> loadData(String suraNumber) async {
    String suraContent =
        await rootBundle.loadString("assets/files/$suraNumber.txt");
    versesList = suraContent.split("\n");
    setState(() {});
  }
}
