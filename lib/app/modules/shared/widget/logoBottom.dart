import 'package:flutter/material.dart';

import '../../../constant/size_config.dart';

class LogoBottom extends StatelessWidget {
  const LogoBottom({super.key});

  @override
  Widget build(BuildContext context) {
    final SizeConfig sizeConfig = SizeConfig(context);
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          'assets/img/logo.png',
          width: sizeConfig.getProportionateScreenWidth(30),
        ),
        const Text(
          ' Farming Bot',
          style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
        ),
      ],
    );
  }
}
