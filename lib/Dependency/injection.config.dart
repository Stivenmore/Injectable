import 'package:get_it/get_it.dart';
import 'package:techtalk/Data/DevValueChangeNotifier.dart';
import 'package:techtalk/Data/ValueChangeNotifier.dart';
import 'package:techtalk/Domain/Provider/ProviderChangeNoti.dart';
import 'package:techtalk/Domain/Services/Services.dart';

final getIt = GetIt.instance;
void $initGetIt({required String environment}) {
  getIt
    ..registerFactory<ValueChangeNotifier>(() => ValueChangeNotifier())
    ..registerFactory<DevValueChangeNotifier>(() => DevValueChangeNotifier())
    ..registerFactory<ProviderChangeNoti>(
        () => ProviderChangeNoti(getIt<AbsValueRepository>()));
    
  if (environment == 'dev') {
    _registerDevDependencies();
  }
  if (environment == 'prod') {
    _registerProdDependencies();
  }
}

void _registerDevDependencies() {
  getIt..registerFactory<AbsValueRepository>(() => DevValueChangeNotifier());
}

void _registerProdDependencies() {
  getIt..registerFactory<AbsValueRepository>(() => ValueChangeNotifier());
}
