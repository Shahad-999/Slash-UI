import 'package:equatable/equatable.dart';
import 'package:slash/data/datasources/remote/models/product_details_data_dto.dart';
import 'package:slash/domain/models/product_details.dart';

class ProductDetailsResponseDto extends Equatable {
  final ProductDetailsDataDto? data;
  final String? message;
  final int? statusCode;

  const ProductDetailsResponseDto({
    this.data,
    this.message,
    this.statusCode,
  });

  ProductDetailsResponseDto.fromJson(Map<String, dynamic> json)
      : data = (json['data'] as Map<String, dynamic>?) != null
            ? ProductDetailsDataDto.fromJson(
                json['data'] as Map<String, dynamic>)
            : null,
        message = json['message'] as String?,
        statusCode = json['statusCode'] as int?;

  Map<String, dynamic> toJson() =>
      {'data': data?.toJson(), 'message': message, 'statusCode': statusCode};

  ProductDetails toModel() {
    return ProductDetails(
        id: data?.id ?? -1,
        name: data?.name ?? '',
        brandId: data?.brandId ?? -1,
        description: data?.description ?? '',
        brandLogo: data?.brandImage ?? '',
        brandName: data?.brandName ?? '',
        variations: data?.variations?.map((e) => e.toModel()).toList() ?? [],
        availableProperties:
            data?.avaiableProperties?.map((e) => e.toModel()).toList() ?? []);
  }

  @override
  List<Object?> get props => [
        data,
        message,
        statusCode,
      ];
}
