class UserModel
{
  late String name;
  int? age;
  late String email;
  late String pasword;

  UserModel({required this.name, required this.email, required this.pasword, this.age});
}