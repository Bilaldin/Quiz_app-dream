import 'package:flutter/material.dart';

class CostomPopUpWidget extends StatelessWidget {
  final void Function()? onTap;
  const CostomPopUpWidget({Key? key, this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      // () {
      //   questionsLocalData.kairadanBashta();
      //   questionsLocalData.suroonuAlipKel();
      //   isFinished = false;
      //   icons = [];
      //   setState(() {});
      // },
      child: Container(
        color: Colors.teal,
        height: 100,
        width: 300,
        child: const Center(
          child: Text(
            'Kairadan Bashta',
            style: TextStyle(fontSize: 30),
          ),
        ),
      ),
    );
  }
}
