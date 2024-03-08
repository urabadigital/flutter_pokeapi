// import 'package:cached_network_image/cached_network_image.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movie_bloc/ui/home/widget/movie_poster.dart';
// import 'package:url_launcher/url_launcher.dart';
// // import 'package:movie_bloc/core/core_presentation/cubit/dart_mode/theme_cubit.dart';

// import '../../../core/common/const/constants.dart';
// import '../../../core/common/utils/helper.dart';
// import '../../../core/home/navigation/cubit/navigation.dart';
// import '../../../core/home/domain/entities/entities.dart';
// import '../../../core/home/domain/usecases/home_usecases.dart';
// import '../../../injection_container.dart';
// import '../bloc/home_bloc.dart';

// class MovieDetailView extends StatelessWidget {
//   const MovieDetailView({super.key, required this.id});
//   final String id;

//   static const String path = 'movie/:id';
//   static const String name = 'movie';

//   @override
//   Widget build(BuildContext context) {
//     return BlocProvider(
//       lazy: false,
//       create: (context) => HomeBloc(
//         homeUseCase: getIt<HomeUseCase>(),
//       )
//         ..add(LoadDetailMovieList(id: id))
//         ..add(LoadCastList(id: id)),
//       child: const _MovieDetailViewContent(),
//     );
//   }
// }

// class _MovieDetailViewContent extends StatelessWidget {
//   const _MovieDetailViewContent();

//   @override
//   Widget build(BuildContext context) {
//     // final ThemeCubit theme = context.watch<ThemeCubit>();

