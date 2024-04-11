import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:payments/cores/DioManager/dio_manager.dart';
import 'package:payments/cores/endpoints.dart';
import 'package:payments/features/login_feature/data/data_source/remote/repostory.dart';
import 'package:payments/features/login_feature/domain/response/Models/user_login/user_login.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit(this.loginRepo) : super(LoginInitial());
  final LoginRepo loginRepo;

  Future<dynamic> userLoginCubit(
      {required String email, required String password}) async {
    print('this before the deug mode ');
    emit(LoginLoading());
    var res = await loginRepo.userLogin(email: email, password: password);
    print(res);
    if (res == null) {
      emit(Loginerror());
      return res;
    } else {
      emit(LoginSucess());
      return res;
    }
  }
}
