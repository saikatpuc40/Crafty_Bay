import 'package:crafty_bay/presentation/ui/utilities/asset_paths.dart';
import 'package:crafty_bay/presentation/ui/widgets/widgets.dart';
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0),
          child: Column(
            children: [
              SizedBox(height: 10,),
              SearchTextField(
                textEditingController: TextEditingController(),
              ),
              SizedBox(height: 10,),
              HomeBannerSlider(),
              SizedBox(height: 10,),
              _buildCategoriesSection(),
              SizedBox(height: 10,),
              _buildPopularProductsSection(),
              SizedBox(height: 10,),
              _buildNewProductsSection(),
              SizedBox(height: 10,),
              _buildSpecialProductsSection(),
            ],
          ),
        ),
      ),
    );
  }
  Widget _buildNewProductsSection(){
    return Column(
      children: [
        SectionHeader(
          title: "New",
          onTap: (){},
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        )
      ],
    );
  }
  Widget _buildSpecialProductsSection(){
    return Column(
      children: [
        SectionHeader(
          title: "Special",
          onTap: (){},
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        )
      ],
    );
  }
  Widget _buildPopularProductsSection(){
    return Column(
      children: [
        SectionHeader(
          title: "Popular",
          onTap: (){},
        ),
        SizedBox(height: 10,),
        SizedBox(
          height: 180,
          child: HorizontalProductListView(),
        )
      ],
    );
  }
  Widget _buildCategoriesSection() {
    return Column(
            children: [
              SectionHeader(
                title: "Categories",
                onTap: (){},
              ),
              SizedBox(height: 10,),
              SizedBox(
                height: 120,
                child: CategoryListView(),
              ),
            ],
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














