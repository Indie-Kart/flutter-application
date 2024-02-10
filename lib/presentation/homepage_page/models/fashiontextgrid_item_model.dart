import '../../../core/app_export.dart';

/// This class is used in the [fashiontextgrid_item_widget] screen.
class FashiontextgridItemModel {
  FashiontextgridItemModel({
    this.fashionImage,
    this.fashionText,
    this.id,
  }) {
    fashionImage = fashionImage ?? ImageConstant.imgImage2;
    fashionText = fashionText ?? "Fashion";
    id = id ?? "";
  }

  String? fashionImage;

  String? fashionText;

  String? id;
}
