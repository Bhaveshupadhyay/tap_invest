import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:tap_invest/core/theme/theme.dart';
import 'package:tap_invest/features/bond/presentation/cubits/bond/bond_cubit.dart';
import 'package:tap_invest/features/bond/presentation/cubits/bond_details/bond_details_cubit.dart';
import 'package:tap_invest/features/bond/presentation/screens/home.dart';

import 'injection_container.dart' as di;

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await dotenv.load(fileName: ".env");
  await di.init();
  runApp(ScreenUtilInit(
    designSize: const Size(390, 874),
    minTextAdapt: true,
    splitScreenMode: true,
    builder: (_,child){
      return const MyApp();
    },
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BondCubit>(
          create: (_) => di.sl<BondCubit>(),
        ),
        BlocProvider<BondDetailsCubit>(
          create: (_) => di.sl<BondDetailsCubit>(),
        ),
      ],
      child: MaterialApp(
        title: 'Tap Invest',
        theme: AppTheme.dark(),
        home: const Home(),
      ),
    );
  }
}
