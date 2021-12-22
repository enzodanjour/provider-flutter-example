
class UserModel {
  final String name;
  final String imgAvatar;
  final String birthDate;

  set birthDate(String? data)=>birthDate = data;
  
  UserModel({
    required this.name,
    required this.imgAvatar,
    required this.birthDate,
  });

  
}
