import 'package:get/get.dart';

class CalculateController extends GetxController {
  // Define the RxStrings for the input fields

  List<RxString> input = List.generate(10, (_) => ''.obs);
  List<RxString> inputSums = List.generate(5, (_) => ''.obs);

  int parseInput(RxString input) {
    if (input.value == '') {
      return 0;
    }
    return int.parse(input.value);
  }

  void calculateInputSums() {
    inputSums[0].value =
        (parseInput(input[0]) + parseInput(input[5])).toString();
    inputSums[1].value =
        (parseInput(input[1]) + parseInput(input[6])).toString();
    inputSums[2].value =
        (parseInput(input[2]) + parseInput(input[7])).toString();
    inputSums[3].value =
        (parseInput(input[3]) + parseInput(input[8])).toString();
    inputSums[4].value =
        (parseInput(input[4]) + parseInput(input[9])).toString();
  }
}
