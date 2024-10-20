import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:msa2o_korah/core/utils/assets.dart';

class GameCard extends StatelessWidget {
  const GameCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 4/2,
      child: GestureDetector(
        onTap: () => GoRouter.of(context).push('/bankRounds'),
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(16),
            image: const DecorationImage(
              image: AssetImage(AssetsData.bankGame),
              fit: BoxFit.fill,
            ),
          ),
        ),
      ),
    );
  }
}
