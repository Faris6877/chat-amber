// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

class UserModel {
  String uid;
  String userName;
  String userPassword;
  String userConfirmPassword;
  UserModel({
    required this.uid,
    required this.userName,
    required this.userPassword,
    required this.userConfirmPassword,
  });

  UserModel copyWith({
    String? uid,
    String? userName,
    String? userPassword,
    String? userConfirmPassword,
  }) {
    return UserModel(
      uid: uid ?? this.uid,
      userName: userName ?? this.userName,
      userPassword: userPassword ?? this.userPassword,
      userConfirmPassword: userConfirmPassword ?? this.userConfirmPassword,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'uid': uid,
      'userName': userName,
      'userPassword': userPassword,
      'userConfirmPassword': userConfirmPassword,
    };
  }

  factory UserModel.fromMap(Map<String, dynamic> map) {
    return UserModel(
      uid: map['uid'] as String,
      userName: map['userName'] as String,
      userPassword: map['userPassword'] as String,
      userConfirmPassword: map['userConfirmPassword'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory UserModel.fromJson(String source) => UserModel.fromMap(json.decode(source) as Map<String, dynamic>);


}
