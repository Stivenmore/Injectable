import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:techtalk/Domain/Provider/ProviderChangeNoti.dart';

class Home extends StatefulWidget {
  Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                'Provider:',
              ),
              Consumer<ProviderChangeNoti>(
                builder: (context, counter, child) {
                  return Text(
                    '${counter.value}',
                    style: Theme.of(context).textTheme.headline4,
                  );
                },
              )
            ],
          ),
        ),
        floatingActionButton: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            FloatingActionButton(
              onPressed: Provider.of<ProviderChangeNoti>(context).increment,
              tooltip: 'Increment',
              child: Icon(Icons.add),
            ),
            FloatingActionButton(
                onPressed: Provider.of<ProviderChangeNoti>(context).decrement,
                tooltip: 'Decrement',
                child: Icon(Icons.remove)),
          ],
        ));
  }
}

//  Provider.of<ProviderChangeNoti>(context).increment,