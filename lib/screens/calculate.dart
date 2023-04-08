import 'package:calculator/components/variant_button.dart';
import 'package:calculator/constants/colors.dart';
import 'package:calculator/constants/enums.dart';
import 'package:calculator/constants/sizes.dart';
import 'package:calculator/controllers/calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CalculateWidget extends StatelessWidget {
  CalculateWidget({super.key});

  final controller = Get.put(CalculateController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: SingleChildScrollView(
            child: Form(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const SizedBox(
                    height: 4,
                  ),
                  SizedBox(
                    width: systemWidth,
                    child: Obx(
                      () => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          VariantButton(
                              engineVariant: controller.engineVariant.value,
                              onPressed: () {
                                controller.changeVariant(
                                    EngineVariant.OnePointFive.getVariant);
                                controller.resetFields();
                              },
                              label: EngineVariant.OnePointFive.getVariant),
                          VariantButton(
                              engineVariant: controller.engineVariant.value,
                              onPressed: () {
                                controller.changeVariant(
                                    EngineVariant.Two.getVariant);
                                controller.resetFields();
                              },
                              label: EngineVariant.Two.getVariant),
                          VariantButton(
                              label: 'Reset',
                              onPressed: () {
                                controller.resetFields();
                              })
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Obx(
                    () => Row(
                      children: List.generate(
                        controller.engineVariant.value ==
                                EngineVariant.OnePointFive.getVariant
                            ? 4
                            : 5,
                        (index) => Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'J - ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                          .expand(
                            (widget) => [
                              widget,
                              const SizedBox(width: 16.0),
                            ],
                          )
                          .toList(),
                    ),
                  ),
                  Row(
                    children: [
                      const Text(
                        'Crank',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Image.asset(
                        'images/crank.png',
                        height: 70,
                      )
                    ],
                  ),
                  Obx(
                    () => Row(
                        children: List.generate(
                                controller.engineVariant.value ==
                                        EngineVariant.OnePointFive.getVariant
                                    ? 4
                                    : 5,
                                (index) => Expanded(
                                      child: _buildSquareTextField(
                                          textcontroller:
                                              controller.input[index].value,
                                          index: index,
                                          line: EngineLine.Crank.getLine),
                                    ))
                            .expand((widget) =>
                                [widget, const SizedBox(width: 16.0)])
                            .toList()),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Block',
                        style: TextStyle(
                            fontSize: 32, fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 28,
                      ),
                      Image.asset(
                        'images/block.png',
                        height: 70,
                      )
                    ],
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Obx(
                    () => Row(
                        children: List.generate(
                                controller.engineVariant.value ==
                                        EngineVariant.OnePointFive.getVariant
                                    ? 4
                                    : 5,
                                (index) => Expanded(
                                      child: _buildSquareTextField(
                                          textcontroller:
                                              controller.input[index + 5].value,
                                          index: index,
                                          line: EngineLine.Block.getLine),
                                    ))
                            .expand((widget) =>
                                [widget, const SizedBox(width: 16.0)])
                            .toList()),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  const Text(
                    'Bearing Metal - Calculated Result',
                    style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: _buildSquareTextConatiner(
                            controller.metalSelect[0]),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: _buildSquareTextConatiner(
                            controller.metalSelect[1]),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: _buildSquareTextConatiner(
                            controller.metalSelect[2]),
                      ),
                      const SizedBox(width: 16.0),
                      Expanded(
                        child: _buildSquareTextConatiner(
                            controller.metalSelect[3]),
                      ),
                      const SizedBox(width: 16.0),
                      Obx(() {
                        if (controller.engineVariant.value ==
                            EngineVariant.OnePointFive.getVariant) {
                          return const SizedBox();
                        }
                        return Expanded(
                          child: _buildSquareTextConatiner(
                              controller.metalSelect[4]),
                        );
                      }),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Obx(
                    () => Row(
                      children: List.generate(
                        controller.engineVariant.value ==
                                EngineVariant.OnePointFive.getVariant
                            ? 4
                            : 5,
                        (index) => Expanded(
                          child: Container(
                            padding: const EdgeInsets.symmetric(vertical: 8.0),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(12),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black12,
                                  blurRadius: 3,
                                  offset: Offset(0, 1),
                                ),
                              ],
                            ),
                            child: Center(
                              child: Text(
                                'J - ${index + 1}',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                          ),
                        ),
                      )
                          .expand(
                            (widget) => [
                              widget,
                              const SizedBox(width: 16.0),
                            ],
                          )
                          .toList(),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildSquareTextField(
      {required TextEditingController textcontroller,
      required int index,
      required String line}) {
    const double borderRadius = 8.0;

    return Column(
      children: [
        AnimatedContainer(
          height: 80,
          duration: const Duration(milliseconds: 500),
          curve: Curves.easeInOut,
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(
              color: Colors.blue,
            ),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Center(
            child: TextField(
              textAlign: TextAlign.center,
              keyboardType: const TextInputType.numberWithOptions(),
              style: const TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.bold,
                  color: primaryColor),
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
                LengthLimitingTextInputFormatter(1),
                line == EngineLine.Block.getLine
                    ? FilteringTextInputFormatter.allow(RegExp("[0-6]"))
                    : FilteringTextInputFormatter.allow(RegExp("[0-5]"))
              ],
              decoration: const InputDecoration(
                contentPadding: EdgeInsets.zero,
                border: InputBorder.none,
              ),
              controller: textcontroller,
              onChanged: (value) {
                controller.calculateInputSums();

                controller.calculateMetalSelect(index);

                if (value != '') {
                  Get.focusScope?.nextFocus();
                }
              },
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildSquareTextConatiner(Rx<int> value) {
    const double borderRadius = 8.0;

    return AnimatedContainer(
      height: 100,
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(child: Obx(() {
        return Text(value.value == 0 ? '' : value.value.toString(),
            style: const TextStyle(
              fontSize: 80,
              fontWeight: FontWeight.bold,
            ));
      })),
    );
  }
}
