class Discount {
  String code;

  Discount({
    this.code,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> discountCode = new Map<String, dynamic>();

    discountCode['code'] = code;

    return discountCode;
  }
}
