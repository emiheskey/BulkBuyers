class PostOrders {
  String paymentrefno;
  int totalcost;
  int discountid;
  int totalqty;
  int discount;
  String address;
  List<dynamic> products;

  PostOrders(
      {this.paymentrefno,
        this.address,
      this.totalcost,
      this.discountid,
      this.totalqty,
      this.discount,
      this.products});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> order = new Map<String, dynamic>();
    order['paymentrefno'] = paymentrefno;
    order['totalcost'] = totalcost;
    order['discountid'] = discountid;
    order['totalqty'] = totalqty;
    order['address'] = address;
    order['discount'] = discount;
    order['products'] = products;

    return order;
  }
}
