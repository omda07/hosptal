
import 'package:flutter/material.dart';

import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hospital/network/remote/dio_helper.dart';
import 'package:hospital/providers/loginCubit/states.dart';

import '../../models/login_model.dart';
import '../../network/end_points.dart';
import '../../style/icon_broken.dart';

class LoginCubit extends Cubit<LoginStates> {
  LoginCubit() : super(LoginInitialState());

  static LoginCubit get(context) => BlocProvider.of(context);
  late LoginModel loginModel;

  void userLogin({
    required String email,
    required String password,
  }) {
    emit(LoginLoadingState());
    DioHelper.postData(url: LOGIN, data: {
      'email': email,
      'password': password,
    }).then((value) {
      print(value.data);

      loginModel = LoginModel.fromJson(value.data);

      emit(LoginSuccessState(loginModel));
    }).catchError((error) {
      print(error.toString());

      emit(LoginErrorState(error.toString()));
    });
  }

  IconData suffix = IconBroken.Show;
  bool isPassword = true;

  void changePasswordVisibility() {
    isPassword = !isPassword;
    suffix = isPassword ? IconBroken.Show : IconBroken.Hide;
    emit(LoginChangePasswordVisibilityState());
  }
}
