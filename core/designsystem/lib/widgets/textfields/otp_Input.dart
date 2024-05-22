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
              autofocus: index == 0,
              style: Theme.of(context)
                  .textTheme
                  .bodyMedium
                  ?.copyWith(fontWeight: FontWeight.bold),
              controller: controllers[index],
              focusNode: focusNodes[index],
              maxLength: 1,
              textAlign: TextAlign.center,
              keyboardType: TextInputType.number,
              decoration: InputDecoration(
                isDense: true,
                contentPadding: const EdgeInsets.symmetric(vertical: 12),
                counterText: "",
                border:
                    OutlineInputBorder(borderRadius: BorderRadius.circular(25)),
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
