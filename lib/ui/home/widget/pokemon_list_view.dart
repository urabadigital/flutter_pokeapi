import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:evolvers/core/common/const/constant.dart';
import 'package:evolvers/ui/home/bloc/home_bloc.dart';
import 'package:evolvers/ui/home/widget/shimmer.dart';

import '../../../core/home/domain/entities/entities.dart';
import '../../navigation/cubit/home_navigation.dart';
import '../view/detail_view.dart';

class PokemonListView extends StatelessWidget {
  const PokemonListView({super.key});

  @override
  Widget build(BuildContext context) {
    final pokemons = context.watch<HomeBloc>().state.pokemons;
    final isLoading = context.watch<HomeBloc>().state.isLoading;
    final scrollController = context.watch<HomeBloc>().scrollController;
    return Expanded(
      child: RefreshIndicator(
        onRefresh: () => context.read<HomeBloc>().refreshList(),
        child: ListView.separated(
          controller: scrollController,
          shrinkWrap: true,
          primary: false,
          padding: const EdgeInsets.only(
            left: 20,
            right: 20,
            bottom: 20,
            top: 5,
          ),
          physics: const BouncingScrollPhysics(),
          itemCount: pokemons.length + 1,
          itemBuilder: (context, index) {
            if (index == pokemons.length) {
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: Center(
                  child: Opacity(
                    opacity: isLoading ? 1 : 0,
                    child: CircularProgressIndicator(
                        color: Theme.of(context).colorScheme.primary),
                  ),
                ),
              );
            } else {
              final PokemonEntity pokemon = pokemons[index];
              return InkWell(
                onTap: () {
                  context.read<HomeNavigation>().navigateCatDetails(
                        DetailView.path,
                        name: pokemon.name,
                      );
                },
                child: Container(
                  padding: const EdgeInsets.all(20.0),
                  decoration: BoxDecoration(
                    border: Border.all(
                        color: Theme.of(context).colorScheme.secondary),
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            pokemon.name?.toUpperCase() ?? '',
                            softWrap: true,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 20,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                          vertical: 20,
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: pokemon.isNull
                              ? const ContainerShimmer(
                                  height: 250,
                                )
                              : CachedNetworkImage(
                                  filterQuality: FilterQuality.medium,
                                  fit: BoxFit.cover,
                                  height: 250,
                                  width: double.infinity,
                                  imageUrl:
                                      '${Constant.baseImageUrl}${pokemon.id}.png',
                                  placeholder: (context, url) =>
                                      const ContainerShimmer(
                                    height: 250,
                                  ),
                                  errorWidget: (context, url, error) =>
                                      Container(
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
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'ID: ${pokemon.id ?? ''}',
                            textAlign: TextAlign.left,
                            softWrap: true,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                          Text(
                            'Experience: ${pokemon.baseExperience ?? 0}',
                            textAlign: TextAlign.right,
                            softWrap: true,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.w500,
                              color: Theme.of(context).colorScheme.secondary,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }
          },
          separatorBuilder: (BuildContext context, int index) =>
              const SizedBox(height: 20),
        ),
      ),
    );
  }
}
