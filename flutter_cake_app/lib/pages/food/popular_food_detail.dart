import 'package:flutter/material.dart';
import 'package:flutter_cake_app/utils/colors.dart';
import 'package:flutter_cake_app/utils/dimensions.dart';
import 'package:flutter_cake_app/widgets/app_column.dart';
import 'package:flutter_cake_app/widgets/app_icon.dart';
import 'package:flutter_cake_app/widgets/big_text.dart';
import 'package:flutter_cake_app/widgets/expandable_text_widget.dart';

class PopularFoodDetail extends StatelessWidget {
  const PopularFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: [
          //background image
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImgSize,
              decoration: BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage("assets/image/cake1.jpg"),
                ),
              ),
            ),
          ),
          //icon widgets
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.arrow_back_ios),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
          ),
          //food introduction
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImgSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(Dimensions.radius20),
                  topRight: Radius.circular(Dimensions.radius20),
                ),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  AppColumn(text: "Bánh kem Vanilla"),
                  SizedBox(height: Dimensions.height20),
                  BigText(text: "Giới thiệu"),
                  SizedBox(height: Dimensions.height20),
                  Expanded(
                    child: SingleChildScrollView(
                      child: ExpandableTextWidget(
                        text:
                            "Bánh kem gato được làm bằng sô cô la. Nó có thể bao gồm các thành phần khác như fudge , creme vani và các chất tạo ngọt khác. Lịch sử bánh sô cô lla bắt nguồn từ thế kỷ 17, khi bột cacao từ châu Mỹ được thêm vào các công thức làm bánh truyền thống. Vào năm 1828, Coenraad van Houten ở Hà Lan đã phát triển một phương pháp chiết xuất cơ học để chiết xuất chất béo từ rượu cacao, tạo ra bơ cacao và một phần cacao đã khử chất béo, một khối chất rắn nén có thể được bán với tên gọi cacao đá hoặc nghiền thành bột. Các quy trình đã biến sô cô la từ một thứ xa xỉ độc quyền thành một món ăn nhẹ hàng ngày rẻ tiền. Ở Mỹ, bánh “sô cô la suy đồi” thịnh hành vào những năm 1980; trong những năm 1990, bánh sô cô la nóng chảy phục vụ một lần với các trung tâm sô cô la lỏng và sô cô la tẩm với các hương vị kỳ lạ như trà, cà ri, ớt đỏ, chanh dây và rượu sâm panh rất phổ biến. Phòng chờ sô-cô-la và những nhà sản xuất sô-cô-la thủ công rất phổ biến vào những năm 2000. Những chiếc bánh sô cô la béo ngậy, không bột mì, hoàn toàn không có bột mì là 'tiêu chuẩn hiện nay trong tiệm bánh pâtisserie hiện đại'. ",
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: Dimensions.bottomHeightBar,
        padding: EdgeInsets.only(
            left: Dimensions.width20,
            right: Dimensions.width20,
            top: Dimensions.height30,
            bottom: Dimensions.height30),
        decoration: BoxDecoration(
          color: AppColors.buttonBackgroundColor,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Dimensions.radius20 * 2),
            topRight: Radius.circular(Dimensions.radius20 * 2),
          ),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height15,
                bottom: Dimensions.height15,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
              child: Row(
                children: [
                  Icon(Icons.remove, color: AppColors.signColor),
                  SizedBox(width: Dimensions.width10 / 2),
                  BigText(text: "0"),
                  SizedBox(width: Dimensions.width10 / 2),
                  Icon(Icons.add, color: AppColors.signColor),
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height15,
                bottom: Dimensions.height15,
              ),
              child: BigText(
                text: "899k | Thêm vào giỏ",
                color: Colors.white,
              ),
              decoration: BoxDecoration(
                color: AppColors.mainColor,
                borderRadius: BorderRadius.circular(Dimensions.radius20),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
