import 'package:flutter/material.dart';

class SponsorCauChuyen extends StatelessWidget {
  const SponsorCauChuyen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    double _height = 0;
    double _width = 0;
    Size size = MediaQuery.of(context).size;
    return Center(
      child: Container(
        height: size.height,
        width: size.width * 0.9,
        color: Colors.grey,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            buildImage(),
            SizedBox(height: 20),
            buildText(),
          ],
        ),
      ),
    );
  }

  Widget buildImage() => Container(
        height: 300,
        width: 300,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage("assets/image/cauchuyen.png"),
              fit: BoxFit.cover),
        ),
      );
  Widget buildText() => Container(
      padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
      color: Colors.cyan,
      child: Text(
        "Học Đại học đối với nhiều người chính là ước mơ là hoài bảo. Nó không phải là ngưỡng cửa cao nhất nhưng là chìa khóa đưa chúng ta đến gần hơn với thành công.Trên Tinh thần “ luôn sẵn sàng cùng bạn khai thông tri thức, quyết tâm xây dựng những bậc thang vững chãi, đưa bạn đến tương lai rộng mở. “ Đại học Lạc Hồng cùng cái nhìn hướng đến tương lai với triết lý giáo dục Đạo đức - Trí tuệ - Sáng tạo hướng đến mục tiêu đào tạo ra những con người có trách nhiệm với xã hội, phục vụ cộng đồng, biết phát huy trí tuệ bản lĩnh của mình trong lĩnh vực chuyên môn cũng như trong đời sống, không ngừng tìm tòi nghiên cứu, sáng tạo ra những cái mới.",
        style: TextStyle(fontSize: 14, fontWeight: FontWeight.w500),
      ));
}
