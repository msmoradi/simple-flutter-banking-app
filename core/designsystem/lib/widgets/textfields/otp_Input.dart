import 'package:flutter/material.dart';

class OTPInput extends StatefulWidget {
  final ValueChanged<String> onCompleted;

  const OTPInput({super.key, required this.onCompleted});

  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  List<TextEditingController> controllers =
      List.generate(5, (_) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(5, (_) => FocusNode());

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    focusNodes.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  void nextField(String value, int index) {
    if (value.length == 1) {
      if (index + 1 < controllers.length) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
      }
      if (index == controllers.length - 1) {
        widget.onCompleted(getOTP());
      }
    }
  }

  void previousField(int index) {
    if (index > 0) {
      FocusScope.of(context).requestFocus(focusNodes[index - 1]);
      controllers[index - 1].selection = TextSelection.fromPosition(
          TextPosition(offset: controllers[index - 1].text.length));
    }
  }

  String getOTP() {
    return controllers.map((e) => e.text).join('');
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: List<Widget>.generate(controllers.length, (index) {
          return Container(
            width: 60.0,
            child: TextField(
              controller: controllers[index],
              focusNode: focusNodes[index],
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                counterText: "",
                enabledBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2),
                  borderRadius: BorderRadius.circular(30),
                ),
                focusedBorder: OutlineInputBorder(
                  borderSide: BorderSide(width: 2, color: Colors.blue),
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
              onChanged: (value) => value.isEmpty
                  ? previousField(index)
                  : nextField(value, index),
            ),
          );
        }),
      ),
    );
  }
}
