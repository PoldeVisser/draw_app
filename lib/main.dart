import 'package:draw_app/widgets/drawable_canvas.dart';
import 'package:draw_app/widgets/selection%20wheel/selection_wheel.dart';
import 'package:draw_app/widgets/selection%20wheel/selection_wheel_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'classes/drawable.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive);
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.landscapeLeft,
    DeviceOrientation.landscapeRight,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          const DrawableCanvas(),
          Center(
            child: SelectionWheel(
              items: [
                SelectionWheelItem(
                  drawable: Brush(),
                ),
                SelectionWheelItem(
                  drawable: Pencil(),
                ),
                SelectionWheelItem(
                  drawable: Pencil(),
                ),
                SelectionWheelItem(
                  drawable: Pencil(),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
