import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:quiz_app/widgets/costom_pop_up_widget.dart';

import '../data/local_data/question_local_data.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool? isFinished;
  List<Icon> icons = [];
  String? suroolor = questionsLocalData.suroonuAlipKel();
  @override
  void initState() {
    // suroolor = questionsLocalData.suroonuAlipKel();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        title: const Text('Тапшырма 07'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            questionsLocalData.suroonuAlipKel().toString(),
            // QuestionsData().aty.toString(),
            style: const TextStyle(color: Colors.white, fontSize: 40),
          ),
          isFinished == true
              ? CostomPopUpWidget(
                  onTap: () {
                    questionsLocalData.kairadanBashta();
                    questionsLocalData.suroonuAlipKel();
                    isFinished = false;
                    icons = [];
                    setState(() {});
                  },
                )
              : InkWell(
                  onTap: () {
                    koldonuuchunJoobu(true);

                    log('Tuura basilip atat');
                  },
                  child: Container(
                    width: 400,
                    color: const Color(0xff4CB050),
                    child: const Text(
                      'Туура',
                      style: TextStyle(color: Colors.white, fontSize: 40),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
          const SizedBox(
            height: 20,
          ),
          InkWell(
            onTap: () {
              koldonuuchunJoobu(false);
            },
            child: Container(
              width: 400,
              color: Colors.red,
              child: const Text(
                'Ката',
                style: TextStyle(color: Colors.white, fontSize: 40),
                textAlign: TextAlign.center,
              ),
            ),
          ),
          Row(
            children: icons,
          ),
        ],
      ),
    );
  }

  void koldonuuchunJoobu(bool userdinJoobu) {
    if (userdinJoobu == QuestionsLocalData().jooptuAlipKel()) {
      icons.add(
        const Icon(
          Icons.check,
          color: Colors.green,
          size: 50,
        ),
      );
    } else {
      icons.add(
        const Icon(
          FontAwesomeIcons.xmark,
          color: Colors.red,
          size: 50,
        ),
      );
    }
    questionsLocalData.suroonuOtkoz();
    if (questionsLocalData.suroonuAlipKel() == '') {
      isFinished = true;
    }

    setState(() {});
  }
}
