class StoreItems {
  final int productid;
  final int prodcatid;
  final String productname;
  final String description;
  final int price;
  final int discount;
  final int quantity;
  final bool wishlist;
  final String productimg;

  StoreItems(
      {this.productid,
      this.prodcatid,
      this.productname,
      this.description,
      this.price,
      this.discount,
      this.quantity,
      this.wishlist,
      this.productimg});
}
