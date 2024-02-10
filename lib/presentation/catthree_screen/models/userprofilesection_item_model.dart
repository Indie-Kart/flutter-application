import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.cricketBatImage,
    this.cricketBatText,
    this.fortyText,
    this.priceText,
    this.priceText2,
    this.deliveryText,
    this.id,
  }) {
    cricketBatImage = cricketBatImage ?? ImageConstant.img111;
    cricketBatText = cricketBatText ?? "GM Professional Cricket Bat ___ ";
    fortyText = fortyText ?? "40%";
    priceText = priceText ?? "₹4999";
    priceText2 = priceText2 ?? "₹2999";
    deliveryText = deliveryText ?? "Delivery by 11 PM, Tomorrow";
    id = id ?? "";
  }

  String? cricketBatImage;

  String? cricketBatText;

  String? fortyText;

  String? priceText;

  String? priceText2;

  String? deliveryText;

  String? id;
}
