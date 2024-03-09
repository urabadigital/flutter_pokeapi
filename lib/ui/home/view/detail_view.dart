import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:evolvers/core/common/const/constant.dart';
import 'package:evolvers/injectable_dependency.dart';
import 'package:evolvers/ui/home/bloc/detail/detail_bloc.dart';
import 'package:evolvers/ui/home/widget/descripction_shimmer.dart';
import 'package:evolvers/ui/home/widget/shimmer.dart';
import 'package:evolvers/ui/navigation/cubit/router_manager.dart';

import '../../../core/common/utils/helpers.dart';
import '../../../core/home/domain/entities/entities.dart';
import '../../../core/home/domain/usecases/home_usecases.dart';

class DetailView extends StatelessWidget {
  const DetailView({super.key});

  static const String path = '/cat/:name';
  static const String name = 'cat';

  static Widget create({required String name}) => BlocProvider(
        lazy: false,
        create: (context) => DetailBloc(
          homeUseCase: getIt<HomeUseCase>(),
        )..add(DetailEvent.detail(name)),
        child: const DetailView(),
      );

  @override
  Widget build(BuildContext context) {
    return BlocListener<DetailBloc, DetailState>(
      listener: (context, state) {
        if (state.failure != null) {
          ShowFailure.instance.mapFailuresToNotification(
            context,
            failure: state.failure!,
          );
        }
      },
      child: BlocBuilder<DetailBloc, DetailState>(
        builder: (_, state) {
          return Scaffold(
            appBar: AppBar(
              forceMaterialTransparency: true,
              centerTitle: true,
              title: Text(state.pokemon.name ?? '...'),
              leading: IconButton(
                icon: Container(
                  height: 50,
                  width: 50,
                  decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      color: Theme.of(context).colorScheme.primary),
                  alignment: Alignment.center,
                  child: Icon(Icons.chevron_left,
                      color: Theme.of(context).cardColor),
                ),
                onPressed: () {
                  context.read<RouterManager>().pop();
                },
              ),
            ),
            body: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Hero(
                    tag: 'pokemon',
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: state.pokemon.isNull
                          ? const ContainerShimmer(
                              height: 400,
                            )
                          : CachedNetworkImage(
                              filterQuality: FilterQuality.medium,
                              fit: BoxFit.cover,
                              height: 400,
                              width: double.infinity,
                              imageUrl:
                                  '${Constant.baseImageUrl}${state.pokemon.id}.png',
                              placeholder: (context, url) =>
                                  const ContainerShimmer(
                                height: 400,
                              ),
                              errorWidget: (context, url, error) => Container(
                                height: 150,
                                color: Colors.grey.withOpacity(0.5),
                                child: const Center(
                                  child: Icon(
                                    Icons.error,
                                  ),
                                ),
                              ),
                            ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: state.isLoading
                        ? const Padding(
                            padding: EdgeInsets.symmetric(
                              horizontal: 10,
                            ),
                            child: ShimmerDescription(),
                          )
                        : Column(
                            children: [
                              Wrap(
                                children: <Widget>[
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'ID: ${state.pokemon.id}',
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .primary,
                                            fontWeight: FontWeight.bold,
                                            fontSize: 18,
                                          ),
                                        ),
                                        const SizedBox(height: 20),
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Text(
                                              'Weight: ${state.pokemon.weight ?? ''}',
                                              maxLines: 6,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                            Text(
                                              'Experience: ${state.pokemon.baseExperience ?? 0}',
                                              maxLines: 6,
                                              style: TextStyle(
                                                color: Theme.of(context)
                                                    .colorScheme
                                                    .secondary,
                                                fontWeight: FontWeight.w300,
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(height: 10),
                                        Text(
                                          'Height: ${state.pokemon.height ?? ''}',
                                          maxLines: 6,
                                          style: TextStyle(
                                            color: Theme.of(context)
                                                .colorScheme
                                                .secondary,
                                            fontWeight: FontWeight.w300,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 20),
                    child: Text(
                      'Abilities:',
                      style: TextStyle(
                        color: Theme.of(context).colorScheme.primary,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                    ),
                  ),
                  Expanded(
                    child: ListView.separated(
                      scrollDirection: Axis.horizontal,
                      padding: const EdgeInsets.symmetric(
                        horizontal: 20,
                      ),
                      physics: const BouncingScrollPhysics(),
                      itemCount: state.pokemon.abilities?.length ?? 0,
                      itemBuilder: (context, index) {
                        final AbilitiesEntity ability =
                            state.pokemon.abilities![index];
                        return Wrap(
                          children: [
                            Container(
                              padding: const EdgeInsets.symmetric(
                                vertical: 5,
                                horizontal: 15,
                              ),
                              decoration: BoxDecoration(
                                color: Theme.of(context)
                                    .hintColor
                                    .withOpacity(0.1),
                                borderRadius: BorderRadius.circular(30),
                              ),
                              child: Text(ability.ability?.name ?? ''),
                            ),
                          ],
                        );
                      },
                      separatorBuilder: (BuildContext context, int index) =>
                          const SizedBox(width: 20),
                    ),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
