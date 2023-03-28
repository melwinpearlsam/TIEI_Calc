import 'package:calculator/constants/enums.dart';
import 'package:calculator/controllers/calculate.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

class CalculateWidget extends StatelessWidget {
  CalculateWidget({
    super.key,
  });

  final controller = Get.find<CalculateController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const Text('Crank'),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildSquareTextField(controller.input[0]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextField(controller.input[1]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextField(controller.input[2]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextField(controller.input[3]),
                  ),
                  const SizedBox(width: 16.0),
                  Builder(builder: (context) {
                    if (controller.engineVariant.value ==
                        EngineVariant.OnePointFive.getVariant) {
                      return const SizedBox();
                    }
                    return Expanded(
                      child: _buildSquareTextField(controller.input[4]),
                    );
                  }),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Block'),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildSquareTextField(controller.input[5]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextField(controller.input[6]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextField(controller.input[7]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextField(controller.input[8]),
                  ),
                  const SizedBox(width: 16.0),
                  Builder(builder: (context) {
                    if (controller.engineVariant.value ==
                        EngineVariant.OnePointFive.getVariant) {
                      return const SizedBox();
                    }
                    return Expanded(
                      child: _buildSquareTextField(controller.input[9]),
                    );
                  }),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const Text('Sum'),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildSquareTextConatiner(controller.inputSums[0]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextConatiner(controller.inputSums[1]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextConatiner(controller.inputSums[2]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextConatiner(controller.inputSums[3]),
                  ),
                  const SizedBox(width: 16.0),
                  Builder(builder: (context) {
                    if (controller.engineVariant.value ==
                        EngineVariant.OnePointFive.getVariant) {
                      return const SizedBox();
                    }
                    return Expanded(
                      child: _buildSquareTextConatiner(controller.inputSums[4]),
                    );
                  }),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Text('Result'),
              const SizedBox(
                height: 16,
              ),
              Row(
                children: [
                  Expanded(
                    child: _buildSquareTextConatiner(controller.metalSelect[0]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextConatiner(controller.metalSelect[1]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextConatiner(controller.metalSelect[2]),
                  ),
                  const SizedBox(width: 16.0),
                  Expanded(
                    child: _buildSquareTextConatiner(controller.metalSelect[3]),
                  ),
                  const SizedBox(width: 16.0),
                  Builder(builder: (context) {
                    if (controller.engineVariant.value ==
                        EngineVariant.OnePointFive.getVariant) {
                      return const SizedBox();
                    }
                    return Expanded(
                      child:
                          _buildSquareTextConatiner(controller.metalSelect[4]),
                    );
                  }),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSquareTextField(RxString input) {
    const double borderRadius = 8.0;

    return AnimatedContainer(
      duration: const Duration(milliseconds: 500),
      curve: Curves.easeInOut,
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.blue,
        ),
        borderRadius: BorderRadius.circular(borderRadius),
      ),
      child: Center(
        child: TextField(
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          style: const TextStyle(
            fontSize: 24.0,
            fontWeight: FontWeight.bold,
          ),
          inputFormatters: [
            FilteringTextInputFormatter.digitsOnly,
            LengthLimitingTextInputFormatter(1),
          ],
          decoration: const InputDecoration(
            contentPadding: EdgeInsets.zero,
            border: InputBorder.none,
          ),
          onChanged: (value) {
            input(value);
            controller.calculateInputSums();
          },
        ),
      ),
    );
  }

  Widget _buildSquareTextConatiner(RxString value) {
    const double borderRadius = 8.0;

    return Obx(
      () => AnimatedContainer(
        height: 50,
        duration: const Duration(milliseconds: 500),
        curve: Curves.easeInOut,
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.blue,
          ),
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        child: Center(
            child: Text(value.value,
                style: const TextStyle(
                  fontSize: 24.0,
                  fontWeight: FontWeight.bold,
                ))),
      ),
    );
  }
}
