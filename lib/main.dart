import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:hospital/style/lightTheme.dart';
import 'package:hospital/views/screens/splash_screen.dart';
import 'constant.dart';
import 'network/bloc_observer.dart';
import 'network/local/cache_helper.dart';
import 'network/remote/dio_helper.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
  await DioHelper.init();
  await CacheHelper.init();

  token = CacheHelper.getData(key: token.toString()).toString();
  print('token : ${token.toString()}');

  BlocOverrides.runZoned(
        () {
      runApp(MyApp());
    },
    blocObserver: MyBlocObserver(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Hospital',
      theme: lightTheme(context),
      home:  SplashScreen(),
    );
  }
}

