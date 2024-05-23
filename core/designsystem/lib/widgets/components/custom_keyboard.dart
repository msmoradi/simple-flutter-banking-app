import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:pinput/pinput.dart';

/// Custom keyboard
class CustomKeyBoard extends StatefulWidget {
  /// on changed function to be called when the amount is changed.
  final Function(String)? onChanged;

  /// on competed function to be called when the pin code is complete.
  final Function(String)? onCompleted;

  /// function to be called when special keys are pressed.
  final Function() onConfirm;

  /// maximum length of the amount.
  final int maxLength;

  final TextEditingController controller;

  const CustomKeyBoard({
    Key? key,
    required this.maxLength,
    this.onChanged,
    required this.onConfirm,
    this.onCompleted,
    required this.controller,
  })  : assert(maxLength > 0),
        super(key: key);

  @override
  _CustomKeyBoardState createState() => _CustomKeyBoardState();
}

class _CustomKeyBoardState extends State<CustomKeyBoard> {
  /// Theme for the widget. Read more [PinTheme]

  Widget buildNumberButton({int? number, Widget? icon, Function()? onPressed}) {
    getChild() {
      if (icon != null) {
        return icon;
      } else {
        return Text(
          number?.toString() ?? "",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.bold,
            color: Theme.of(context).colorScheme.primary,
          ),
        );
      }
    }

    return Expanded(
        child: CupertinoButton(
            key: icon?.key ?? Key("btn$number"),
            onPressed: onPressed,
            child: getChild()));
  }

  Widget buildNumberRow(List<int> numbers) {
    List<Widget> buttonList = numbers
        .map((buttonNumber) => buildNumberButton(
              number: buttonNumber,
              onPressed: () {
                if (widget.controller.text.length < widget.maxLength) {
                  setState(() {
                    widget.controller.text =
                        widget.controller.text + buttonNumber.toString();
                  });
                }
                widget.onChanged!(widget.controller.text);
                if (widget.controller.text.length >= widget.maxLength &&
                    widget.onCompleted != null) {
                  widget.onCompleted!(widget.controller.text);
                }
              },
            ))
        .toList();
    return Expanded(
        child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: buttonList,
    ));
  }

  Widget buildSpecialRow() {
    return Expanded(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          buildNumberButton(
              icon: Icon(
                Icons.arrow_circle_left_rounded,
                key: const Key('confirm'),
                color: Theme.of(context).colorScheme.primary,
                size: 40,
              ),
              onPressed: widget.onConfirm),
          buildNumberButton(
            number: 0,
            onPressed: () {
              if (widget.controller.text.length < widget.maxLength) {
                setState(() {
                  widget.controller.text =
                      widget.controller.text + 0.toString();
                });
              }
              widget.onChanged!(widget.controller.text);
              if (widget.controller.text.length >= widget.maxLength &&
                  widget.onCompleted != null) {
                widget.onCompleted!(widget.controller.text);
              }
            },
          ),
          buildNumberButton(
              icon: Icon(
                Icons.backspace,
                key: const Key('backspace'),
                color: Theme.of(context).colorScheme.primary,
              ),
              onPressed: () {
                if (widget.controller.text.isNotEmpty) {
                  setState(() {
                    widget.controller.text = widget.controller.text
                        .substring(0, widget.controller.text.length - 1);
                  });
                }
                widget.onChanged!(widget.controller.text);
              }),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Column(
        children: [
          buildNumberRow([1, 2, 3]),
          buildNumberRow([4, 5, 6]),
          buildNumberRow([7, 8, 9]),
          buildSpecialRow(),
        ],
      ),
    );
  }
}
