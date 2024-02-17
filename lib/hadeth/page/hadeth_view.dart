import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:islam_app_c10_sun_4pm/hadeth/page/hadeth_details.dart';

class HadethView extends StatefulWidget {
  const HadethView({super.key});

  @override
  State<HadethView> createState() => _HadethViewState();
}

class _HadethViewState extends State<HadethView> {
  List<HadethData> allHadethContent = [];

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    // call function of load data
    //هروح انده علي load dataلو حدسث فاضي

    if (allHadethContent.isEmpty) loadData();
    return Column(
      children: [
        SizedBox(
          height: mediaQuery.height * 0.05,
        ),
        Image.asset(
          "assets/images/hadeth_header.png",
          height: mediaQuery.height * 0.2,
        ),
        const Divider(
          thickness: 1.2,
        ),
        const Text(
          "الأحاديث",
          style: TextStyle(
            fontSize: 25,
            fontFamily: "El Messiri",
            fontWeight: FontWeight.w600,
          ),
        ),
        const Divider(
          thickness: 1.2,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  HadethDetailsView.routeName,
                  arguments: allHadethContent[index],
                );
              },
              child: Text(
                allHadethContent[index].title,
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  fontFamily: "El Messiri",
                  fontSize: 22,
                  height: 1.8,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            itemCount: allHadethContent.length,
          ),
        ),
      ],
    );
  }

// create function of loadData
  Future<void> loadData() async {
    String Content = await rootBundle.loadString("assets/files/ahadeth.txt");
    List<String> allHadethList = Content.split("#");
    for (int i = 0; i < allHadethList.length; i++) {
      String singleHadeth = allHadethList[i].trim();
      int titleIndex = singleHadeth.indexOf("\n");
      String title = singleHadeth.substring(0, titleIndex);
      String content = singleHadeth.substring(titleIndex + 1);
      HadethData hadethData = HadethData(title, content);
      allHadethContent.add(hadethData);
      setState(() {});
    }
  }
}

class HadethData {
  final String title;
  final String content;

  HadethData(this.title, this.content);
}
