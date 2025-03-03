import 'package:flutter_bloc/flutter_bloc.dart';
import '../data/repo/auth_repo.dart';
import 'auth_state.dart';

class AuthCubit extends Cubit<AuthState>
{
  AuthCubit(): super(AuthInitState());
  static AuthCubit get(context) => BlocProvider.of(context);
  AuthRepo authRepo = AuthRepo();

  //void register()



}