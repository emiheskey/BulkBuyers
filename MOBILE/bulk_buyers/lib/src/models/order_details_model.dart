import 'order_products_model.dart';

class OrderDetails {
  int orderdetailid;
  int orderid;
  int productid;
  int quantity;
  int unitprice;
  double totalprice;
  String productname;
  String description;
  OrderProducts product;

  OrderDetails({
    this.orderdetailid,
    this.orderid,
    this.productid,
    this.quantity,
    this.unitprice,
    this.totalprice,
    this.productname,
    this.description,
    this.product,
  });

  factory OrderDetails.fromJson(Map<String, dynamic> json) => OrderDetails(
    orderdetailid: json["orderdetailid"],
    orderid: json["orderid"],
    productid: json["productid"],
    quantity: json["quantity"],
    unitprice: json["unitprice"],
    totalprice: json["totalprice"],
    product: OrderProducts.fromJson(json["product"]),
  );

  Map<String, dynamic> toJson() => {
    "orderdetailid": orderdetailid,
    "orderid": orderid,
    "productid": productid,
    "quantity": quantity,
    "unitprice": unitprice,
    "totalprice": totalprice,
    "product": product.toJson(),
  //  "orderdetails": List<dynamic>.from(orderdetails.map((x) => x.toJson())),
  };

  OrderDetails.fromMap(
      Map<String, dynamic> map,
      ) {
    this.orderdetailid = map['orderdetailid'];
    this.orderid = map['orderid'];
    this.productid = map['productid'];
    this.quantity = map['quantity'];
    this.unitprice = map['unitprice'];
    this.totalprice = map['totalprice'];
    this.product = map['product'];
  }
}