

import 'package:injectable/injectable.dart';
import 'package:techtalk/Data/DevValueChangeNotifier.dart';
import 'package:techtalk/Data/ValueChangeNotifier.dart';

@injectable
abstract class AbsValueRepository {
  
  int getIncrement();

  int getDecrement();
}