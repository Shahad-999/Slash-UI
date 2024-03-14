

class Pagination {
/*
{
  "pages": 5,
  "limit": 100
}
*/

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
}
