class DangKyOTD {
  String name;
  String phone;
  String email;
  String address;
  String password;
  String investor;

  DangKyOTD({
    this.name,
    this.phone,
    this.email,
    this.address,
    this.investor,
    this.password,
  });

  // DangKyOTD.fromJson(Map<String, dynamic> json)
  //     : name = json['name'],
  //       phone = json['phone'],
  //       email = json['email'],
  //       address = json['address'],
  //       investor = json['investor'];

  Map<String, dynamic> toJson() => {
        'name': name,
        'phone': phone,
        'email': email,
        'address': address,
        'password': password,
        'investor': investor,
      };
}
