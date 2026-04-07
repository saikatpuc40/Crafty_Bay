
import 'package:crafty_bay/presentation/ui/utilities/asset_paths.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_bar_icon_button.dart';
import 'package:crafty_bay/presentation/ui/widgets/search_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: _buildAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            SearchTextField(
              textEditingController: TextEditingController(),
            )
          ],
        ),
      ),
    );
  }

  AppBar _buildAppBar() {
    return AppBar(
      backgroundColor: Colors.white,
      title: SvgPicture.asset(AssetPaths.logoNavSvg),
      actions: [
        AppBarIconButton(
          onTap: (){},
          iconData: Icons.person,
        ),
        const SizedBox(width: 8,),
        AppBarIconButton(
          onTap: (){},
          iconData: Icons.call,
        ),
        const SizedBox(width: 8,),
        AppBarIconButton(
          onTap: (){},
          iconData: Icons.notifications_active_outlined,
        ),
      ],
    );
  }
}




