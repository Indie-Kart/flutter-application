import '../../../core/app_export.dart';

/// This class is used in the [productgrid1_item_widget] screen.
class Productgrid1ItemModel {
  Productgrid1ItemModel({
    this.productName,
    this.discountPercentage,
    this.originalPrice,
    this.discountedPrice,
    this.deliveryTime,
    this.image,
    this.id,
  }) {
    productName = productName ?? "HRx T-shirt, Crew Neck, Cotton__ ";
    discountPercentage = discountPercentage ?? "40%";
    originalPrice = originalPrice ?? "₹499";
    discountedPrice = discountedPrice ?? "₹299";
    deliveryTime = deliveryTime ?? "Delivery by 11 PM, Tomorrow";
    image = image ?? ImageConstant.imgTshirtHd1;
    id = id ?? "";
  }

  String? productName;

  String? discountPercentage;

  String? originalPrice;

  String? discountedPrice;

  String? deliveryTime;

  String? image;

  String? id;
}
