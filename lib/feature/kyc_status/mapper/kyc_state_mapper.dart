import 'package:banx/feature/kyc_status/model/kyc_status.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

extension KycStateMapper on KycState {
  String toIconAssets() {
    switch (this) {
      case KycState.success:
        return 'assets/icons/check-circle.svg';
      case KycState.waiting:
        return 'assets/icons/clock.svg';
      case KycState.failed:
        return 'assets/icons/triangle-warning.svg';
      default:
        return 'assets/icons/clock.svg';
    }
  }

  Color toBackgroundColor(BuildContext context) {
    switch (this) {
      case KycState.success:
        return const Color(0xff008557);
      case KycState.waiting:
        return Theme.of(context).colorScheme.onSurface;
      case KycState.failed:
        return Theme.of(context).colorScheme.errorContainer;
      default:
        return Theme.of(context).colorScheme.onSurface;
    }
  }
}
