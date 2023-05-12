import 'package:flutter/material.dart';
import 'package:markdowns/screens/homescreen.dart';
import 'screens/demo_screen.dart';
import 'shared/markdown_demo_widget.dart';

void main() {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Markdown Demos',
      initialRoute: '/',
      home: HomeScreen(),
      onGenerateRoute: (RouteSettings settings) {
        return MaterialPageRoute<void>(
          builder: (_) => DemoScreen(
            child: settings.arguments as MarkdownDemoWidget?,
          ),
        );
      },
    ),
  );
}