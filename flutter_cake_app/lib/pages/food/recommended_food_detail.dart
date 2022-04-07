import 'package:flutter/material.dart';
import 'package:flutter_cake_app/utils/colors.dart';
import 'package:flutter_cake_app/utils/dimensions.dart';
import 'package:flutter_cake_app/widgets/app_icon.dart';
import 'package:flutter_cake_app/widgets/big_text.dart';
import 'package:flutter_cake_app/widgets/expandable_text_widget.dart';

class RecommendedFoodDetail extends StatelessWidget {
  const RecommendedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        //slivers: special widgets with special effect
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(icon: Icons.clear),
                AppIcon(icon: Icons.shopping_cart_outlined),
              ],
            ),
            bottom: PreferredSize(
              preferredSize: Size.fromHeight(20),
              child: Container(
                child: Center(
                    child: BigText(
                        size: Dimensions.font26, text: 'Bánh kem Vanilla')),
                width: double.maxFinite,
                padding: EdgeInsets.only(
                  top: Dimensions.height10 / 2,
                  bottom: Dimensions.height10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(Dimensions.radius20),
                    topRight: Radius.circular(Dimensions.radius20),
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/image/cake1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  child: ExpandableTextWidget(
                    text:
                        "Bánh kem gato được làm bằng sô cô la. Nó có thể bao gồm các thành phần khác như fudge , creme vani và các chất tạo ngọt khác. Lịch sử bánh sô cô lla bắt nguồn từ thế kỷ 17, khi bột cacao từ châu Mỹ được thêm vào các công thức làm bánh truyền thống. Vào năm 1828, Coenraad van Houten ở Hà Lan đã phát triển một phương pháp chiết xuất cơ học để chiết xuất chất béo từ rượu cacao, tạo ra bơ cacao và một phần cacao đã khử chất béo, một khối chất rắn nén có thể được bán với tên gọi cacao đá hoặc nghiền thành bột. Các quy trình đã biến sô cô la từ một thứ xa xỉ độc quyền thành một món ăn nhẹ hàng ngày rẻ tiền. Ở Mỹ, bánh “sô cô la suy đồi” thịnh hành vào những năm 1980; trong những năm 1990, bánh sô cô la nóng chảy phục vụ một lần với các trung tâm sô cô la lỏng và sô cô la tẩm với các hương vị kỳ lạ như trà, cà ri, ớt đỏ, chanh dây và rượu sâm panh rất phổ biến. Phòng chờ sô-cô-la và những nhà sản xuất sô-cô-la thủ công rất phổ biến vào những năm 2000. Những chiếc bánh sô cô la béo ngậy, không bột mì, hoàn toàn không có bột mì là 'tiêu chuẩn hiện nay trong tiệm bánh pâtisserie hiện đại'. Patisserie là loại bánh bột nhào làm từ bột mì, trứng, sữa, đường, v.v. làm nguyên liệu chính và được làm thành bột bằng nhiều phương pháp sản xuất khác nhau, và sau đó được hoàn thành bằng cách thêm kem, mứt, v.v. Ví dụ cụ thể bao gồm bánh gatô, bánh pie, bánh tart, bánh pudding, bánh crepe, bánh su kem và bánh quy. Mặc dù không sử dụng bột mì, bánh macaron làm bột từ hạnh nhân và quả phỉ, bánh trứng đường từ bột lòng trắng trứng, mousse cũng được gọi là bánh kẹo làm món tráng miệng, thạch, bavarois, bánh pudding và các món tráng miệng đông lạnh khác cũng được coi là patisserie. Mứt kẹo bao hàm loại bánh kẹo đường, và nó là một loại bánh kẹo sử dụng đường làm thành phần chính của nó, và bánh kẹo được làm bằng cách sử dụng các đặc tính của đường. Cụ thể là các loại bánh kẹo như drops, nougat, caramel, marshmallow, kẹo cao su, sô cô la, các loại hạt bọc kẹo, gồm kẹo hoa quả như marron glacé (kẹo bọc hạt dẻ đươc tráng lớp xi-rô đường bên ngoài, có nguồn gốc ở miền bắc Ý và miền Nam nước Pháp) và hầu hết trong số chúng được sản xuất tại nhà máy trong thời đại hiện nay. Tại Nhật Bản, tiêu chuẩn phân loại tương tự như bánh kẹo Nhật Bản là bánh kẹo thô, bánh nướng chưa chín hẳn hoặc bánh kẹo khô theo quan điểm về thời hạn sử dụng, độ ẩm của bánh kẹo. Bánh kẹo thô không phải là bánh kẹo không qua nhiệt, mà là bánh kẹo có hàm lượng nước cao, nói chung là bánh kẹo có hàm lượng nước từ 30% trở lên. Phần lớn các loại bánh patisserie như shortcake, pound cake, bánh su kem, thạch và bavarois là 'fresh sweets', còn 'patisserie' đôi khi được sử dụng để chỉ đồ ngọt phương Tây nói chung. Bánh kẹo khô thường có hàm lượng nước từ 10% trở xuống, và bao gồm các loại bánh kẹo như sô cô la, kẹo và kẹo cao su, cũng gồm các loại bánh nướng như bánh quy và 'leaf pies'. Các loại bánh nướng chưa chín hẳn thuộc nhóm giữa, một số loại bánh bông lan và 'candied cake' được xếp vào bánh kẹo phương Tây. Từ 'cake' của bánh ngọt và đơn cử là bánh Âu có lịch sử rất lâu dài, từ thời Viking. 'Cake' dùng để gọi một loại thức ăn được làm ra từ bột, và nhất định là phải ngọt (bằng đường hay mật ong), được trộn với trứng, có thêm chất béo (như bơ, sữa..) và chắc chắn phải nở lên trong quá trình nướng. Ở các nước Châu Á, bánh ngọt truyền thống kiểu phương Tây cũng được du nhập nhưng trễ hơn (bên cạnh các loại bánh ngọt truyền thống của từng nước). Ví dụ như bánh sponge cake của Nhật chính là sự kết hợp cách làm Gateaux của phương Tây, nhưng gia giảm các nguyên vật liệu béo đi để thích hợp với khẩu vị người Á Đông.",
                  ),
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.remove),
                BigText(
                  text: '899k ' + ' X ' + ' 0',
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppIcon(
                    iconSize: Dimensions.iconSize24,
                    iconColor: Colors.white,
                    backgroundColor: AppColors.mainColor,
                    icon: Icons.add),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomHeightBar,
            padding: EdgeInsets.only(
              left: Dimensions.width20,
              right: Dimensions.width20,
              top: Dimensions.height30,
              bottom: Dimensions.height30,
            ),
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
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
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
        ],
      ),
    );
  }
}
