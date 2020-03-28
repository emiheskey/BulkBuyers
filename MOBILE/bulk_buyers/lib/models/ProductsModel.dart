class ProductsModel{
int productid;
int prodcatid;
String productname;
String description;
int price;
int discount;
int status;
String productimg;

//ProductsModel(int productid, int prodcatid,String productname, String description,  int price, int discount, int status, String productimg){
//  this.productid = productid;
//  this.prodcatid = prodcatid;
//  this.productname = productname;
//  this.description = description;
//  this.price = price;
//  this.discount = discount;
//  this.status = status;
//  this.productimg = productimg;
//
//}
  ProductsModel({
    this.productid,
    this.prodcatid,
    this.productname,
    this.description,
    this.price,
    this.discount,
    this.status,
    this.productimg ,});


factory ProductsModel.fromJson(Map<String, dynamic> parsedJson){
  return ProductsModel(
      productid: parsedJson['productid'],
      prodcatid : parsedJson['prodcatid'],
      productname : parsedJson ['productname'],
      description : parsedJson ['description'],
      price : parsedJson['price'],
      discount: parsedJson['discount'],
      status : parsedJson['status'],
      productimg : parsedJson['productimg']
  );
}


}