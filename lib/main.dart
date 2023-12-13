import 'package:bloc_payload/theme/theme_bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider<ThemeBloc>(
      create: (context) => ThemeBloc(),
      child: Builder(
        builder: (context) {
          return MaterialApp(
                title: 'Event Payload',
                debugShowCheckedModeBanner: false,
                theme: context.watch<ThemeBloc>().state.appTheme == AppTheme.light
                    ? ThemeData.light()
                    : ThemeData.dark(),
                home: const HomePage(),
          );
        }
      ),
    );
  }
}
