
import 'package:crafty_bay/presentation/ui/utilities/app_colors.dart';
import 'package:crafty_bay/presentation/ui/utilities/asset_paths.dart';
import 'package:crafty_bay/presentation/ui/widgets/app_bar_icon_button.dart';
import 'package:crafty_bay/presentation/ui/widgets/home_banner_slider.dart';
import 'package:crafty_bay/presentation/ui/widgets/search_text_field.dart';
import 'package:crafty_bay/presentation/ui/widgets/section_header.dart';
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
            ),
            SizedBox(height: 10,),
            HomeBannerSlider(),
            SizedBox(height: 10,),
            _buildCategoriesSection(),
            SizedBox(height: 10,),
            SectionHeader(
              title: "Popular",
              onTap: (){},
            ),
            SizedBox(
              height: 180,
              child: _buildProductListView(),
            )
          ],
        ),
      ),
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
                child: _buildCategoryListView(),
              ),
            ],
          );
  }

  Widget _buildCategoryListView() {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: AppColors.themeColor.withValues(alpha: 0.15),
                    borderRadius: BorderRadius.circular(8)
                ),
                child: Icon(
                  Icons.computer, size: 48, color: AppColors.themeColor,),),
              SizedBox(height: 8,),
              Text('Electronics', style: TextStyle(
                color: AppColors.themeColor,
              ),)
            ],
          );
        }, separatorBuilder: (_, _) => SizedBox(width: 10,));
  }
  Widget _buildProductListView() {
    return ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        itemBuilder: (context, index) {
          return Card(
            color: Colors.white,
            child: SizedBox(
              width: 120,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 120,
                    height: 100,
                    padding: EdgeInsets.all(16),
                    decoration: BoxDecoration(
                        color: AppColors.themeColor.withValues(alpha: 0.15),
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(8),
                          topLeft: Radius.circular(8)
                        ),
                        image: DecorationImage(
                            image: AssetImage(AssetPaths.shoeImage),
                          fit: BoxFit.scaleDown

                        )
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Product Name",maxLines: 1,style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: Colors.black54
                        ),),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text('\$120'),
                            Wrap(
                              children: [
                                Icon(Icons.star,color: Colors.amber,),
                                Text('3'),
                              ],
                            ),
                            Card(
                              color: AppColors.themeColor,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)
                              ),
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Icon(Icons.favorite_border_outlined,size: 16,color: Colors.white,),
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          );
        }, separatorBuilder: (_, _) => SizedBox(width: 10,));
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








