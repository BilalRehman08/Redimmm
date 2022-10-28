class CategoriesModel {
  int? id;
  String? nameEn;
  String? nameBn;
  String? slug;
  String? icon;
  String? color;
  int? isTop;
  int? isActive;
  int? priority;
  String? name;
  String? error;

  CategoriesModel({
    this.id,
    this.nameEn,
    this.nameBn,
    this.slug,
    this.icon,
    this.color,
    this.isTop,
    this.isActive,
    this.priority,
    this.name,
  });

  CategoriesModel.withError(String errorMessage) {
    error = errorMessage;
  }

  CategoriesModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    nameEn = json['name_en'];
    nameBn = json['name_bn'];
    slug = json['slug'];
    icon = json['icon'];
    color = json['color'];
    isTop = json['is_top'];
    isActive = json['is_active'];
    priority = json['priority'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name_en'] = nameEn;
    data['name_bn'] = nameBn;
    data['slug'] = slug;
    data['icon'] = icon;
    data['color'] = color;
    data['is_top'] = isTop;
    data['is_active'] = isActive;
    data['priority'] = priority;
    data['name'] = name;
    return data;
  }
}
