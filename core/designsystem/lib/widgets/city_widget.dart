import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:flutter/material.dart';

class CityWidget extends StatelessWidget {
  final String name;
  final String imageUrl;
  final Function() onItemTapped;

  const CityWidget({
    Key? key,
    required this.name,
    required this.imageUrl,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onItemTapped,
      child: SizedBox(
        width: 156,
        child: AspectRatio(
          aspectRatio: 2,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(15),
                image: DecorationImage(
                    image: NetworkImage(
                      imageUrl,
                    ),
                    fit: BoxFit.cover)),
            child: Center(
              child: Text(
                name,
                style: TextStyles.h6.copyWith(color: BanxColors.white),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
