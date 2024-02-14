import 'package:flutter/material.dart';

class SuraTitleWidget extends StatelessWidget {
  final String suraName;
  final String suraNumber;

  const SuraTitleWidget(
      {super.key, required this.suraName, required this.suraNumber});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Row(
      children: [
        Expanded(
          child: Text(
            suraNumber,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontFamily: "El Messeri",
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
        ),
        Container(
          color: theme.primaryColor,
          width: 2,
          height: 46,
        ),
        Expanded(
          child: Text(
            textAlign: TextAlign.center,
            suraName,
            style: const TextStyle(
              fontFamily: "El Messeri",
              fontWeight: FontWeight.w500,
              fontSize: 30,
            ),
          ),
        ),
      ],
    );
  }
}
