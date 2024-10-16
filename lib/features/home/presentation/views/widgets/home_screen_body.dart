import 'package:flutter/material.dart';
import 'package:msa2o_korah/features/home/presentation/views/widgets/game_card.dart';

class HomeScreenBody extends StatelessWidget {
  const HomeScreenBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          children: [
            Text(
              'Welcome to',
              style: TextStyle(
                fontSize: 26,
                fontWeight: FontWeight.w500
              ),
            ),
            Text(
              'مساءو كورة',
              style: TextStyle(
                fontSize: 28,
                fontWeight: FontWeight.w500
              ),
            ),
            SizedBox(
              height: 20,
            ),
            GameCard(),
          ],
        ),
      ),
    );
  }
}
