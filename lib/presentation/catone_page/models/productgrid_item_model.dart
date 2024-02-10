import '../../../core/app_export.dart';

/// This class is used in the [productgrid_item_widget] screen.
class ProductgridItemModel {
  ProductgridItemModel({
    this.mouseImage,
    this.productName,
    this.discountText,
    this.priceText,
    this.discountedPriceText,
    this.deliveryText,
    this.id,
  }) {
    mouseImage = mouseImage ?? ImageConstant.imgMouseHd1;
    productName = productName ?? "Logitech TP14 Wireless Mouse___";
    discountText = discountText ?? "40%";
    priceText = priceText ?? "₹499";
    discountedPriceText = discountedPriceText ?? "₹299";
    deliveryText = deliveryText ?? "Delivery by 11 PM, Tomorrow";
    id = id ?? "";
  }

  String? mouseImage;

  String? productName;

  String? discountText;

  String? priceText;

  String? discountedPriceText;

  String? deliveryText;

  String? id;
}
