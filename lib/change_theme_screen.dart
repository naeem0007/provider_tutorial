import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_tutorial/provider/theme_provider.dart';

class ChangeTheme extends StatelessWidget {
  const ChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    final ThemeProvider themeProvider =
        Provider.of<ThemeProvider>(context, listen: false);
    return Scaffold(
      appBar: AppBar(
        title: const Text('Change Theme'),
        centerTitle: true,
      ),
      body: Consumer<ThemeProvider>(
        builder: (context, value, child) {
          return Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  themeProvider.isDark ? "I AM DARK MODE" : "I AM LIGHT MODE",
                  style: const TextStyle(
                      fontSize: 30, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                const Text("Change your theme by clicking the button"),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () {
                    themeProvider.toggleTheme();
                  },
                  child: themeProvider.isDark
                      ? const Text("Change theme to Light mode")
                      : const Text('Change theme to dark mode'),
                )
              ],
            ),
          );
        },
      ),
    );
  }
}
