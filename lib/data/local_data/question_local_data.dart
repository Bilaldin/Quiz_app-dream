import '../../models/question_model.dart';

class QuestionsLocalData {
  int index = 0;
  List<QuestionModel> questionAnswers = [
    QuestionModel(questions: 'Kyrgyzstanda 5 oblast bar1', answers: false),
    QuestionModel(questions: 'Osh Bishkeke karaiby?2', answers: false),
    QuestionModel(questions: 'Abdulkadir 16 jashtaby?3', answers: true),
    QuestionModel(questions: 'Oshto arka barby?4', answers: true),
  ];

  suroonuAlipKel() {
    if (index < questionAnswers.length) {
      return questionAnswers[index].questions;
    }
    return '';
  }

  bool? jooptuAlipKel() {
    // if(inde)
    return questionAnswers[index].answers;
  }

  void suroonuOtkoz() {
    index++;
  }

  void kairadanBashta() {
    // suroonuAlipKel();
    index = 0;
  }
}

// final QuestionsLocalData questionsLocalData = QuestionsLocalData();
// _callPopUp(BuildContext context) {
//   return AlertDialog(
//     title: const Text('Popup example'),
//     content: Column(
//       mainAxisSize: MainAxisSize.min,
//       crossAxisAlignment: CrossAxisAlignment.start,
//       children: const <Widget>[
//         Text("Hello"),
//       ],
//     ),
//     actions: <Widget>[
//       TextButton(
//         onPressed: () {
//           SchedulerBinding.instance.addPostFrameCallback((_) {
//             Navigator.of(context)
//                 .pop(MaterialPageRoute(builder: (context) => const MyWidget()));
//           });
//         },
        // style: TextButton.styleFrom(
        //   Theme.of(context).primaryColor,

        // ),
//         child: const Text('Close'),
//       ),
//     ],
//   );
// }
