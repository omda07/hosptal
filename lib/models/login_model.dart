class LoginModel {
  bool? status;
  String? message;
  UserData? data;

  LoginModel.fromJson(Map<String, dynamic> json) {
    status = json['status'];
    message = json['message'];
    data = json['data'] != null ? UserData.fromJson(json['data']) : null;
  }
}

class UserData {
  int? id;
  String? name;
  String? email;
  String? firstName;
  String? lastName;
  String? gender;
  String? specialist;
  String? birthday;
  String? status;
  String? address;
  String? mobile;
  String? type;
  String? token;

  UserData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    email = json['email'];
    firstName = json['first_name'];
    lastName = json['last_name'];
    gender = json['gender'];
    specialist = json['specialist'];
    birthday = json['birthday'];
    specialist = json['specialist'];
    status = json['status'];
    address = json['address'];
    mobile = json['mobile'];
    type = json['type'];
    token = json['token'];
  }
}
