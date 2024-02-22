import 'package:flutter/material.dart';
import 'package:mirai/mirai.dart';

void main() async {
  await Mirai.initialize();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MiraiApp(
      title: 'Mirai Demo',
      homeBuilder: (context) => Mirai.fromAssets('assets/data/sdui.json'),
    );
  }
}