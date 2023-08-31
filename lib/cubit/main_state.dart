part of 'main_cubit.dart';

@immutable
abstract class MainState {}

class MainInitial extends MainState {}

//! --------------------------------------------------
class LoadingLoginState extends MainState {}

class SuccessLoginState extends MainState {}

class ErrorLoginState extends MainState {}

//! --------------------------------------------------
class LoadingRegisterState extends MainState {}

class SuccessRegisterState extends MainState {}

class ErrorRegisterState extends MainState {}

//! --------------------------------------------------

class LoadingSuggestJobs extends MainState {}

class SuccessSuggestJobs extends MainState {}

class ErrorSuggestJobs extends MainState {}

//! --------------------------------------------------
class LoadingEdiitBioPhone extends MainState {}

class SuccessEdiitBioPhone extends MainState {}

class ErrorEdiitBioPhone extends MainState {}
