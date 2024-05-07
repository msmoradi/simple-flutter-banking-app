import 'package:flutter/cupertino.dart';

class ItemIndicator extends StatelessWidget {
  final double width;
  final double height;
  final Color color;

  const ItemIndicator(
      {Key? key,
      required this.width,
      required this.height,
      required this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: Center(
        child: Container(
          decoration: BoxDecoration(
              color: color,
              border: Border.all(
                color: color,
              ),
              borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
          width: width / 2,
          height: height,
        ),
      ),
    );
  }
}
