import 'package:crafty_bay/presentation/ui/utilities/app_colors.dart';
import 'package:crafty_bay/presentation/ui/utilities/asset_paths.dart';
import 'package:flutter/material.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
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
                      Text('\$120',style: TextStyle(
                          fontWeight: FontWeight.w500,
                          color: AppColors.themeColor
                      ),),
                      Wrap(
                        crossAxisAlignment: WrapCrossAlignment.center,
                        children: [
                          Icon(Icons.star,color: Colors.amber,),
                          Text('3',style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Colors.black54
                          ),),
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
  }
}