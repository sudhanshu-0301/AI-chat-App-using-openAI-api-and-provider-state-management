import 'package:ai_chat_app/providers/active_theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import 'package:ai_chat_app/widgets/themeswitch.dart';

class MyAppBar extends StatelessWidget implements PreferredSize {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: true,
      title: Text(
        "AI Chat APP",
        style: TextStyle(
          color: Theme.of(context).colorScheme.onPrimary,
        ),
      ),
      actions: [
        Row(
          children: [
            Consumer(builder: (context, ref, child) {
              return ref.watch(activeThemeProvider) == Themes.dark
                  ? const Icon(Icons.dark_mode)
                  : const Icon(Icons.light_mode);
            },),
            const SizedBox(
              width: 8,
            ),
            const ThemeSwitch(),
          ],
        )
      ],
    );
  }

  @override
  Widget get child => throw UnimplementedError();

  @override
  Size get preferredSize => const Size.fromHeight(60);
}
