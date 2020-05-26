import 'package:bulk_buyers/src/data/local/database_helper.dart';

import '../base_model.dart';
class ProductDetailsViewModel extends BaseModel {
  getDetails(id)async{

    var db = DatabaseHelper();
    var productDetails = await db.getProduct(id);
    print(productDetails.productname);
    return productDetails;
  }
}