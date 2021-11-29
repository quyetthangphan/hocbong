class ChiTietFields {
  static String name = 'name';
  static String phoneHocVien = 'phone';
  static String moneyRe = 'moneyRe';
  static String role = 'Vai trò';
  static String phoneTaiTro = 'PhoneTaiTro';

  static List<String> getFields() =>
      [name, phoneHocVien, moneyRe, role, phoneTaiTro];
}

class ChiTietOTD {
  String name;
  String phoneHocVien;
  String moneyRe;
  String role;
  String phoneTaiTro;

  ChiTietOTD(
      {this.name,
      this.moneyRe,
      this.phoneHocVien,
      this.phoneTaiTro,
      this.role});

  ChiTietOTD.fromJson(Map<String, dynamic> json)
      : name = json[ChiTietFields.name],
        moneyRe = json[ChiTietFields.moneyRe],
        phoneHocVien = json[ChiTietFields.phoneHocVien],
        phoneTaiTro = json[ChiTietFields.phoneTaiTro],
        role = json[ChiTietFields.role];
}
