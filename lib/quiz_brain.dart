import 'question.dart';

class QuizBrain {
  int _questionNumber = 0;

  List<Question> _questionBank = [
    Question('Q1.Electrons are larger than molecules.', false),
    Question('Q2.The Atlantic Ocean is the biggest ocean on Earth.', true),
    Question(
        'Q3.The chemical make up food often changes when you cook it.', true),
    Question('Q4.The human body has four lungs.', false),
    Question(
        'Q5.Atoms are most stable when their outer shells are full.', true),
    Question('Q6.Filtration separates mixtures based upon their particle size.',
        true),
    Question('Q7.Venus is the closest planet to the Sun.', false),
    Question('Q8.Conductors have low resistance.', true),
    Question('Q9.Molecules can have atoms from more than one chemical element.',
        true),
    Question('Q10.Water is an example of a chemical element.', false),
    Question('Q11.The study of plants is known as botany.', true),
    Question(
        ' Q12.Mount Kilimanjaro is the tallest mountain in the world.', false),
    Question('Q13.Floatation separates mixtures based on density.', true),
    Question('Q14.Sharks are mammals.', false),
    Question('Q15.Herbivores eat meat.', false),
    Question('Q16.Atomic bombs work by atomic fission.', true),
    Question('Q17.Molecules are chemically bonded.', true),
    Question(' Q18.Spiders have six legs.', false),
    Question('Q19.Kelvin is a measure of temperature.', true),
    Question(
        'Q20.The human skeleton is made up of less than 100 bones.', false),
  ];

  void nextQuestion() {
    if (_questionNumber < _questionBank.length - 1) {
      _questionNumber++;
    }
  }

  String getQuestionText() {
    return _questionBank[_questionNumber].questionText;
  }

  bool getCorrectAnswer() {
    return _questionBank[_questionNumber].questionAnswer;
  }

  bool isFinished() {
    if (_questionNumber >= _questionBank.length - 1) {
      print('Now returning true');
      return true;
    } else {
      return false;
    }
  }

  void reset() {
    _questionNumber = 0;
  }
}
