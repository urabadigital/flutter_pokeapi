import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pragma/ui/navigation/cubit/router_manager.dart';
import 'package:pragma/my_app.dart';

class MultiBloc extends StatelessWidget {
  const MultiBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        // BlocProvider(
        //   create: (context) => ThemeCubit(),
        // ),
        BlocProvider(
          create: (context) => RouterManager(),
        ),
        // BlocProvider(
        //   create: (context) => HomeNavigation(
        //     navigation: getIt<RouterManager>(),
        //   ),
        // )
      ],
      child: const MyApp(),
    );
  }
}
