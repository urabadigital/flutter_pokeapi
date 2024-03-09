import 'package:flutter/material.dart';
import 'package:evolvers/ui/home/widget/pokemon_list_view.dart';
import 'package:evolvers/ui/home/widget/search_bar.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../core/common/utils/helpers.dart';
import '../bloc/home_bloc.dart';

class HomeMovil extends StatelessWidget {
  const HomeMovil({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<HomeBloc, HomeState>(
      listener: (context, state) {
        if (state.failure != null) {
          ShowFailure.instance.mapFailuresToNotification(
            context,
            failure: state.failure!,
          );
        }
      },
      child: const Column(
        children: <Widget>[
          SearchBarWidget(),
          PokemonListView(),
        ],
      ),
    );
  }
}
