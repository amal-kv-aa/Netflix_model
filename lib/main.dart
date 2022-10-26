import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:netfix/application/bloc/downloads_bloc.dart';
import 'package:netfix/domain/core/di/injectable.dart';
import 'package:netfix/https_functions/functions.dart';
import 'package:netfix/pages/splash.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
    await configureInjection();
  await Apifunction.getmovies();
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return  MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => getIt<DownloadsBloc>()
        ),
      ],
      child: const MaterialApp(
        home: SplashScreen(),
      ),
    );
  }
}
