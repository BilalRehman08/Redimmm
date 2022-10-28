class UserModel {
  int? id;
  String? name;
  String? phone;
  String? email;
  int? phoneConfirmed;
  int? isActive;
  String? gender;
  String? accessToken;
  String? referredByCode;
  String? referralCode;
  String? cashoutMethod;
  int? cashoutValue;

  UserModel({
    this.id,
    this.name,
    this.phone,
    this.email,
    this.phoneConfirmed,
    this.isActive,
    this.gender,
    this.accessToken,
    this.referredByCode,
    this.referralCode,
    this.cashoutMethod,
    this.cashoutValue,
  });

  UserModel.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    phone = json['phone'];
    email = json['email'];
    phoneConfirmed = json['phone_confirmed'];
    isActive = json['is_active'];
    gender = json['gender'];
    accessToken = json['access_token'];
    referredByCode = json['referred_by_code'];
    referralCode = json['referral_code'];
    cashoutMethod = json['cashout_method'];
    cashoutValue = json['cashout_value'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['id'] = id;
    data['name'] = name;
    data['phone'] = phone;
    data['email'] = email;
    data['phone_confirmed'] = phoneConfirmed;
    data['is_active'] = isActive;
    data['gender'] = gender;
    data['access_token'] = accessToken;
    data['referred_by_code'] = referredByCode;
    data['referral_code'] = referralCode;
    data['cashout_method'] = cashoutMethod;
    data['cashout_value'] = cashoutValue;
    return data;
  }
}
