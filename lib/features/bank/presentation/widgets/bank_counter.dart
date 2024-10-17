import 'package:flutter/material.dart';
import 'package:msa2o_korah/core/widgets/app_small_button.dart';

class BankCounter extends StatelessWidget {
  const BankCounter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Counter value:',
              style: TextStyle(fontSize: 20),
            ),
            SizedBox(
              width: 50,
            ),
            Text(
              '0',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
        const SizedBox(
          height: 25,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            AppSmallButton(
              text: 'Bank',
              background: Colors.teal[600],
              function: () {},
            ),
            const Text(
              'Bank value:',
              style: TextStyle(fontSize: 20),
            ),
            const Text(
              '0',
              style: TextStyle(fontSize: 24),
            ),
          ],
        ),
      ],
    );
  }
}
