// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class Pagination extends Equatable {
  int? pages;
  int? limit;

  Pagination({
    this.pages,
    this.limit,
  });
  Pagination.fromJson(Map<String, dynamic> json) {
    pages = json['pages']?.toInt();
    limit = json['limit']?.toInt();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['pages'] = pages;
    data['limit'] = limit;
    return data;
  }

  @override
  List<Object?> get props => [
        pages,
        limit,
      ];
}
