class StoresModel {
  int? id;
  String? nameEn;
  String? nameBn;
  String? slug;
  String? url;
  String? descriptionEn;
  String? descriptionBn;
  String? logo;
  int? rating;
  String? maxCashback;
  String? percentNow;
  String? percentOld;
  String? notifiedIn;
  String? cashbackIn;
  int? isActive;
  int? priority;
  int? isTop;
  int? categoryId;
  String? name;
  String? description;

  StoresModel({
    this.id,
    this.nameEn,
    this.nameBn,
    this.slug,
    this.url,
    this.descriptionEn,
    this.descriptionBn,
    this.logo,
    this.rating,
    this.maxCashback,
    this.percentNow,
    this.percentOld,
    this.notifiedIn,
    this.cashbackIn,
    this.isActive,
    this.priority,
    this.isTop,
    this.categoryId,
    this.name,
    this.description,
  });

  StoresModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameEn = json['name_en'];
    nameBn = json['name_bn'];
    slug = json['slug'];
    url = json['url'];
    descriptionEn = json['description_en'];
    descriptionBn = json['description_bn'];
    logo = json['logo'];
    rating = json['rating'];
    maxCashback = json['max_cashback'];
    percentNow = json['percent_now'];
    percentOld = json['percent_old'];
    notifiedIn = json['notified_in'];
    cashbackIn = json['cashback_in'];
    isActive = json['is_active'];
    priority = json['priority'];
    isTop = json['is_top'];
    categoryId = json['category_id'];
    name = json['name'];
    description = json['description'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name_en'] = nameEn;
    data['name_bn'] = nameBn;
    data['slug'] = slug;
    data['url'] = url;
    data['description_en'] = descriptionEn;
    data['description_bn'] = descriptionBn;
    data['logo'] = logo;
    data['rating'] = rating;
    data['max_cashback'] = maxCashback;
    data['percent_now'] = percentNow;
    data['percent_old'] = percentOld;
    data['notified_in'] = notifiedIn;
    data['cashback_in'] = cashbackIn;
    data['is_active'] = isActive;
    data['priority'] = priority;
    data['is_top'] = isTop;
    data['category_id'] = categoryId;
    data['name'] = name;
    data['description'] = description;
    return data;
  }
}
