
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../utilities/asset_paths.dart';

class AppLogoWidget extends StatelessWidget {
  const AppLogoWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(AssetPaths.logoSvg,width: 100,);
  }
}