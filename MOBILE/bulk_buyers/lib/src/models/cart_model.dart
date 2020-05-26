class Cart {
  int _cartid;
  String _productname;
  int _totalprice;
  int _quantity;
  String _productimg;
  int _productid;
  int _unitprice;
  int _discount;
  Cart(
      this._productid,
      this._productname,
      this._totalprice,
      this._quantity,
      this._unitprice,
      this._productimg,
      this._discount);

  Cart.map(dynamic object)
      : _cartid = object['cartid'],
        _productid = object['productid'],
        _productname = object['productname'],
        _totalprice = object['totalprice'],
  _unitprice = object['unitprice'],
        _quantity = object['quantity'],
        _productimg = object['productimg'],
  _discount = object['discount'];

  String get productname => _productname;
  String get productimg => _productimg;
  int get quantity => _quantity;
  int get cartid => _cartid;
  int get totalprice => _totalprice;
  int get productid => _productid;
  int get unitprice => _unitprice;
  int get discount => _discount;

  Map<String, Object> toMap() {
    var map = new Map<String, Object>();

    if (_cartid != null) {
      map['cartid'] = _cartid;
    }
    map['productid'] = _productid;
    map['productname'] = _productname;
    map['quantity'] = _quantity;
    map['totalprice'] = _totalprice;
    map['unitprice'] = _unitprice;
    map['productimg'] = _productimg;
    map['discount'] = _discount;

    return map;
  }

  Cart.fromMap(
    Map<String, dynamic> map,
  )   : _cartid = map['cartid'],
        _productid = map['productid'],
        _productname = map['productname'],
        _totalprice = map['totalprice'],
  _unitprice = map['unitprice'],
        _productimg = map['productimg'],
        _quantity = map['quantity'],
  _discount = map['discount'];
  

}
