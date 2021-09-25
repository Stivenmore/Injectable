

import 'package:flutter/cupertino.dart';
import 'package:injectable/injectable.dart';
import 'package:techtalk/Domain/Services/Services.dart';

@injectable
class ProviderChangeNoti with ChangeNotifier {
  final AbsValueRepository _absValueRepository;

  ProviderChangeNoti(this._absValueRepository);

  int _value = 0;
  int get value => _value;

  void increment(){
    _value += _absValueRepository.getIncrement();
    notifyListeners();
  }
  void decrement(){
    _value -= _absValueRepository.getDecrement();
    notifyListeners();
  }
}