//     // final HomeState homestate = context.watch<HomeBloc>().state;
//     return Scaffold(
//       body: BlocBuilder<HomeBloc, HomeState>(
//         builder: (_, state) {
//           if (state.movie.id != 0 && state.cast.isNotEmpty) {
//             return Container(
//               color: Theme.of(context).colorScheme.background,
//               child: CustomScrollView(
//                 primary: true,
//                 shrinkWrap: false,
//                 slivers: <Widget>[
//                   SliverAppBar(
//                     leading: IconButton(
//                       color: Colors.black,
//                       onPressed: () => context.read<HomeNavigation>().pop(),
//                       icon: Container(
//                         height: 40,
//                         width: 40,
//                         decoration: BoxDecoration(
//                           shape: BoxShape.circle,
//                           color: Theme.of(context).colorScheme.background,
//                         ),
//                         alignment: Alignment.center,
//                         child: Icon(
//                           Icons.arrow_back,
//                           color: Theme.of(context).hintColor,
//                         ),
//                       ),
//                     ),
//                     actions: [
//                       IconButton(
//                         onPressed: () {},
//                         icon: Container(
//                           height: 40,
//                           width: 40,
//                           decoration: BoxDecoration(
//                             shape: BoxShape.circle,
//                             color: Theme.of(context).colorScheme.background,
//                           ),
//                           alignment: Alignment.center,
//                           child: Icon(
//                             Icons.favorite_border,
//                             color: Theme.of(context).hintColor,
//                           ),
//                         ),
//                       ),
//                     ],
//                     backgroundColor: Theme.of(context).primaryColor,
//                     expandedHeight: 300,
//                     elevation: 0,
//                     iconTheme:
//                         IconThemeData(color: Theme.of(context).primaryColor),
//                     flexibleSpace: FlexibleSpaceBar(
//                       collapseMode: CollapseMode.parallax,
//                       background: Stack(
//                         fit: StackFit.expand,
//                         children: [
//                           Hero(
//                             tag: 'movie movie',
//                             child: CachedNetworkImage(
//                               filterQuality: FilterQuality.medium,
//                               fit: BoxFit.cover,
//                               imageUrl:
//                                   '${Const.imagePath}${state.movie.posterPath}',
//                               placeholder: (context, url) => Container(
//                                 height: 230,
//                                 color: Colors.grey.withOpacity(0.5),
//                                 child: const Center(
//                                   child: CircularProgressIndicator.adaptive(),
//                                 ),
//                               ),
//                               errorWidget: (context, url, error) => Container(
//                                 height: 230,
//                                 color: Colors.grey.withOpacity(0.5),
//                                 child: const Center(
//                                   child: Icon(
//                                     Icons.error,
//                                   ),
//                                 ),
//                               ),
//                             ),
//                           ),
//                           Column(
//                             mainAxisAlignment: MainAxisAlignment.center,
//                             children: [
//                               IconButton(
//                                 onPressed: () async {
//                                   Uri uri = Uri.parse(
//                                     '''${Const.videoPath}/${state.movie.youtubeId}''',
//                                   );
//                                   if (await canLaunchUrl(uri)) {
//                                     await launchUrl(
//                                       uri,
//                                       mode: LaunchMode.externalApplication,
//                                     );
//                                   }
//                                 },
//                                 icon: const Icon(
//                                   Icons.play_circle_outline,
//                                   color: Colors.yellow,
//                                   size: 65,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ),
//                   SliverToBoxAdapter(
//                     child: Wrap(
//                       children: <Widget>[
//                         Padding(
//                           padding: const EdgeInsets.only(
//                               right: 20, left: 20, bottom: 10, top: 25),
//                           child: Column(
//                             children: [
//                               Align(
//                                 alignment: Alignment.centerLeft,
//                                 child: Text(
//                                   state.movie.title ?? '',
//                                   style: TextStyle(
//                                     color:
//                                         Theme.of(context).colorScheme.secondary,
//                                     fontWeight: FontWeight.bold,
//                                     fontSize: 22,
//                                   ),
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               Row(
//                                 mainAxisAlignment:
//                                     MainAxisAlignment.spaceBetween,
//                                 children: [
//                                   ElevatedButton(
//                                     style: ElevatedButton.styleFrom(
//                                       elevation: 0,
//                                       backgroundColor: Theme.of(context)
//                                           .colorScheme
//                                           .secondary
//                                           .withOpacity(0.3),
//                                       shape: const StadiumBorder(),
//                                       textStyle: TextStyle(
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                       ),
//                                     ),
//                                     onPressed: () async {
//                                       // Uri uri =
//                                       //     Uri.parse(state.movie.url ?? '');
//                                       Uri uri = Uri.parse(
//                                         '''${Const.videoPath}/${state.movie.youtubeId}''',
//                                       );
//                                       if (await canLaunchUrl(uri)) {
//                                         await launchUrl(
//                                           uri,
//                                           mode: LaunchMode.externalApplication,
//                                         );
//                                       }
//                                     },
//                                     child: Text(
//                                       'WATCH NOW',
//                                       style: TextStyle(
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                       ),
//                                     ),
//                                   ),
//                                   Column(
//                                     crossAxisAlignment: CrossAxisAlignment.end,
//                                     children: [
//                                       Text(
//                                         'Duration: ${state.movie.runTime} min',
//                                         style: const TextStyle(
//                                           fontWeight: FontWeight.w300,
//                                         ),
//                                       ),
//                                       Row(
//                                         children: [
//                                           Row(
//                                             children: Helper.getStarsList(
//                                               (state.movie.voteAverage ?? 0) /
//                                                   2,
//                                               size: 18,
//                                             ),
//                                           ),
//                                           const SizedBox(width: 5),
//                                           Text(
//                                             state.movie.voteAverage
//                                                     ?.toStringAsFixed(2) ??
//                                                 '',
//                                             style: const TextStyle(
//                                               fontWeight: FontWeight.w300,
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     ],
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 20),
//                               Text(
//                                 state.movie.overview ?? '',
//                                 maxLines: 6,
//                                 style: TextStyle(
//                                   color:
//                                       Theme.of(context).colorScheme.secondary,
//                                   fontWeight: FontWeight.w300,
//                                 ),
//                               ),
//                               const SizedBox(height: 5),
//                               Container(
//                                 height: 130,
//                                 padding:
//                                     const EdgeInsets.symmetric(vertical: 15),
//                                 child: ListView.builder(
//                                   scrollDirection: Axis.horizontal,
//                                   padding: EdgeInsets.zero,
//                                   itemCount: state.cast.length > 10
//                                       ? 10
//                                       : state.cast.length,
//                                   itemBuilder: (context, index) {
//                                     final Cast cast = state.cast[index];
//                                     return Padding(
//                                       padding: const EdgeInsets.only(
//                                           left: 14.0, right: 14.0),
//                                       child: Column(
//                                         children: [
//                                           Container(
//                                             alignment: Alignment.center,
//                                             width: 60,
//                                             height: 60,
//                                             decoration: BoxDecoration(
//                                               color:
//                                                   Colors.grey.withOpacity(0.5),
//                                               borderRadius:
//                                                   const BorderRadius.all(
//                                                 Radius.circular(60),
//                                               ),
//                                             ),
//                                             child: ClipRRect(
//                                               borderRadius:
//                                                   BorderRadius.circular(60),
//                                               child: MoviePoster(
//                                                 fit: BoxFit.cover,
//                                                 infinity: double.infinity,
//                                                 width: 60,
//                                                 height: 60,
//                                                 imagePath:
//                                                     '${cast.profilePath}',
//                                               ),
//                                             ),
//                                           ),
//                                           const SizedBox(height: 5),
//                                           SizedBox(
//                                             width: 60,
//                                             child: Text(
//                                               cast.name ?? '',
//                                               textAlign: TextAlign.center,
//                                               overflow: TextOverflow.ellipsis,
//                                               maxLines: 2,
//                                               style: TextStyle(
//                                                 fontSize: 12,
//                                                 color: Theme.of(context)
//                                                     .colorScheme
//                                                     .secondary,
//                                               ),
//                                             ),
//                                           ),
//                                         ],
//                                       ),
//                                     );
//                                   },
//                                 ),
//                               ),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Expanded(
//                                     flex: 2,
//                                     child: Text(
//                                       'Studio',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                       ),
//                                     ),
//                                   ),
//                                   Expanded(
//                                     flex: 8,
//                                     child: Text(
//                                       'Warner Bros',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w300,
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                               const SizedBox(height: 5),
//                               Row(
//                                 crossAxisAlignment: CrossAxisAlignment.start,
//                                 children: [
//                                   Expanded(
//                                     flex: 2,
//                                     child: Text(
//                                       'Genre',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                       ),
//                                     ),
//                                   ),
//                                   Flexible(
//                                     flex: 8,
//                                     child: Wrap(
//                                       children: List.generate(
//                                           state.movie.genRes?.length ?? 0,
//                                           (index) {
//                                         return Text(
//                                           '''${state.movie.genRes?.elementAt(index).name}, ''',
//                                           style: TextStyle(
//                                             fontWeight: FontWeight.w300,
//                                             color: Theme.of(context)
//                                                 .colorScheme
//                                                 .secondary,
//                                           ),
//                                         );
//                                       }),
//                                     ),
//                                   ),
//                                 ],
//                               ),
//                               const SizedBox(height: 5),
//                               Row(
//                                 children: [
//                                   Expanded(
//                                     flex: 2,
//                                     child: Text(
//                                       'Release',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.bold,
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                       ),
//                                     ),
//                                   ),
//                                   Expanded(
//                                     flex: 8,
//                                     child: Text(
//                                       state.movie.release?.year.toString() ??
//                                           '',
//                                       style: TextStyle(
//                                         fontWeight: FontWeight.w300,
//                                         color: Theme.of(context)
//                                             .colorScheme
//                                             .secondary,
//                                       ),
//                                     ),
//                                   )
//                                 ],
//                               ),
//                             ],
//                           ),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             );
//           } else {
//             return const Center(
//               child: CircularProgressIndicator(),
//             );
//           }
//         },
//       ),
//     );
//   }
// }
