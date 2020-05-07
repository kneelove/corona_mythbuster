import 'QuestionBank.dart';

class CoreQuiz {
  bool checkquiz(bool ans1, bool ans2) {
    if (ans1 == ans2) {
      return true;
    } else {
      return false;
    }
  }

  List<QuestionBank> ab = [
    QuestionBank(q: "A vaccine to cure COVID-19 is available.", a: false),
    QuestionBank(
        q: "Ordering or buying products shipped from overseas will make a person sick.",
        a: false),
    QuestionBank(
        q: "Can I disinfect my mask by putting it in the microwave?", a: false),
    QuestionBank(q: "Did coronavirus killed more people than flu?", a: true),
    QuestionBank(q: "Corona virus is a pandemic.", a: true),
    QuestionBank(q: "Mosquitoes dont transmit corona virus", a: true),
    QuestionBank(
        q: "Children below age 10 are immune from the virus", a: false),
    QuestionBank(
        q: "Can I disinfect my mask by putting it in the microwave?", a: false),
    QuestionBank(
        q: "Ingesting disinfectant will cleanse the body from the virus.",
        a: false),
    QuestionBank(q: "Corona virus originated from Wuhan, China.", a: true)
  ];
}
