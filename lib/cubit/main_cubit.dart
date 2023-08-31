import 'package:dio/dio.dart';
import 'package:finalamitproject/models/login_response.dart';
import 'package:finalamitproject/models/sugesstjobs_response.dart';
import 'package:finalamitproject/repro/end_points.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../repro/dio_helper.dart';

part 'main_state.dart';

class MainCubit extends Cubit<MainState> {
  MainCubit() : super(MainInitial());

  static MainCubit get(context) => BlocProvider.of(context);

  LoginResponse? user;
  // User? user;

  loginFunc(String email, String pass) async {
    emit(LoadingLoginState());
    await DioHelper.dio
        .post(
      loginEndpoint,
      data: FormData.fromMap({
        "email": email,
        "password": pass,
      }),
    )
        .then((value) {
      if (value.statusCode == 200) {
        user = LoginResponse.fromJson(value.data);

        print(user!.token);

        emit(SuccessLoginState());
      } else {
        print(value.data);
        emit(ErrorLoginState());
      }
    }).catchError((error) {
      print(error.toString());
      emit(ErrorLoginState());
    });
  }

  edit_bio_phone_address(
      String id, String bio, String address, String mobile) async {
    emit(LoadingEdiitBioPhone());
    await DioHelper.dio
        .put("user/profile/edit/$id?bio=sshs&address=tanta&mobile=011111155",
            options: Options(headers: {
              "Authorization": "Bearer ${user!.token!}",
            }),
            queryParameters: {
          "bio": bio,
          "address": address,
          "mobile": mobile,
        }).then((value) {
      if (value.statusCode == 200) {
        emit(SuccessEdiitBioPhone());
      } else {
        print(value.data);
        emit(ErrorEdiitBioPhone());
      }
    }).catchError((error) {
      print(error);
      emit(ErrorEdiitBioPhone());
    });
  }
  

  register(String name, String email, String pass) async {
    emit(LoadingRegisterState());
    await DioHelper.dio.post(
      registerEndpoint,
      queryParameters: {
        "name": name,
        "email": email,
        "password": pass,
      },
    ).then((value) {
      if (value.statusCode == 200) {
        emit(SuccessRegisterState());
      } else {
        print(value.data);
        emit(ErrorRegisterState());
      }
    }).catchError((error) {
      print(error.toString());
      emit(ErrorRegisterState());
    });
  }

  List<getSuggestJobsModel> suggestJob = [];
  getSuggestJobs() async {
    await DioHelper.dio
        .get(suggestJobsEndpoint,
            options: Options(headers: {
              "Authorization": "Bearer ${user!.token!}",
            }))
        .then((value) {
      if (value.statusCode == 200) {
        for (var element in value.data["data"]) {
          suggestJob.add(getSuggestJobsModel.fromJson(element));
        }

        print(suggestJob.length);

        emit(SuccessSuggestJobs());
      } else {
        print(value.data);
        emit(ErrorSuggestJobs());
      }
    }).catchError((error) {
      print(error);
      emit(ErrorSuggestJobs());
    });
  }
}
