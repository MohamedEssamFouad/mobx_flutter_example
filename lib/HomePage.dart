import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';

import 'CounterClass.dart';

class MyHomePage extends StatelessWidget {
  final counter = Counter();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('MobX Example')),
      body: Center(
        child: Observer(
          builder: (_) => Text('${counter.count}', style: TextStyle(fontSize: 40)),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => counter.increment(),
        child: Icon(Icons.add),
      ),
    );
  }
}
