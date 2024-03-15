
class AvailablePropertiesDto {
  final String? property;
  final List<Values>? values;

  AvailablePropertiesDto({
    this.property,
    this.values,
  });

  AvailablePropertiesDto.fromJson(Map<String, dynamic> json)
      : property = json['property'] as String?,
        values = (json['values'] as List?)
            ?.map((dynamic e) => Values.fromJson(e as Map<String, dynamic>))
            .toList();

  Map<String, dynamic> toJson() =>
      {'property': property, 'values': values?.map((e) => e.toJson()).toList()};

}

class Values {
  final String? value;
  final int? id;

  Values({
    this.value,
    this.id,
  });

  Values.fromJson(Map<String, dynamic> json)
      : value = json['value'] as String?,
        id = json['id'] as int?;

  Map<String, dynamic> toJson() => {'value': value, 'id': id};
}
