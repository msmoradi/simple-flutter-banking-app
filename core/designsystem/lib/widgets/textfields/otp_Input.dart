import 'package:flutter/material.dart';

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
  }

  @override
  void dispose() {
    controllers.forEach((controller) => controller.dispose());
    focusNodes.forEach((focusNode) => focusNode.dispose());
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
              onChanged: (value) {
                if (value.length == 1) {
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
