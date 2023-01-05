import 'package:task_solution/task_solution.dart';
import 'package:test/test.dart';

void main() {
  final taskSolution = TaskSolution();
  group('Checks if the TaskSolution class functions are working properly', () {
    test('Checks if the string passed is up to six characters', () {
      expect(taskSolution.isUpToSixCharacters('text'), false);
      expect(taskSolution.isUpToSixCharacters('123456'), true);
    });
    test('Checks if the string passed is less than fifteen characters', () {
      expect(
        taskSolution.isLessThanFifteenCharacters('1234567891011125'),
        false,
      );
      expect(taskSolution.isLessThanFifteenCharacters('123456'), true);
    });
    test('Checks if the string passed has at least two digits', () {
      expect(
        taskSolution.hasAtLeastTwoDigits('text'),
        false,
      );
      expect(taskSolution.hasAtLeastTwoDigits('text44'), true);
    });
    test('Checks if the string passed is not adjacent', () {
      expect(
        taskSolution.isNonAdjacent('text'),
        false,
      );
      expect(taskSolution.isNonAdjacent('t1e1x1t'), true);
    });
    test('Checks if the string passed has one lower case character', () {
      expect(
        taskSolution.containsOneLowerCaseCharacter('ADD'),
        false,
      );
      expect(taskSolution.containsOneLowerCaseCharacter('t1e1x1t'), true);
    });
    test('Checks if the string passed has one upper case character', () {
      expect(
        taskSolution.containsOneUpperCaseCharacter('add'),
        false,
      );
      expect(taskSolution.containsOneUpperCaseCharacter('adD'), true);
    });
  });
}
