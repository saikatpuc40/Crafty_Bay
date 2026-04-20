import 'package:crafty_bay/presentation/ui/utilities/app_colors.dart';
import 'package:flutter/material.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
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
}