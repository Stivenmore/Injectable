
import 'package:injectable/injectable.dart';
import 'package:techtalk/Domain/Services/Services.dart';

@Named('Env.dev')
@Injectable(as : AbsValueRepository)
@injectable  
class DevValueChangeNotifier implements AbsValueRepository{
  @override
  int getIncrement() => 2;

  @override
  int getDecrement() => 1;
}