import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:evolvers/ui/navigation/cubit/router_manager.dart';
import 'package:evolvers/my_app.dart';

import 'core/common/database/database_manager.dart';

class ProvidersBloc extends StatelessWidget {
  const ProvidersBloc({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => RouterManager(),
        ),
        BlocProvider(
          create: (context) => DatabaseManager()..init(),
        ),
      ],
      child: const MyApp(),
    );
  }
}
