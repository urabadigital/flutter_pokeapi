// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:movie_bloc/ui/home/view/detail_view.dart';

// import '../../../core/common/utils/helper.dart';
// import '../../../core/common/utils/tmdb_poster.dart';
// import '../../../core/home/navigation/cubit/navigation.dart';
// import '../../../core/home/domain/entities/entities.dart';
// import 'movie_poster.dart';

// class MovieListView extends StatelessWidget {
//   const MovieListView({
//     super.key,
//     required this.movies,
//   });

//   final List<Movie> movies;

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 271,
//       child: ListView.builder(
//         scrollDirection: Axis.horizontal,
//         physics: const BouncingScrollPhysics(),
//         itemCount: movies.length,
//         itemBuilder: (context, index) {
//           final Movie movie = movies[index];
//           return InkWell(
//             onTap: () {
//               context
//                   .read<HomeNavigation>()
//                   .pushNamed(MovieDetailView.name, id: movie.id ?? 0);
//             },
//             child: Padding(
//               padding: const EdgeInsets.all(8.0),
//               child: SizedBox(
//                 width: 130,
//                 child: Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     ClipRRect(
//                       borderRadius: BorderRadius.circular(20),
//                       child: MoviePoster(
//                         fit: BoxFit.cover,
//                         posterSize: PosterSize.w342,
//                         width: 130,
//                         height: 170,
//                         imagePath: '${movie.posterPath}',
//                       ),
//                       // child: SizedBox(
//                       //   height: 170,
//                       //   width: 130,
//                       //   child: Image.network(
//                       //     '${Const.imagePath}${movie.posterPath}',
//                       //     filterQuality: FilterQuality.high,
//                       //     fit: BoxFit.cover,
//                       //     loadingBuilder: (context, child, loadingProgress) {
//                       //       if (loadingProgress == null) return child;
//                       //       return Center(
//                       //         child: CircularProgressIndicator(
//                       //           value: loadingProgress.expectedTotalBytes !=
//                       //                   null
//                       //               ? loadingProgress.cumulativeBytesLoaded /
//                       //                   loadingProgress.expectedTotalBytes!
//                       //               : null,
//                       //         ),
//                       //       );
//                       //     },
//                       //     errorBuilder: (context, error, stackTrace) =>
//                       //         const Center(
//                       //       child: Icon(Icons.error),
//                       //     ),
//                       //   ),
//                       // ),
//                     ),
//                     Padding(
//                       padding: const EdgeInsets.only(
//                         top: 15.0,
//                       ),
//                       child: Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//                         children: [
//                           Text(
//                             movie.title ?? '',
//                             textAlign: TextAlign.left,
//                             softWrap: true,
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               fontWeight: FontWeight.w500,
//                               color: Theme.of(context).colorScheme.secondary,
//                             ),
//                           ),
//                           Text(
//                             movie.release?.year.toString() ?? '',
//                             textAlign: TextAlign.left,
//                             softWrap: true,
//                             maxLines: 1,
//                             overflow: TextOverflow.ellipsis,
//                             style: TextStyle(
//                               color: Theme.of(context).colorScheme.secondary,
//                             ),
//                           ),
//                           Row(
//                             mainAxisAlignment: MainAxisAlignment.start,
//                             children: [
//                               Row(
//                                 children: Helper.getStarsList(
//                                   (movie.voteAverage ?? 0) / 2,
//                                   size: 16,
//                                 ),
//                               ),
//                             ],
//                           ),
//                         ],
//                       ),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
// }
