import 'package:flutter/material.dart';
import 'package:flutter_request_ver2/src/model/Sponsor/OTD/DangKyOTD.dart';
import 'package:flutter_request_ver2/src/utils/color.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:group_radio_button/group_radio_button.dart';

class DangKy extends StatefulWidget {
  DangKy({Key key}) : super(key: key);

  @override
  _DangKyState createState() => _DangKyState();
}

class _DangKyState extends State<DangKy> {
  final formKey = GlobalKey<FormState>();

  DangKyOTD dk = DangKyOTD();

  String _verticalGroupValue = "Cá nhân";
  List<String> _status = ["Cá nhân", "Doanh nghiệp"];

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.blue[100],
      body: Form(
        key: formKey,
        child: Align(
          alignment: Alignment.center,
          child: Container(
            height: double.infinity,
            width: size.width * 0.46,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: colorTextSponsor,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 22),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Thông tin tài trợ',
                            style: GoogleFonts.cormorantGaramond(
                              fontSize: 32,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            'Dự án cộng đồng, phần mềm lưu trữ và quản lý tài trợ. Với chúng tôi đây là một đam mê ' +
                                '\n' +
                                'cháy bỏng, luôn muốn học hỏi và làm việc hết mình với những dự án. ' +
                                '\n' +
                                'Một lần nữa, chúng tôi thay mặt các bạn học sinh, sinh viên (danh sách công bố khi được ' +
                                '\n' +
                                'nhận học bổng) chân thành cảm ơn.',
                            textScaleFactor: 1,
                            style: GoogleFonts.roboto(
                              fontSize: 14,
                              fontWeight: FontWeight.w400,
                              wordSpacing: 2,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: colorTextSponsor,
                      //height: size.height * 0.2,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Vai trò của anh/chị',
                            style: GoogleFonts.nunito(fontSize: 16),
                          ),
                          SizedBox(height: 6),
                          RadioGroup<String>.builder(
                            spacebetween: 40,
                            groupValue: _verticalGroupValue,
                            onChanged: (value) => setState(() {
                              _verticalGroupValue = value;
                            }),
                            items: _status,
                            itemBuilder: (item) => RadioButtonBuilder(
                              item,
                            ),
                            activeColor: Colors.blue,
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: colorTextSponsor,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Họ và tên',
                            style: GoogleFonts.nunito(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text(
                              'Nếu là Vai trò của anh/chị là tổ chức thì họ tên là người đại diện'),
                          SizedBox(height: 20),
                          _buildName(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: colorTextSponsor,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Số điện thoại',
                            style: GoogleFonts.nunito(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text(
                              'Nếu là Vai trò của anh/chị là tổ chức thì số điện thoại là người đại diện. Ngoài ra, số điện thoại được dùng để truy vấn học bổng.'),
                          SizedBox(height: 20),
                          _buildPhone(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: colorTextSponsor,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Mật khẩu',
                            style: GoogleFonts.nunito(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text('Anh/chị vui lòng nhớ mật khẩu mình đăng ký.'),
                          SizedBox(height: 20),
                          _buildPasss(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: colorTextSponsor,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Email',
                            style: GoogleFonts.nunito(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text(
                              'Nếu là Vai trò của anh/chị là tổ chức thì email là người đại diện. Ngoài ra, số điện thoại được dùng để truy vấn học bổng.'),
                          SizedBox(height: 20),
                          _buildEmail(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(8),
                    child: Container(
                      color: colorTextSponsor,
                      width: double.infinity,
                      padding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Địa chỉ',
                            style: GoogleFonts.nunito(fontSize: 16),
                          ),
                          SizedBox(height: 20),
                          Text(
                              'Nếu là Vai trò của anh/chị là tổ chức thì địa chỉ là tổ chức.'),
                          SizedBox(height: 20),
                          _buildAddress(),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      InkWell(
                        onTap: () {
                          final isValide = formKey.currentState.validate();
                          if (isValide) {
                            formKey.currentState.save();
                          }
                          dk.investor = _verticalGroupValue;
                          print(dk.toJson());
                        },
                        child: Ink(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(6),
                            color: Colors.blue[600],
                          ),
                          width: 72,
                          height: 36,
                          child: Center(
                              child: Text(
                            'Gửi',
                            style: GoogleFonts.nunito(
                                fontSize: 16,
                                fontWeight: FontWeight.w700,
                                color: Colors.white),
                          )),
                        ),
                      ),
                      InkWell(
                          onTap: () {},
                          child: Text(
                            'Xoá hết câu trả lời',
                            style:
                                GoogleFonts.nunito(color: colorAppBarSponsor),
                          ))
                    ],
                  ),
                  SizedBox(height: 36),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildName() => TextFormField(
        decoration: const InputDecoration(
          hintText: 'Câu trả lời của bạn',
        ),
        validator: (value) {
          if (value == '') {
            return 'Đây là câu hỏi bắt buộc.';
          } else {
            return null;
          }
        },
        // Muốn biến nào thì cứ gọi đến thông qua thằng OTD
        onSaved: (value) => setState(() => dk.name = value),
      );

  Widget _buildPhone() => TextFormField(
        decoration: InputDecoration(
          hintText: 'Câu trả lời của bạn',
        ),
        validator: (value) {
          if (value == '') {
            return 'Đây là câu hỏi bắt buộc.';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => dk.phone = value),
      );
  bool _hide = true;
  Widget _buildPasss() => TextFormField(
        obscureText: _hide,
        decoration: InputDecoration(
          hintText: 'Câu trả lời của bạn',
          suffixIcon: InkWell(
              onTap: () {
                setState(() {
                  _hide = !_hide;
                });
              },
              child: Icon(_hide ? Icons.remove_red_eye : Icons.lock)),
        ),
        validator: (value) {
          if (value == '') {
            return 'Đây là câu hỏi bắt buộc.';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => dk.password = value),
      );

  Widget _buildEmail() => TextFormField(
        decoration: const InputDecoration(
          hintText: 'Câu trả lời của bạn',
        ),
        validator: (value) {
          final pattern = r'(^[a-zA-Z0-9_.+-]+@[a-zA-Z0-9-]+\.[a-zA-Z0-9-.]+$)';
          final regExp = RegExp(pattern);

          if (value.isEmpty) {
            return 'Enter an email';
          } else if (!regExp.hasMatch(value)) {
            return 'Enter a valid email';
          } else {
            return null;
          }
        },
        keyboardType: TextInputType.emailAddress,
        onSaved: (value) => setState(() => dk.email = value),
      );
  Widget _buildAddress() => TextFormField(
        decoration: const InputDecoration(
          hintText: 'Câu trả lời của bạn',
        ),
        validator: (value) {
          if (value == '') {
            return 'Đây là câu hỏi bắt buộc.';
          } else {
            return null;
          }
        },
        onSaved: (value) => setState(() => dk.address = value),
      );
}
