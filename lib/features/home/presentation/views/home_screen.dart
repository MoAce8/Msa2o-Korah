import 'package:flutter/material.dart';
import 'package:msa2o_korah/core/utils/assets.dart';
import 'package:msa2o_korah/features/home/presentation/views/widgets/home_screen_body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AssetsData.goats),
            fit: BoxFit.cover,
            opacity: .7,
          ),
        ),
        child: const HomeScreenBody(),
      ),
    );
  }
}
