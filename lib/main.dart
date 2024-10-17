import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:msa2o_korah/constants.dart';
import 'package:msa2o_korah/core/utils/app_router.dart';
import 'package:msa2o_korah/firebase_options.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      title: 'Msa2o Korah',
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(
        useMaterial3: true,
      ).copyWith(
          scaffoldBackgroundColor: kPrimaryColor,
          textTheme: GoogleFonts.elMessiriTextTheme(
            ThemeData.dark().textTheme,
          )),
      routerConfig: AppRouter.router,
    );
  }
}
