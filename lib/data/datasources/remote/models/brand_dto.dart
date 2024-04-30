// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

class BrandDto extends Equatable {
  int? id;
  String? brandType;
  String? brandName;
  String? brandFacebookPageLink;
  String? brandInstagramPageLink;
  String? brandWebsiteLink;
  String? brandMobileNumber;
  String? brandEmailAddress;
  String? taxIdNumber;
  String? brandDescription;
  String? brandLogoImagePath;
  int? brandStatusId;
  String? brandStoreAddressId;
  int? brandCategoryId;
  String? deletedAt;
  String? createdAt;
  String? updatedAt;
  int? brandSellerId;
  String? brandId;
  String? slashContractPath;
  int? brandRating;
  int? daysLimitToReturn;
  String? planId;

  BrandDto({
    this.id,
    this.brandType,
    this.brandName,
    this.brandFacebookPageLink,
    this.brandInstagramPageLink,
    this.brandWebsiteLink,
    this.brandMobileNumber,
    this.brandEmailAddress,
    this.taxIdNumber,
    this.brandDescription,
    this.brandLogoImagePath,
    this.brandStatusId,
    this.brandStoreAddressId,
    this.brandCategoryId,
    this.deletedAt,
    this.createdAt,
    this.updatedAt,
    this.brandSellerId,
    this.brandId,
    this.slashContractPath,
    this.brandRating,
    this.daysLimitToReturn,
    this.planId,
  });
  BrandDto.fromJson(Map<String, dynamic> json) {
    id = json['id']?.toInt();
    brandType = json['brand_type']?.toString();
    brandName = json['brand_name']?.toString();
    brandFacebookPageLink = json['brand_facebook_page_link']?.toString();
    brandInstagramPageLink = json['brand_instagram_page_link']?.toString();
    brandWebsiteLink = json['brand_website_link']?.toString();
    brandMobileNumber = json['brand_mobile_number']?.toString();
    brandEmailAddress = json['brand_email_address']?.toString();
    taxIdNumber = json['tax_id_number']?.toString();
    brandDescription = json['brand_description']?.toString();
    brandLogoImagePath = json['brand_logo_image_path']?.toString();
    brandStatusId = json['brand_status_id']?.toInt();
    brandStoreAddressId = json['brand_store_address_id']?.toString();
    brandCategoryId = json['brand_category_id']?.toInt();
    deletedAt = json['deletedAt']?.toString();
    createdAt = json['createdAt']?.toString();
    updatedAt = json['updatedAt']?.toString();
    brandSellerId = json['brand_seller_id']?.toInt();
    brandId = json['brand_id']?.toString();
    slashContractPath = json['slash_contract_path']?.toString();
    brandRating = json['brand_rating']?.toInt();
    daysLimitToReturn = json['days_limit_to_return']?.toInt();
    planId = json['planId']?.toString();
  }
  Map<String, dynamic> toJson() {
    final data = <String, dynamic>{};
    data['id'] = id;
    data['brand_type'] = brandType;
    data['brand_name'] = brandName;
    data['brand_facebook_page_link'] = brandFacebookPageLink;
    data['brand_instagram_page_link'] = brandInstagramPageLink;
    data['brand_website_link'] = brandWebsiteLink;
    data['brand_mobile_number'] = brandMobileNumber;
    data['brand_email_address'] = brandEmailAddress;
    data['tax_id_number'] = taxIdNumber;
    data['brand_description'] = brandDescription;
    data['brand_logo_image_path'] = brandLogoImagePath;
    data['brand_status_id'] = brandStatusId;
    data['brand_store_address_id'] = brandStoreAddressId;
    data['brand_category_id'] = brandCategoryId;
    data['deletedAt'] = deletedAt;
    data['createdAt'] = createdAt;
    data['updatedAt'] = updatedAt;
    data['brand_seller_id'] = brandSellerId;
    data['brand_id'] = brandId;
    data['slash_contract_path'] = slashContractPath;
    data['brand_rating'] = brandRating;
    data['days_limit_to_return'] = daysLimitToReturn;
    data['planId'] = planId;
    return data;
  }

  @override
  List<Object?> get props => [
        id,
        brandType,
        brandName,
        brandFacebookPageLink,
        brandInstagramPageLink,
        brandWebsiteLink,
        brandMobileNumber,
        brandEmailAddress,
        taxIdNumber,
        brandDescription,
        brandLogoImagePath,
        brandStatusId,
        brandStoreAddressId,
        brandCategoryId,
        deletedAt,
        createdAt,
        updatedAt,
        brandSellerId,
        brandId,
        slashContractPath,
        brandRating,
        daysLimitToReturn,
        planId,
      ];
}
