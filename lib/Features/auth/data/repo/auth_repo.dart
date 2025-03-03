import 'package:dartz/dartz.dart';
import 'package:flutter_application/Features/auth/data/models/user_model.dart';

class AuthRepo
{
  List<UserModel> users = [];

  Either<String, void> register({required UserModel user})
  {
    try{
      users.add(user);
      return right(0);
    }catch(e)
    {
      return left(e.toString());
    }
  }

  void login({required String email, required String password})
  {

  }
}