class RegisterModel {
  String? userName;
  String? email;
  String? password;
  String? confirmPassWord;

  RegisterModel(
      { required this.userName,required this.email, required this.password, required this.confirmPassWord});

  RegisterModel.fromJson(Map<String, dynamic> json) {
    userName = json['UserName'];
    email = json['Email'];
    password = json['Password'];
    confirmPassWord = json['ConfirmPassWord'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['UserName'] = this.userName;
    data['Email'] = this.email;
    data['Password'] = this.password;
    data['ConfirmPassWord'] = this.confirmPassWord;
    return data;
  }
}
