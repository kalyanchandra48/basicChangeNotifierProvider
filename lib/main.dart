import 'package:flutter/material.dart';
import 'pages/container.dart';
import 'pages/rangeslider.dart';
import 'services/changeheight.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: ChangeNotifierProvider(
        create: (context) => ChangingHeight(),
        child: Scaffold(
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ContainerWidget(),
                SliderW(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
