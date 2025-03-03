import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_application/Features/Home/manager/home_state.dart';

class HomeCubit extends Cubit<HomeState>
{
  HomeCubit(): super(HomeInitState());

  bool changeSwitch = false;
  bool? changeCheckbox = false;

  static HomeCubit get(context) => BlocProvider.of(context);
  void onChangeSwitch(bool value)
  {
    changeSwitch = value;
    emit(HomeSuccessState());
  }

  void onChangeCheckbox(bool? value)
  {
    changeCheckbox = value;
    emit(HomeSuccessState());
  }
}