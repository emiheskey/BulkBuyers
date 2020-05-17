import 'dart:convert';

import 'package:bulk_buyers/src/data/local/database_helper.dart';
import 'package:bulk_buyers/src/data/remote/store_api_provider.dart';
import 'package:bulk_buyers/src/data/repository.dart';
import 'package:bulk_buyers/src/models/cart_model.dart';
import 'package:bulk_buyers/src/models/cart_items.dart';
import 'package:bulk_buyers/src/models/products_model.dart';
import 'package:bulk_buyers/src/models/place_order_model.dart';
import 'package:bulk_buyers/src/models/shop_model.dart';
import 'package:bulk_buyers/src/utils/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' show post;

import '../base_model.dart';

export 'package:bulk_buyers/src/enums/view_state.dart';

/// Contains logic for a list view with the general expected functionality.
class ShopViewModel extends BaseModel {
  List<StoreItems> listData;
  List _productData = [];
  List _cart = [];
  List _details = [];
  List _wishlist = [];
  List _checkout = [];
  bool isSuccessful = true;
  String cartMsg = "";
  String discountMsg = "";
  String subtotal;
  int total;
  int totalQty;
  double discount = 0;
  int disID = 0;
  int id = 0;
  double percentage = 0;
  bool isDiscounted = false;

  var db = new DatabaseHelper();
  var api = new ApiProvider();
  var repo = new Repository();
  final _root = Constants.BASE_URL;

  Future populateShop() async {
    // var res = db.insertRemoteData();
    var res = repo.fetchUser();
    res = repo.fetchProducts();
    this.fetchCartData();
    repo.fetchUserOrders();
    this.fecthStoreProducts();
    notifyListeners();
    print(res);
  }

  Future fecthStoreProducts() async {
    setState(ViewState.Busy);
    _productData = await db.getAllProducts();
    for (int i = 0; i < _productData.length; i++) {
      Shop shop = Shop.map(_productData[i]);
    }

    await Future.delayed(Duration(seconds: 0));

    _productData = List<StoreItems>.generate(
        _productData.length,
        (index) => StoreItems(
            productname: _productData[index]['productname'],
            description: _productData[index]['description'],
            productid: _productData[index]['productid'],
            productimg: _productData[index]['productimg'],
            discount: _productData[index]['discount'],
            price: _productData[index]['price'],
            wishlist: _productData[index]['wishlist'] == 0,
            quantity: _productData[index]['quantity']));

    if (_productData == null) {
      setState(ViewState.Error);
    } else {
      setState(_productData.length == 0
          ? ViewState.NoDataAvailable
          : ViewState.DataFetched);
    }
    notifyListeners();
  }

  List get shopListing => _productData;
  List get cartListing => _cart;
  List get productDetails => _details;
  List get wishListing => _wishlist;

  /*
  *
  * Wish List Section
  * Add to wish List
  * Show All items in Wish List
  * */
  updateWishlist(int id, bool state) {
    var reponse = db.addToWishList(id, state);

    print(reponse);
    this.fecthStoreProducts();
    this.fetchWishList();
    notifyListeners();
  }

  Future fetchWishList() async {
    setState(ViewState.Busy);

    _wishlist = await db.getWishLists();
    for (int i = 0; i < _wishlist.length; i++) {
      Shop shop = Shop.map(_wishlist[i]);
    }

    await Future.delayed(Duration(seconds: 0));

    _wishlist = List<StoreItems>.generate(
        _wishlist.length,
        (index) => StoreItems(
            productname: _wishlist[index]['productname'],
            description: _wishlist[index]['description'],
            productid: _wishlist[index]['productid'],
            productimg: _wishlist[index]['productimg'],
            price: _wishlist[index]['price'],
            wishlist: _wishlist[index]['wishlist'] == 0,
            quantity: _wishlist[index]['quantity']));

    if (_wishlist == null) {
      setState(ViewState.Error);
    } else {
      setState(_wishlist.length == 0
          ? ViewState.NoDataAvailable
          : ViewState.DataFetched);
    }
  }

  // --------------------- End Wish List Section ---------------
/*
* Cart Section
* Add to cart
* Remove From Cart
* Show List of Items in the Cart.
* Update the Cart Price
* */

