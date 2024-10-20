import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/auth/login/presentation/views/widgets/login_screen_body.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const LoginScreenBody(),
    );
  }
}
