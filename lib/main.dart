import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:payments/blocOsber.dart';
import 'package:payments/cores/DioManager/di.dart';
import 'package:payments/cores/DioManager/dio_manager.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:device_preview/device_preview.dart';
import 'package:payments/features/login_feature/presentation/views/login/login_cubit.dart';
import 'package:payments/features/login_feature/presentation/views/login_screen.dart';
import 'package:payments/features/login_feature/presentation/views/widgets/homeScreen.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  Bloc.observer = MyBlocObserver();
  setup();
  runApp(
    DevicePreview(
      enabled: false,
      builder: (context) => CheckoutApp(), // Wrap your app
    ),
  );
}

class CheckoutApp extends StatelessWidget {
  const CheckoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      child: BlocProvider(
        create: (context) => getIt.get<LoginCubit>(),
        child: MaterialApp(
          debugShowCheckedModeBanner: false,
          home: HomeScreen(),
        ),
      ),
    );
  }
}
