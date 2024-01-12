import 'package:basketnike/product_model.dart';

class Data {
  static List<ProductModel> generateProducts(){
    return [
      ProductModel(
        1,
        "assets/shoes_1.png",
        "Creter Impact",
        "Men's Shoes",
        "chaussures pour homme",
        18000
      ),
      ProductModel(
          2,
          "assets/shoes_2.png",
          "Air - Max Pre Day",
          "Men's Shoes",
          "chaussures pour homme",
          27000
      ),
      ProductModel(
          3,
          "assets/shoes_3.png",
          "Air Max 51",
          "Men's Shoes",
          "chaussures pour homme",
          18000
      ),
      ProductModel(
          4,
          "assets/shoes_4.png",
          "EM Shoes",
          "Men's Shoes",
          "chaussures pour homme",
          35000
      ),
    ];
  }

  static List<ProductModel> generateCategories(){
    return [
      ProductModel(
          1,
          "assets/shoes_1.png",
          "Lifestyle",
          "Men's Shoes",
          "chaussures pour homme",
          18000
      ),
      ProductModel(
          2,
          "assets/shoes_2.png",
          "Basketball",
          "Men's Shoes",
          "chaussures pour homme",
          25000
      ),
      ProductModel(
          3,
          "assets/shoes_3.png",
          "Running",
          "Men's Shoes",
          "chaussures pour homme",
          18000
      ),
      ProductModel(
          4,
          "assets/shoes_4.png",
          "Rugby",
          "Men's Shoes",
          "chaussures pour homme",
          35000
      ),
    ];
  }
}