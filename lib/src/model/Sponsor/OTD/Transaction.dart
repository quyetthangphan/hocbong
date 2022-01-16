class TransactionOTD {
  String maHash;
  String to;
  String from;
  String money;

  TransactionOTD({
    this.maHash,
    this.to,
    this.from,
    this.money,
  });

  TransactionOTD.fromJson(Map<String, dynamic> json)
      : maHash = json['maHash'],
        to = json['to'],
        from = json['from'],
        money = json['money'];
}
