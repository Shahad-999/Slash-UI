// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class ProductVariationsProductStatusLookups extends Equatable {
  int? id;
  String? name;
  String? createdAt;
  String? updatedAt;

  ProductVariationsProductStatusLookups({
    this.id,
    this.name,
    this.createdAt,
    this.updatedAt,
  });
  ProductVariationsProductStatusLookups.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    name = json['name']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        name,
        createdAt,
        updatedAt,
      ];
}
