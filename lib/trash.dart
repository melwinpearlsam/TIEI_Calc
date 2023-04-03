// Sum 


 // const SizedBox(
                //   height: 32,
                // ),

                // Row(
                //   children: [
                //     Expanded(
                //       child: _buildSquareTextConatiner(controller.inputSums[0]),
                //     ),
                //     const SizedBox(width: 16.0),
                //     Expanded(
                //       child: _buildSquareTextConatiner(controller.inputSums[1]),
                //     ),
                //     const SizedBox(width: 16.0),
                //     Expanded(
                //       child: _buildSquareTextConatiner(controller.inputSums[2]),
                //     ),
                //     const SizedBox(width: 16.0),
                //     Expanded(
                //       child: _buildSquareTextConatiner(controller.inputSums[3]),
                //     ),
                //     const SizedBox(width: 16.0),
                //     Builder(builder: (context) {
                //       if (controller.engineVariant.value ==
                //           EngineVariant.OnePointFive.getVariant) {
                //         return const SizedBox();
                //       }
                //       return Expanded(
                //         child:
                //             _buildSquareTextConatiner(controller.inputSums[4]),
                //       );
                //     }),
                //   ],
                // ),



                // void calculateMetalSelect(int index) {
  //   switch (index) {
  //     case 0:
  //       if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
  //         if (inputSums[0] >= 0 && inputSums[0] <= 2) {
  //           metalSelect[0](3);
  //         } else if (inputSums[0] >= 3 && inputSums[0] <= 5) {
  //           metalSelect[0](4);
  //         } else if (inputSums[0] >= 6 && inputSums[0] <= 8) {
  //           metalSelect[0](5);
  //         } else if (inputSums[0] >= 9 && inputSums[0] <= 11) {
  //           metalSelect[0](6);
  //         }
  //       } else if (engineVariant.value == EngineVariant.Two.getVariant) {
  //         if (inputSums[0] >= 0 && inputSums[0] <= 2) {
  //           metalSelect[0](3);
  //         } else if (inputSums[0] >= 3 && inputSums[0] <= 5) {
  //           metalSelect[0](4);
  //         } else if (inputSums[0] >= 6 && inputSums[0] <= 8) {
  //           metalSelect[0](5);
  //         } else if (inputSums[0] >= 9 && inputSums[0] <= 11) {
  //           metalSelect[0](6);
  //         }
  //       }

  //       break;
  //     case 1:
  //       if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
  //         if (inputSums[1] >= 0 && inputSums[1] <= 2) {
  //           metalSelect[1](1);
  //         } else if (inputSums[1] >= 3 && inputSums[1] <= 5) {
  //           metalSelect[1](2);
  //         } else if (inputSums[1] >= 6 && inputSums[1] <= 8) {
  //           metalSelect[1](3);
  //         } else if (inputSums[1] >= 9 && inputSums[1] <= 11) {
  //           metalSelect[1](4);
  //         }
  //       } else if (engineVariant.value == EngineVariant.Two.getVariant) {
  //         if (inputSums[1] >= 0 && inputSums[1] <= 2) {
  //           metalSelect[1](3);
  //         } else if (inputSums[1] >= 3 && inputSums[1] <= 5) {
  //           metalSelect[1](4);
  //         } else if (inputSums[1] >= 6 && inputSums[1] <= 8) {
  //           metalSelect[1](5);
  //         } else if (inputSums[1] >= 9 && inputSums[1] <= 11) {
  //           metalSelect[1](6);
  //         }
  //       }
  //       break;
  //     case 2:
  //       if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
  //         if (inputSums[2] >= 0 && inputSums[2] <= 2) {
  //           metalSelect[2](1);
  //         } else if (inputSums[2] >= 3 && inputSums[2] <= 5) {
  //           metalSelect[2](2);
  //         } else if (inputSums[2] >= 6 && inputSums[2] <= 8) {
  //           metalSelect[2](3);
  //         } else if (inputSums[2] >= 9 && inputSums[2] <= 11) {
  //           metalSelect[2](4);
  //         }
  //       } else if (engineVariant.value == EngineVariant.Two.getVariant) {
  //         if (inputSums[2] >= 0 && inputSums[2] <= 2) {
  //           metalSelect[2](1);
  //         } else if (inputSums[2] >= 3 && inputSums[2] <= 5) {
  //           metalSelect[2](2);
  //         } else if (inputSums[2] >= 6 && inputSums[2] <= 8) {
  //           metalSelect[2](3);
  //         } else if (inputSums[2] >= 9 && inputSums[2] <= 11) {
  //           metalSelect[2](4);
  //         }
  //       }
  //       break;
  //     case 3:
  //       if (engineVariant.value == EngineVariant.OnePointFive.getVariant) {
  //         if (inputSums[3] >= 0 && inputSums[3] <= 2) {
  //           metalSelect[3](3);
  //         } else if (inputSums[3] >= 3 && inputSums[3] <= 5) {
  //           metalSelect[3](4);
  //         } else if (inputSums[3] >= 6 && inputSums[3] <= 8) {
  //           metalSelect[3](5);
  //         } else if (inputSums[3] >= 9 && inputSums[3] <= 11) {
  //           metalSelect[3](6);
  //         }
  //       } else if (engineVariant.value == EngineVariant.Two.getVariant) {
  //         if (inputSums[3] >= 0 && inputSums[3] <= 2) {
  //           metalSelect[3](3);
  //         } else if (inputSums[3] >= 3 && inputSums[3] <= 5) {
  //           metalSelect[3](4);
  //         } else if (inputSums[3] >= 6 && inputSums[3] <= 8) {
  //           metalSelect[3](5);
  //         } else if (inputSums[3] >= 9 && inputSums[3] <= 11) {
  //           metalSelect[3](6);
  //         }
  //       }
  //       break;
  //     case 4:
  //       if (engineVariant.value == EngineVariant.Two.getVariant) {
  //         if (inputSums[4] >= 0 && inputSums[4] <= 2) {
  //           metalSelect[4](3);
  //         } else if (inputSums[4] >= 3 && inputSums[4] <= 5) {
  //           metalSelect[4](4);
  //         } else if (inputSums[4] >= 6 && inputSums[4] <= 8) {
  //           metalSelect[4](5);
  //         } else if (inputSums[4] >= 9 && inputSums[4] <= 11) {
  //           metalSelect[4](6);
  //         }
  //       }

  //       break;
  //     default:
  //   }
  // }