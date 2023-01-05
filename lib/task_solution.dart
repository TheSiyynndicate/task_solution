///TaskSolution class will be used
///to implement all functions for the app
class TaskSolution {
  ///Checks if the string passed is
  ///up to six characters
  bool isUpToSixCharacters(String text) {
    if (text.length >= 6) {
      return true;
    }
    return false;
  }

  ///Checks if the string passed is
  ///up to less than 15 characters
  bool isLessThanFifteenCharacters(String text) {
    if (text.length <= 15) {
      return true;
    }
    return false;
  }

  ///Checks if the argument passed has
  ///at least two digits
  bool hasAtLeastTwoDigits(String text) {
    ///Variable to store [digitCount]
    var digitCount = 0;

    ///Convert the string into an array
    final textArray = text.split('');

    ///Count the number of digits
    for (final i in textArray) {
      if (num.tryParse(i) != null) {
        digitCount++;
      }
    }

    if (digitCount >= 2) {
      return true;
    }

    return false;
  }

  ///Checks if the argument passed has
  ///completely non adjacent
  bool isNonAdjacent(String text) {
    ///Convert the string into an array
    final textArray = text.split('');

    ///Count the number of digits
    for (var i = 0; i < textArray.length; i++) {
      if ((i + 1) != textArray.length) {
        final isNum = num.tryParse(textArray.elementAt(i)) != null;
        final isNextElementNum =
            num.tryParse(textArray.elementAt(i + 1)) != null;

        if (isNum == isNextElementNum) {
          return false;
        }
      }
    }

    return true;
  }
///
  bool containsOneLowerCaseCharacter(String text){}
}
