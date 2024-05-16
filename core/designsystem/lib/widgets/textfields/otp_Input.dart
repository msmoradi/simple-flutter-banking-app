import 'package:flutter/material.dart';
import 'package:utils/extension/strings.dart';

class OTPInput extends StatefulWidget {
  final int numCells;
  final ValueChanged<String> onCompleted;

  const OTPInput({Key? key, required this.numCells, required this.onCompleted})
      : super(key: key);

  @override
  OTPInputState createState() => OTPInputState();
}

class OTPInputState extends State<OTPInput> {
  List<TextEditingController> controllers;
  List<FocusNode> focusNodes;

  OTPInputState()
      : controllers = [],
        focusNodes = [];

  @override
  void initState() {
    super.initState();
    controllers =
        List.generate(widget.numCells, (_) => TextEditingController());
    focusNodes = List.generate(widget.numCells, (_) => FocusNode());

    // Auto-focus the first input cell
    WidgetsBinding.instance.addPostFrameCallback((_) {
      FocusScope.of(context).requestFocus(focusNodes[0]);
    });
  }

  @override
  void dispose() {
    for (var controller in controllers) {
      controller.dispose();
    }
    for (var focusNode in focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  String getOTP() {
    return controllers.map((e) => e.text).join('');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(widget.numCells, (index) {
          return SizedBox(
            width: 50,
            child: TextField(
              controller: controllers[index],
              focusNode: focusNodes[index],
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 8),
                counterText: "",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
              ),
              onChanged: (value) {
                String persianValue = value.toPersianDigits;
                if (value != persianValue) {
                  controllers[index].text = persianValue;
                  controllers[index].selection = TextSelection.fromPosition(
                    TextPosition(offset: persianValue.length),
                  );
                }
                if (persianValue.length == 1) {
                  if (index == widget.numCells - 1) {
                    widget.onCompleted(getOTP());
                  } else {
                    FocusScope.of(context).nextFocus();
                  }
                } else {
                  if (index > 0) {
                    FocusScope.of(context).previousFocus();
                  }
                }
              },
            ),
          );
        }),
      ),
    );
  }
}
