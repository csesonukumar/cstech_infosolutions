// // lib/main.dart
//
// import 'package:flutter/material.dart';
// // Make sure this import path matches the location of your new file.
// import 'features/language_selection/screens/language_selection_page.dart';
//
// void main() {
//   runApp(const MyApp());
// }
//
// class MyApp extends StatelessWidget {
//   const MyApp({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Language Selection',
//       theme: ThemeData(
//         colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
//         useMaterial3: true,
//       ),
//       // We are setting our new LanguageSelectionPage as the home screen.
//       home: const LanguageSelectionPage(),
//       debugShowCheckedModeBanner: false,
//     );
//   }
// }



// lib/main.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart'; // <-- Import provider
import 'features/auth/providers/auth_provider.dart'; // <-- Import your AuthProvider
import 'features/language_selection/screens/language_selection_page.dart';

void main() {
  runApp(
    // We wrap our app in a provider so all widgets can access it
    ChangeNotifierProvider(
      create: (context) => AuthProvider(),
      child: const MyApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
        useMaterial3: true,
      ),
      home: const LanguageSelectionPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}