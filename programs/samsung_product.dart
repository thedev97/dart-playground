// ignore_for_file: unnecessary_null_comparison

/*
ques 1- Find List of product names for a given category
ques 2 - Find each product in a category which has max price
ques 3 – what will be your approach for the same without using inbuilt function
*/

void main() {
  List<Product> productsList = [
    Product("s23", "Smartphones", "Galaxy S", 80000),
    Product("Flip 4", "Smartphones", "Galaxy Z", 100000),
    Product("Fold 4", "Smartphones", "Galaxy Z", 90000),
    Product("A54", "Smartphones", "Galaxy A", 15000),
    Product("M12", "Smartphones", "Galaxy M", 8000),
    Product("M13", "Smartphones", "Galaxy M", 4000),
    Product("A23", "Smartphones", "Galaxy A", 25000),
    Product("S23 Cover", "Accessories", "Smartphone Accessories", 900),
    Product("S22 Ultra Cover", "Accessories", "Smartphone Accessories", 800),
    Product("A23", "Accessories", "Smartphone Accessories", 500),
    Product("A23", "Accessories", "Smartphone Accessories", 200),
    Product("Bluetooth Mouse", "Accessories", "Computer Accessories", 200),
  ];
  
  // Specify the category you want to search for
  String targetCategory = "Smartphones"; 

  List<String> productNames = findProductNamesForCategory(productsList, targetCategory);

  if (productNames.isNotEmpty) {
    print("Product names in the '$targetCategory' category: ${productNames.join(', ')}");
  } else {
    print("No products found in the '$targetCategory' category.");
  }

  Product maxPriceProduct = findProductWithMaxPriceForCategory(productsList, targetCategory);

  if (maxPriceProduct != null) {
    print("Product with the maximum price in the '$targetCategory' category: ${maxPriceProduct.name}");
  } else {
    print("No products found in the '$targetCategory' category.");
  }
  
  
  Product minPriceProduct = findProductWithMinPriceByCategory(productsList, "Smartphones");
  if (minPriceProduct != null) {
    print("Product with the minimum price in the 'Smartphones' category: ${minPriceProduct.name}");
  } else {
    print("No product found in the 'Smartphones' category.");
  }
}

List<String> findProductNamesForCategory(List<Product> productsList, String category) {
  List<String> productNames = [];
  for (var product in productsList) {
    if (product.category == category) {
      productNames.add(product.name);
    }
  }
  return productNames;
}

Product findProductWithMaxPriceForCategory(List<Product> productsList, String category) {
  int maxPrice = 0;
  Product? maxPriceProduct;

  for (var product in productsList) {
    if (product.category == category) {
      if (product.price > maxPrice) {
        maxPrice = product.price;
        maxPriceProduct = product;
      }
    }
  }

  return maxPriceProduct!;
}

Product findProductWithMinPriceByCategory(List<Product> productsList, String targetCategory) {
  Product? minPriceProduct;
  
  for (Product product in productsList) {
    if (product.category == targetCategory) {
      if (minPriceProduct == null || product.price < minPriceProduct.price) {
        minPriceProduct = product;
      }
    }
  }
  
  return minPriceProduct!;
}


class Product{
  final String name;
  final String category;
  final String subCategory;
  final int price;

  Product(this.name,this.category,this.subCategory,this.price);
}