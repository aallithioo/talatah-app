import '.././datasources/constant.dart';

class TalatahData {
  TalatahData({
    this.id,
    this.vendor = '',
    this.email = '',
    this.password = '',
  });

  int? id;
  String vendor, email, password;

  factory TalatahData.fromMap(Map<String, dynamic> data) {
    return TalatahData(
      id: data[Init.talatahId],
      vendor: data[Init.talatahVendor],
      email: data[Init.talatahEmail],
      password: data[Init.talatahPassword],
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      Init.talatahId: id,
      Init.talatahVendor: vendor,
      Init.talatahEmail: email,
      Init.talatahPassword: password,
    };
  }
}
