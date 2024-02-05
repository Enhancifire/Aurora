import 'package:aurora/app/features/home/widgets/color_tile.dart';
import 'package:aurora/app/ui/colors/color_provider.dart';
import 'package:aurora/app/ui/colors/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final theme = ref.read(themeColorsProvider);
    final colorProvider = ref.read(themeColorsProvider.notifier);
    final colors = ref.watch(themeColorsProvider);
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  OutlinedButton(
                    onPressed: () {
                      colorProvider.changeColorScheme(AppThemes.latte);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: colors.themeName == AppThemes.latte
                          ? theme.overlay0
                          : null,
                    ),
                    child: const Text("Latte"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      colorProvider.changeColorScheme(AppThemes.frappe);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: colors.themeName == AppThemes.frappe
                          ? theme.overlay0
                          : null,
                    ),
                    child: const Text("Frappe"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      colorProvider.changeColorScheme(AppThemes.macchiato);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: colors.themeName == AppThemes.macchiato
                          ? theme.overlay0
                          : null,
                    ),
                    child: const Text("Macchiato"),
                  ),
                  OutlinedButton(
                    onPressed: () {
                      colorProvider.changeColorScheme(AppThemes.mocha);
                    },
                    style: OutlinedButton.styleFrom(
                      backgroundColor: colors.themeName == AppThemes.mocha
                          ? theme.overlay0
                          : null,
                    ),
                    child: const Text("Mocha"),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              Expanded(
                child: GridView(
                  gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
                    maxCrossAxisExtent: 300,
                    crossAxisSpacing: 10,
                    mainAxisSpacing: 10,
                    childAspectRatio: 1,
                  ),
                  children: [
                    ColorDemoTile(
                      color: theme.crust,
                      name: "Crust",
                    ),
                    ColorDemoTile(
                      color: theme.mantle,
                      name: "Mantle",
                    ),
                    ColorDemoTile(
                      color: theme.base,
                      name: "Base",
                    ),
                    ColorDemoTile(
                      color: theme.surface0,
                      name: "Surface 0",
                    ),
                    ColorDemoTile(
                      color: theme.surface1,
                      name: "Surface 1",
                    ),
                    ColorDemoTile(
                      color: theme.surface2,
                      name: "Surface 2",
                    ),
                    ColorDemoTile(
                      color: theme.overlay0,
                      name: "Overlay 0",
                    ),
                    ColorDemoTile(
                      color: theme.overlay1,
                      name: "Overlay 1",
                    ),
                    ColorDemoTile(
                      color: theme.overlay2,
                      name: "Overlay 2",
                    ),
                    ColorDemoTile(
                      color: theme.subtext0,
                      name: "Subtext 0",
                    ),
                    ColorDemoTile(
                      color: theme.subtext1,
                      name: "Subtext 1",
                    ),
                    ColorDemoTile(
                      color: theme.text,
                      name: "Text",
                    ),
                    ColorDemoTile(
                      color: theme.lavender,
                      name: "Lavender",
                    ),
                    ColorDemoTile(
                      color: theme.blue,
                      name: "Blue",
                    ),
                    ColorDemoTile(
                      color: theme.sapphire,
                      name: "Sapphire",
                    ),
                    ColorDemoTile(
                      color: theme.sky,
                      name: "Sky",
                    ),
                    ColorDemoTile(
                      color: theme.teal,
                      name: "Teal",
                    ),
                    ColorDemoTile(
                      color: theme.green,
                      name: "Green",
                    ),
                    ColorDemoTile(
                      color: theme.yellow,
                      name: "Yellow",
                    ),
                    ColorDemoTile(
                      color: theme.peach,
                      name: "Peach",
                    ),
                    ColorDemoTile(
                      color: theme.maroon,
                      name: "Maroon",
                    ),
                    ColorDemoTile(
                      color: theme.red,
                      name: "Red",
                    ),
                    ColorDemoTile(
                      color: theme.mauve,
                      name: "Mauve",
                    ),
                    ColorDemoTile(
                      color: theme.pink,
                      name: "Pink",
                    ),
                    ColorDemoTile(
                      color: theme.flamingo,
                      name: "Flamingo",
                    ),
                    ColorDemoTile(
                      color: theme.rosewater,
                      name: "Rosewater",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
