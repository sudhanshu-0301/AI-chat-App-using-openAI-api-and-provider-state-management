import 'package:ai_chat_app/providers/active_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_chat_app/screens/chat_screen.dart';
import '../constants/themes.dart';

void main() {
  runApp(const ProviderScope(child:MyApp()));
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final activeTheme = ref.watch(activeThemeProvider);
    return MaterialApp(
        title: 'AI_Chat_App',
        debugShowCheckedModeBanner: false,
        theme: lightTheme,
        darkTheme: darkTheme,
        themeMode:
            activeTheme == Themes.dark ? ThemeMode.dark : ThemeMode.light,
        home: const ChatScreen());
  }
}
