import 'package:equatable/equatable.dart';
import 'package:slash/domain/models/product_property.dart';
import 'package:slash/utils/ex.dart';

class AvailablePropertiesDto extends Equatable {
  final String? property;
  final List<ValuesDto>? values;

  const AvailablePropertiesDto({
    this.property,
    this.values,
  });

  AvailablePropertiesDto.fromJson(Map<String, dynamic> json)
      : property = json['property'] as String?,
        values = (json['values'] as List?)
            ?.map((dynamic e) => ValuesDto.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'property': property, 'values': values?.map((e) => e.toJson()).toList()};

  ProductProperty toModel() {
    return ProductProperty(
        property: property ?? '',
        propertyType: property.toString().toLowerCase().toPropertyType(),
        values: values?.toSet().map((e) => e.toModel()).toList() ?? []);
  }

  @override
  List<Object?> get props => [
        property,
        values,
      ];
}

class ValuesDto extends Equatable {
  final String? value;
  final int? id;

  const ValuesDto({
    this.value,
    this.id,
  });

  ValuesDto.fromJson(Map<String, dynamic> json)
      : value = json['value'] as String?,
        id = json['id'] as int?;

  Map<String, dynamic> toJson() => {'value': value, 'id': id};

  @override
  bool operator ==(Object other) {
    return other is ValuesDto && other.value == value;
  }

  @override
  int get hashCode => value.hashCode;

  Values toModel() {
    return Values(value: value ?? '', id: id ?? -1);
  }

  @override
  List<Object?> get props => [
        value,
        id,
      ];
}
