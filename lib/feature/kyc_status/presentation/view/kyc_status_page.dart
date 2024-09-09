import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:banx/core/designsystem/widgets/info_text_row.dart';
import 'package:banx/feature/kyc_status/model/kyc_status.dart';
import 'package:banx/feature/kyc_status/presentation/view/kyc_status_content.dart';
import 'package:flutter/material.dart';

class KycStatusPage extends StatelessWidget {
  final Function() onNext;
  final Function(String) showMessage;

  const KycStatusPage({
    super.key,
    required this.onNext,
    required this.showMessage,
  });

  @override
  Widget build(BuildContext context) {
    return KycStatusContent(
      onActionClick: onNext,
      showMessage: showMessage,
      title: "احراز هویت و افتتاح حساب",
      description: "استعلام از بانک مرکزی جهت افتتاح حساب در حال انجام است",
      actionTitle: "ادامه فرآیند",
      status: [
        KycStatus(
            title: "مالکیت شماره تلفن همراه",
            description: "تطبیق شماره تلفن همراه و کدملی",
            state: KycState.success),
        KycStatus(
            title: "شناسایی هویت",
            description: "دریافت اطلاعات شما از ثبت احوال",
            state: KycState.success),
        KycStatus(
            title: "احراز هویت",
            description: "بررسی چهره و تطبیق آن با هویت شما",
            state: KycState.failed),
        KycStatus(
            title: "استعلام از بانک مرکزی",
            description: "بررسی عدم چک برگشتی و اقساط معوق بانکی",
            state: KycState.waiting)
      ],
    );
  }
}