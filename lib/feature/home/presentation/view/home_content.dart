import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Cash Banx',
          style: Theme.of(context).textTheme.labelLarge,
        ),
        centerTitle: true,
        leading: IconButton(
          onPressed: () {},
          icon: CircleAvatar(
            child: Image.asset(
              'assets/images/circle_avatar.png',
            ),
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/bell.svg',
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/help-circle.svg',
            ),
          ),
        ],
      ),
    );
  }
}
