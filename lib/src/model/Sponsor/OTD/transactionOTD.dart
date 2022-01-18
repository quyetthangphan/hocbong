class TransactionOTD {
  String to;
  String from;
  String tx;
  double value;

  TransactionOTD({this.to, this.from, this.tx, this.value});

  TransactionOTD.fromJson(Map<String, dynamic> json)
      : to = json['to'],
        from = json['from'],
        tx = json['tx'],
        value = json['value'];
}
