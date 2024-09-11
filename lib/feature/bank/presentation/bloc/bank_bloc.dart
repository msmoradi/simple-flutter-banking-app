import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:injectable/injectable.dart';

part 'bank_event.dart';
part 'bank_state.dart';

@injectable
class BankBloc extends Bloc<BankEvent, BankState> {
  BankBloc() : super(const BankSuccess());
}
