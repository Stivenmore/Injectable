import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techtalk/Data/DevValueChangeNotifier.dart';
import 'package:techtalk/Data/ValueChangeNotifier.dart';
import 'package:techtalk/Dependency/injection.dart';
import 'package:techtalk/Domain/Provider/ProviderChangeNoti.dart';
import 'package:techtalk/Screens/HomeProvider.dart';
import 'package:techtalk/Screens/HomeSetState.dart';

void main() {
  configureInjection(Env.prod);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Injectable',
      home: ChangeNotifierProvider(
        create: ( _ ) => getIt<ProviderChangeNoti>(),
        child: Home()),
    );
  }
}
