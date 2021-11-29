class CaNhanField {
  static String name = 'name';
  static String phone = 'phone';
  static String money = 'money';

  static List<String> getFields() => [name, phone, money];
}

class CaNhanOTD {
  String name;
  String phoneNumber;
  String money;
  CaNhanOTD({
    this.money,
    this.name,
    this.phoneNumber,
  });
  CaNhanOTD.fromJson(Map<String, dynamic> json)
      : name = json[CaNhanField.name],
        phoneNumber = json[CaNhanField.phone],
        money = json[CaNhanField.money];
}
