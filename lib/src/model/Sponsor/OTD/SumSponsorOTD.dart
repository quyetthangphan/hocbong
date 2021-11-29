class SumSponsorFields {
  static String role = 'Vai trò của anh/chi';
  static String fullName = 'Họ và tên';
  static String phone = 'Số điện thoại';
  static String sumMoney = 'Sum of Số tiền';

  static List<String> getFields() => [role, fullName, phone, sumMoney];
}

class SumSponsorOTD {
  String role;
  String fullName;
  String phone;
  String sumMoney;

  SumSponsorOTD({
    this.role,
    this.fullName,
    this.phone,
    this.sumMoney,
  });
  //parse Json EndCode vs DeCode
  SumSponsorOTD.fromJson(Map<String, dynamic> json)
      : role = json[SumSponsorFields.role],
        fullName = json[SumSponsorFields.fullName],
        phone = json[SumSponsorFields.phone],
        sumMoney = json[SumSponsorFields.sumMoney];
}
