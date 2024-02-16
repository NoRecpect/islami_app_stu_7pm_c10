import 'package:flutter/material.dart';
import 'package:islam_app_c10_sun_4pm/hadeth/page/hadeth_view.dart';

class HadethDetailsView extends StatelessWidget {
  static const String routeName = "Hadeth Details View";

  const HadethDetailsView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    var args = ModalRoute.of(context)?.settings.arguments as HadethData;
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          image: AssetImage("assets/images/main_background.png"),
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
            color: const Color(0XFFF8F8F8).withOpacity(0.8),
            borderRadius: BorderRadius.circular(25),
          ),
          child: Column(
            children: [
              Text(
                args.title,
                style: const TextStyle(
                    fontSize: 30,
                    fontFamily: "El Messiri",
                    fontWeight: FontWeight.w500),
              ),
              const SizedBox(
                width: 20,
              ),
              Divider(
                color: theme.primaryColor,
                thickness: 2,
              ),
              Expanded(
                child: ListView(children: [
                  Text(
                    args.content,
                    style: const TextStyle(
                      fontSize: 25,
                      fontFamily: "El Messiri",
                      fontWeight: FontWeight.w500,
                    ),
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
