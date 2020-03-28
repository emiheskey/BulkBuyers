import 'package:flutter/foundation.dart';

class Cart{
  final int totalcost;
  final int totalqty;
  final Map products;

  Cart({this.totalcost, this.totalqty, this.products});

  Factory Cart.fromJson(Map <String, dynamic> json){
    return Cart(
      totalcost: json['totalcost'],
      totalqty: json['totalqty'],
      products: json[{
        
      }]
    );
  }




}



//'totalcost': totalcost,
//'totalqty': totalQty,
//'products': json.encode(<String, int>{
//"productid": productId,
//"quantity": Quantity,
//"unitprice": unitPrice,
//"totalprice": totalPrice