  Future fetchCartData() async {
    setState(ViewState.Busy);

    _cart = await db.getCartList();
    for (int i = 0; i < _cart.length; i++) {
      Cart cart = Cart.map(_cart[i]);
    }
    await Future.delayed(Duration(seconds: 0));

    _cart = List<CartItems>.generate(
        _cart.length,
        (index) => CartItems(
            productname: _cart[index]['productname'],
            totalprice: _cart[index]['totalprice'],
            productimg: _cart[index]['productimg'],
            quantity: _cart[index]['quantity'],
            productid: _cart[index]['productid'],
            cartid: _cart[index]['cartid'],
            unitprice: _cart[index]['unitprice']));

    if (_cart == null) {
      setState(ViewState.Error);
    } else {
      setState(_cart.length == 0
          ? ViewState.NoDataAvailable
          : ViewState.DataFetched);
    }
    this.sum();
    notifyListeners();
  }

  void addToCart(int id, String name, int price, int quantity, String image,
      int unitprice, int discount) async {
    _cart = await db.getCartList();

    int _index = _cart.indexWhere((item) => item['productid'] == id);
    if (_index > -1) {
      isSuccessful = false;
      cartMsg = "${name.toUpperCase()} already in Cart .";
      print(cartMsg);
    } else {
      var response = await db.addToCart(
          Cart(id, name, price, quantity, unitprice, image, discount));
      isSuccessful = true;
      cartMsg = "${name.toUpperCase()} was successfully added to Cart .";
      print('This is the DB Insert Cart Response: $response');
    }
    notifyListeners();

    print(
        'id: $id, name: $name, price: $price, Qty: $quantity, img: $image, unit price: $unitprice');
  }

  getDiscount(String discountCode) async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    String token = sharedPreferences.getString("token");

    Map body = {"code": discountCode};

    try {
      var response = await post("$_root/discount/code",
          headers: {
            "Accept": "application/json",
            "Authorization": "Bearer $token",
          },
          body: body);

      print(response.statusCode);
      if (response.statusCode == 200) {
        pragma(response.body);
        var data = json.decode(response.body);
        var code = data['percent'];
        percentage = code.toDouble();
        id = data['discountid'];
        print("this is ye pervebt: $percentage");
        isDiscounted = true;
        discountMsg = "";
        this.sum();
        notifyListeners();
      } else if (response.statusCode == 203) {
        discountMsg = "You have used this code before";
      } else {
        discountMsg = "Discount Code Does not exist";
      }
    } catch (execption) {
      print(execption);
    }
    notifyListeners();
  }

  undoDiscount() async {
    id = 0;
    percentage = 0;
    this.sum();
    isDiscounted = false;
    notifyListeners();
  }

  sum() async {
    var sumation = await db.cartTotalPrice();

    subtotal = sumation.toString();
    try {
      disID = id;
      discount = (sumation / 100 * percentage).roundToDouble();
      print(
          "$this is the percentage: $percentage and this is the discout amount: ${discount.roundToDouble()}");
      print("this is the dicounted Value $discount");
      total = sumation - discount.round();
      print("this is the final price after discount");
      // total = 500 + sumation;
    } on Exception catch (e) {
      print(e);
    }
    notifyListeners();
  }

  updateCartPrice(int productid, int price, int quantity) async {
    var response = db.updateCartPriceAndQty(productid, price, quantity);
    notifyListeners();
    print(response);

    List cart = await db.getCartList();
    print('this is itens : ${cart.toString()}');
    this.sum();
    this.fetchCartData();
    notifyListeners();
  }

  removeFromCart(int id) async {
    print("This is the ID: $id passed for delete");
    var response = await db.deleteCartItems(id);
    this.fetchCartData();
    print(response);
    notifyListeners();
  }

  completeOrder(
      String ref, int discountid, int discount, String address) async {
    var sumation = await db.cartTotalPrice();
    var storeTotal = sumation - discount;
    _checkout = await db.getCartCheckoutItems();
    totalQty = await db.cartTotalQuantities();
    print(
        "totalcost: $storeTotal, totalQTY: $totalQty, payref: $ref, products: $_checkout");
    var order = await api.postOrders(PostOrders(
        totalcost: storeTotal,
        totalqty: totalQty,
        discountid: discountid,
        discount: discount,
        paymentrefno: ref,
        address: address,
        products: _checkout));
    //print(_checkout);
    print(order);

    var response = await db.clearCartDB();
    print(response);
  }
}
