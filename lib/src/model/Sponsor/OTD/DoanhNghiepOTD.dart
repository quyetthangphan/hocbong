class DoanhNghiepFields {
  static String name = 'name';
  static String phone = 'phone';
  static String money = 'money';

  static List<String> getFields() => [name, phone, money];
}

class DoanhNghiepOTD {
  String name;
  String phoneNumber;
  String money;

  DoanhNghiepOTD({
    this.money,
    this.name,
    this.phoneNumber,
  });
  DoanhNghiepOTD.fromJson(Map<String, dynamic> json)
      : name = json[DoanhNghiepFields.name],
        phoneNumber = json[DoanhNghiepFields.phone],
        money = json[DoanhNghiepFields.money];
}
