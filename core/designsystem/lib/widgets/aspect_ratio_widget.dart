import 'package:designsystem/theme/colors.dart';
import 'package:designsystem/theme/text_styles.dart';
import 'package:designsystem/widgets/button/favorite_button.dart';
import 'package:designsystem/widgets/button/icon_background.dart';
import 'package:flutter/material.dart';

class AspectRatioImageWidget extends StatefulWidget {
  final String? locationName;
  final String imageUrl;
  final String? time;
  final double aspectRatio;
  final bool enableFavorite;

  const AspectRatioImageWidget({
    super.key,
    this.locationName,
    this.time,
    required this.imageUrl,
    required this.aspectRatio,
    this.enableFavorite = false,
  });

  @override
  State<AspectRatioImageWidget> createState() => _AspectRatioImageWidgetState();
}

class _AspectRatioImageWidgetState extends State<AspectRatioImageWidget> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: widget.aspectRatio,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          image: DecorationImage(
            image: NetworkImage(
              widget.imageUrl,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              if (widget.enableFavorite)
                const IconBackground(child: FavoriteButton()),
              Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  if (widget.locationName != null)
                    Flexible(
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.location_on_rounded,
                            weight: 300,
                            size: 18,
                            color: BanxColors.white,
                          ),
                          const SizedBox(width: 2),
                          Flexible(
                            child: Text(
                              widget.locationName!,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyles.bodyTextBody2
                                  .copyWith(color: BanxColors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  if (widget.time != null)
                    Flexible(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          const Icon(
                            Icons.access_time_filled,
                            weight: 300,
                            size: 18,
                            color: BanxColors.white,
                          ),
                          const SizedBox(width: 2),
                          Flexible(
                            child: Text(
                              widget.time!,
                              overflow: TextOverflow.ellipsis,
                              style: TextStyles.bodyTextBody2
                                  .copyWith(color: BanxColors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
