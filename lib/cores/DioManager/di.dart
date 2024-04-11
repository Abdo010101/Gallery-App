import 'package:payments/cores/DioManager/dio_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:payments/features/login_feature/data/data_source/remote/repostory.dart';
import 'package:payments/features/login_feature/domain/repostroy_imp.dart';
import 'package:payments/features/login_feature/presentation/views/login/login_cubit.dart';

final GetIt getIt = GetIt.instance;

void setup() {
  getIt.registerLazySingleton(() => DioHelper());
  _setupRepositories();
  setupBlocs();
}

void setupBlocs() {
  getIt.registerFactory<LoginCubit>(() => LoginCubit(getIt.get()));
}

void _setupRepositories() {
  getIt.registerSingleton<LoginRepo>(LoginRepoImp(getIt.get<DioHelper>()));
}
