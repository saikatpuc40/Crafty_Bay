import 'package:crafty_bay/presentation/ui/screens/product_list_screen.dart';
import 'package:flutter/material.dart';

import '../utilities/app_colors.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>ProductListScreen(categoryName: 'Electronics'),
           ),
        );
      },
      child: Column(
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
      ),
    );
  }
}