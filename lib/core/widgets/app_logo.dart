import 'package:flutter/material.dart';
import 'package:msa2o_korah/constants.dart';
import 'package:msa2o_korah/core/utils/assets.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AssetsData.whiteLogo,
      height: screenHeight(context) * .2,
    );
  }
}