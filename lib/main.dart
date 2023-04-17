import 'package:draw_app/widgets/drawable_canvas.dart';
import 'package:draw_app/widgets/selection%20wheel/selection_wheel.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'widgets/collapsible menu/collapsible_menu.dart';
import 'widgets/collapsible menu/collapsible_menu_item.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
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
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Stack(children: [
        const DrawableCanvas(),
        CollapsibleMenu(items: menuItems),
        const SelectionWheel(),
      ]),
    );
  }
}
