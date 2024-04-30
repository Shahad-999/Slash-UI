import 'package:slash/data/datasources/remote/models/pagination.dart';
import 'package:slash/data/datasources/remote/models/product_data_dto.dart';

class ProductsResponseDto {
  int? statusCode;
  String? message;
  Pagination? pagination;
  List<ProductData>? data;

  ProductsResponseDto({
    this.statusCode,
    this.message,
    this.pagination,
    this.data,
  });
  ProductsResponseDto.fromJson(Map<String, dynamic> json) {
    statusCode = json['statusCode']?.toInt();
    message = json['message']?.toString();
    pagination = (json['pagination'] != null)
        ? Pagination.fromJson(json['pagination'])
        : null;
    if (json['data'] != null) {
      final v = json['data'];
      final arr0 = <ProductData>[];
      v.forEach((v) {
        arr0.add(ProductData.fromJson(v));
      });
      data = arr0;
    }
  }

  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['statusCode'] = statusCode;
    data['message'] = message;
    if (pagination != null) {
      data['pagination'] = pagination!.toJson();
    }
    if (this.data != null) {
      final v = this.data;
      final arr0 = [];
      v?.forEach((v) {
        arr0.add(v.toJson());
      });
      data['data'] = arr0;
    }
    return data;
  }
}
