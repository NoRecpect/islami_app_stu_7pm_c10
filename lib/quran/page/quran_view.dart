import 'package:flutter/material.dart';
import 'package:islam_app_c10_sun_4pm/quran/page/quran_details.dart';
import 'package:islam_app_c10_sun_4pm/quran/widgets/sura_title_widget.dart';

class QuranView extends StatelessWidget {
  final List<String> suraNames = [
    "الفاتحه",
    "البقرة",
    "آل عمران",
    "النساء",
    "المائدة",
    "الأنعام",
    "الأعراف",
    "الأنفال",
    "التوبة",
    "يونس",
    "هود",
    "يوسف",
    "الرعد",
    "إبراهيم",
    "الحجر",
    "النحل",
    "الإسراء",
    "الكهف",
    "مريم",
    "طه",
    "الأنبياء",
    "الحج",
    "المؤمنون",
    "النّور",
    "الفرقان",
    "الشعراء",
    "النّمل",
    "القصص",
    "العنكبوت",
    "الرّوم",
    "لقمان",
    "السجدة",
    "الأحزاب",
    "سبأ",
    "فاطر",
    "يس",
    "الصافات",
    "ص",
    "الزمر",
    "غافر",
    "فصّلت",
    "الشورى",
    "الزخرف",
    "الدّخان",
    "الجاثية",
    "الأحقاف",
    "محمد",
    "الفتح",
    "الحجرات",
    "ق",
    "الذاريات",
    "الطور",
    "النجم",
    "القمر",
    "الرحمن",
    "الواقعة",
    "الحديد",
    "المجادلة",
    "الحشر",
    "الممتحنة",
    "الصف",
    "الجمعة",
    "المنافقون",
    "التغابن",
    "الطلاق",
    "التحريم",
    "الملك",
    "القلم",
    "الحاقة",
    "المعارج",
    "نوح",
    "الجن",
    "المزّمّل",
    "المدّثر",
    "القيامة",
    "الإنسان",
    "المرسلات",
    "النبأ",
    "النازعات",
    "عبس",
    "التكوير",
    "الإنفطار",
    "المطفّفين",
    "الإنشقاق",
    "البروج",
    "الطارق",
    "الأعلى",
    "الغاشية",
    "الفجر",
    "البلد",
    "الشمس",
    "الليل",
    "الضحى",
    "الشرح",
    "التين",
    "العلق",
    "القدر",
    "البينة",
    "الزلزلة",
    "العاديات",
    "القارعة",
    "التكاثر",
    "العصر",
    "الهمزة",
    "الفيل",
    "قريش",
    "الماعون",
    "الكوثر",
    "الكافرون",
    "النصر",
    "المسد",
    "الإخلاص",
    "الفلق",
    "الناس"
  ];

  QuranView({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;
    var theme = Theme.of(context);
    return Column(
      children: [
        Image.asset(
          "assets/images/quran_header.png",
          height: mediaQuery.height * 0.2,
        ),
        Divider(
          thickness: 3,
          color: theme.primaryColor,
        ),
        Row(
          children: [
            const Expanded(
              child: Text(
                "رقم السوره",
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: "El Messeri",
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                ),
              ),
            ),
            Container(
              color: theme.primaryColor,
              width: 2,
              height: 60,
            ),
            const Expanded(
              child: Text(
                textAlign: TextAlign.center,
                "اسم السوره",
                style: TextStyle(
                  fontFamily: "El Messeri",
                  fontWeight: FontWeight.w500,
                  fontSize: 40,
                ),
              ),
            ),
          ],
        ),
        Divider(
          thickness: 3,
          color: theme.primaryColor,
        ),
        Expanded(
          child: ListView.builder(
            itemBuilder: (context, index) => GestureDetector(
              onTap: () {
                Navigator.pushNamed(
                  context,
                  QuranDetailsView.routeName,
                  arguments: SuraDetails(
                    suraNames[index],
                    (index + 1).toString(),
                  ),
                );
              },
              child: SuraTitleWidget(
                suraName: suraNames[index],
                suraNumber: (index + 1).toString(),
              ),
            ),
            itemCount: suraNames.length,
          ),
        )
      ],
    );
  }
}

class SuraDetails {
  final String suraName;
  final String suraNumber;

  SuraDetails(this.suraName, this.suraNumber);
}
