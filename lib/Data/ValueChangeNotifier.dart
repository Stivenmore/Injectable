
import 'package:injectable/injectable.dart';
import 'package:techtalk/Domain/Services/Services.dart';

@Named('Env.prod')
@Injectable(as : AbsValueRepository)
@injectable  
class ValueChangeNotifier implements AbsValueRepository{
  @override
  int getIncrement() => 1;

    @override
  int getDecrement() => 1;
}