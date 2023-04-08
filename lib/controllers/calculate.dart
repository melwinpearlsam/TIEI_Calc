import 'package:calculator/constants/enums.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CalculateController extends GetxController {
  RxString engineVariant = EngineVariant.OnePointFive.getVariant.obs;
  List<Rx<TextEditingController>> input =
      List.generate(10, (_) => TextEditingController().obs);
  List<Rx<int>> inputSums = List.generate(5, (_) => 0.obs);
  List<Rx<int>> metalSelect = List.generate(5, (index) => 0.obs);

  void changeVariant(String variant) {
    engineVariant(variant);
  }

  int parseInput(String input) {
    if (input == '') {
      return 0;
    }
    return int.parse(input);
  }

  void calculateInputSums() {
    if (input[0].value.text == '' || input[5].value.text == '') {
      inputSums[0].value = -1;
    } else {
      inputSums[0].value =
        (parseInput(input[0].value.text) + parseInput(input[5].value.text));
    }
    if (input[1].value.text == '' || input[6].value.text == '') {
      inputSums[1].value = -1;
    } else {
     inputSums[1].value =
        (parseInput(input[1].value.text) + parseInput(input[6].value.text));
    }
    if (input[2].value.text == '' || input[7].value.text == '') {
      inputSums[2].value = -1;
    } else {
      inputSums[2].value =
        (parseInput(input[2].value.text) + parseInput(input[7].value.text));
    }
    if (input[3].value.text == '' || input[8].value.text == '') {
      inputSums[3].value = -1;
    } else {
       inputSums[3].value =
        (parseInput(input[3].value.text) + parseInput(input[8].value.text));
    }
    if (input[4].value.text == '' || input[9].value.text == '') {
      inputSums[4].value = -1;
    } else {
       inputSums[4].value =
        (parseInput(input[4].value.text) + parseInput(input[9].value.text));
    }
   
   
   
   
  }

 

  void calculateMetalSelect(int index) {
    switch (index) {
      case 0:
      if(inputSums[0].value == -1) {
        return;
      } else {
        if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
          if (inputSums[0] >= 0 && inputSums[0] <= 2) {
            metalSelect[0](3);
          } else if (inputSums[0] >= 3 && inputSums[0] <= 5) {
            metalSelect[0](4);
          } else if (inputSums[0] >= 6 && inputSums[0] <= 8) {
            metalSelect[0](5);
          } else if (inputSums[0] >= 9 && inputSums[0] <= 11) {
            metalSelect[0](6);
          }
        } else if (engineVariant.value == EngineVariant.Two.getVariant) {
          if (inputSums[0] >= 0 && inputSums[0] <= 2) {
            metalSelect[0](3);
          } else if (inputSums[0] >= 3 && inputSums[0] <= 5) {
            metalSelect[0](4);
          } else if (inputSums[0] >= 6 && inputSums[0] <= 8) {
            metalSelect[0](5);
          } else if (inputSums[0] >= 9 && inputSums[0] <= 11) {
            metalSelect[0](6);
          }
        }
      }
        

        break;
      case 1:
        if(inputSums[1].value == -1) {
          return;
        } else {
          if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
          if (inputSums[1] >= 0 && inputSums[1] <= 2) {
            metalSelect[1](1);
          } else if (inputSums[1] >= 3 && inputSums[1] <= 5) {
            metalSelect[1](2);
          } else if (inputSums[1] >= 6 && inputSums[1] <= 8) {
            metalSelect[1](3);
          } else if (inputSums[1] >= 9 && inputSums[1] <= 11) {
            metalSelect[1](4);
          }
        } else if (engineVariant.value == EngineVariant.Two.getVariant) {
          if (inputSums[1] >= 0 && inputSums[1] <= 2) {
            metalSelect[1](3);
          } else if (inputSums[1] >= 3 && inputSums[1] <= 5) {
            metalSelect[1](4);
          } else if (inputSums[1] >= 6 && inputSums[1] <= 8) {
            metalSelect[1](5);
          } else if (inputSums[1] >= 9 && inputSums[1] <= 11) {
            metalSelect[1](6);
          }
        }
        }
        break;
      case 2:
        if(inputSums[2].value == -1) {
          return;
        } else {
          if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
          if (inputSums[2] >= 0 && inputSums[2] <= 2) {
            metalSelect[2](1);
          } else if (inputSums[2] >= 3 && inputSums[2] <= 5) {
            metalSelect[2](2);
          } else if (inputSums[2] >= 6 && inputSums[2] <= 8) {
            metalSelect[2](3);
          } else if (inputSums[2] >= 9 && inputSums[2] <= 11) {
            metalSelect[2](4);
          }
        } else if (engineVariant.value == EngineVariant.Two.getVariant) {
          if (inputSums[2] >= 0 && inputSums[2] <= 2) {
            metalSelect[2](1);
          } else if (inputSums[2] >= 3 && inputSums[2] <= 5) {
            metalSelect[2](2);
          } else if (inputSums[2] >= 6 && inputSums[2] <= 8) {
            metalSelect[2](3);
          } else if (inputSums[2] >= 9 && inputSums[2] <= 11) {
            metalSelect[2](4);
          }
        }
        }
        break;
      case 3:
       if(inputSums[3].value == -1) {
        return;
       } else {
         if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
          if (inputSums[3] >= 0 && inputSums[3] <= 2) {
            metalSelect[3](3);
          } else if (inputSums[3] >= 3 && inputSums[3] <= 5) {
            metalSelect[3](4);
          } else if (inputSums[3] >= 6 && inputSums[3] <= 8) {
            metalSelect[3](5);
          } else if (inputSums[3] >= 9 && inputSums[3] <= 11) {
            metalSelect[3](6);
          }
        } else if (engineVariant.value == EngineVariant.Two.getVariant) {
          if (inputSums[3] >= 0 && inputSums[3] <= 2) {
            metalSelect[3](3);
          } else if (inputSums[3] >= 3 && inputSums[3] <= 5) {
            metalSelect[3](4);
          } else if (inputSums[3] >= 6 && inputSums[3] <= 8) {
            metalSelect[3](5);
          } else if (inputSums[3] >= 9 && inputSums[3] <= 11) {
            metalSelect[3](6);
          }
        }
       }
        break;
      case 4:
        if(inputSums[4].value == -1) {
          return;
        } else {
            if (engineVariant.value == EngineVariant.Two.getVariant) {
          if (inputSums[4] >= 0 && inputSums[4] <= 2) {
            metalSelect[4](3);
          } else if (inputSums[4] >= 3 && inputSums[4] <= 5) {
            metalSelect[4](4);
          } else if (inputSums[4] >= 6 && inputSums[4] <= 8) {
            metalSelect[4](5);
          } else if (inputSums[4] >= 9 && inputSums[4] <= 11) {
            metalSelect[4](6);
          }
        }
        }

        break;
      default:
    }
  }

  void resetFields() {
    for (var i in input) {
      i.value.clear();
    }
    for (var sum in inputSums) {
      sum(0);
    }
    for (var result in metalSelect) {
      result(0);
    }
  }

  @override
  void onClose() {
    super.onClose();
    for (var i in input) {
      i.value.dispose();
    }
  }
}
