import 'dart:io';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:task_manager/generate_route.dart';
import 'package:task_manager/themes/theme.dart';
import 'package:task_manager/view/screens/check_login_state.dart';
import 'package:window_size/window_size.dart';


void main() {
  WidgetsFlutterBinding.ensureInitialized();

  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    setWindowTitle('Task Manager');
    setWindowMaxSize(const Size(1000, 600));
    setWindowMinSize(const Size(1000, 600));
  }
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      onGenerateRoute: generateRoute,
      title: 'Task Management',
      debugShowCheckedModeBanner: false,
      theme: ThemesTheme.themeDatalight,
      home: const CheckLoginState(),
    );
  }
}
