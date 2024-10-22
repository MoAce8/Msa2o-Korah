import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/core/widgets/app_button.dart';
import 'package:msa2o_korah/core/widgets/app_logo.dart';
import 'package:msa2o_korah/core/widgets/custom_text_form_field.dart';
import 'package:msa2o_korah/features/auth/login/presentation/view_models/login_cubit/login_cubit.dart';

class LoginScreenBody extends StatefulWidget {
  const LoginScreenBody({super.key});

  @override
  State<LoginScreenBody> createState() => _LoginScreenBodyState();
}

class _LoginScreenBodyState extends State<LoginScreenBody> {
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  var formKey = GlobalKey<FormState>();
  bool passwordVisible = true;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const AppLogo(),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Welcome',
                style: Theme.of(context).textTheme.headlineLarge,
              ),
              Text(
                'Trying to login?',
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              AppTextFormField(
                label: 'email',
                keyboard: TextInputType.emailAddress,
                prefix: const Icon(Icons.email_outlined),
                controller: emailController,
              ),
              const SizedBox(
                height: 16,
              ),
              AppTextFormField(
                label: 'password',
                keyboard: TextInputType.visiblePassword,
                controller: passwordController,
                obscure: passwordVisible,
                prefix: const Icon(Icons.lock_outline),
                suffix: IconButton(
                  icon: Icon(
                    passwordVisible ? Icons.visibility : Icons.visibility_off,
                  ),
                  onPressed: () {
                    setState(() {
                      passwordVisible = !passwordVisible;
                    });
                  },
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              AppButton(
                text: 'Login',
                function: () async {
                  if (formKey.currentState!.validate()) {
                    await FirebaseAuth.instance.signOut();
                    LoginCubit.get(context)
                        .loginUser(
                            email: emailController.text,
                            password: passwordController.text)
                        .then(
                          (value) => GoRouter.of(context).go('/home'),
                        );
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
