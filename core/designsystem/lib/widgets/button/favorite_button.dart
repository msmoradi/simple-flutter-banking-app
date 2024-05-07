import 'package:designsystem/theme/colors.dart';
import 'package:flutter/material.dart';

class FavoriteButton extends StatefulWidget {
  final Function()? onTap;

  const FavoriteButton({Key? key, this.onTap}) : super(key: key);

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton>
    with SingleTickerProviderStateMixin {
  late final AnimationController _controller = AnimationController(
      duration: const Duration(milliseconds: 200), vsync: this, value: 1.0);

  bool _isFavorite = false;

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        widget.onTap?.call();
        setState(() {
          _isFavorite = !_isFavorite;
        });
        _controller.reverse().then((value) => _controller.forward());
      },
      child: ScaleTransition(
          scale: Tween(begin: 0.7, end: 1.0).animate(
              CurvedAnimation(parent: _controller, curve: Curves.easeOut)),
          child: Icon(
            _isFavorite ? Icons.favorite : Icons.favorite_border_outlined,
            weight: 300,
            color: BanxColors.white,
          )),
    );
  }
}
