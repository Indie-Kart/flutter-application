import '../../../core/app_export.dart';

/// This class is used in the [productgrid2_item_widget] screen.
class Productgrid2ItemModel {
  Productgrid2ItemModel({
    this.productImage,
    this.productName,
    this.discountText,
    this.priceText,
    this.discountedPriceText,
    this.deliveryText,
    this.id,
  }) {
    productImage = productImage ?? ImageConstant.img21;
    productName = productName ?? "Lakme Absolute Nail Polish, Blue_";
    discountText = discountText ?? "40%";
    priceText = priceText ?? "₹499";
    discountedPriceText = discountedPriceText ?? "₹299";
    deliveryText = deliveryText ?? "Delivery by 11 PM, Tomorrow";
    id = id ?? "";
  }

  String? productImage;

  String? productName;

  String? discountText;

  String? priceText;

  String? discountedPriceText;

  String? deliveryText;

  String? id;
}
