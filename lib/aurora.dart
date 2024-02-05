import 'package:aurora/app/core/routes/router.dart';
import 'package:aurora/app/ui/style/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class Aurora extends ConsumerStatefulWidget {
  const Aurora({super.key});

  @override
  ConsumerState<Aurora> createState() => _AuroraState();
}

class _AuroraState extends ConsumerState<Aurora> {
  @override
  Widget build(BuildContext context) {
    final theme = ref.watch(customAppThemeProvider);
    final routes = ref.watch(routerProvider);
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: "Aurora",
      theme: theme,
      routerConfig: routes,
    );
  }
}
