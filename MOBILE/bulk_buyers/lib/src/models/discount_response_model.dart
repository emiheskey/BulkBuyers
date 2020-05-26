class DiscountResponse {
  int discountid;
  int percent;

  DiscountResponse({this.discountid, this.percent});

  DiscountResponse.fromJson(
    Map<String, dynamic> data,
  )   : discountid = data['discountid'],
        percent = data['percent'];
}
