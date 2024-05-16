import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class OTPInput extends StatefulWidget {
  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  List<TextEditingController> controllers = List.generate(5, (_) => TextEditingController());
  List<FocusNode> focusNodes = List.generate(5, (_) => FocusNode());

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    focusNodes.forEach((focusNode) => focusNode.dispose());
    super.dispose();
  }

  void nextField(String value, int index) {
    if (value.length == 1) {
      if (index + 1 < focusNodes.length) {
        FocusScope.of(context).requestFocus(focusNodes[index + 1]);
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
              keyboardType: TextInputType.number,
              onChanged: (value) => value.isEmpty ? previousField(index) : nextField(value, index),
              onSubmitted: (value) {
                if (index + 1 < focusNodes.length && value.isNotEmpty) {
                  FocusScope.of(context).requestFocus(focusNodes[index + 1]);
                }
              },
            ),
          );
        }),
      ),
    );
  }
}
