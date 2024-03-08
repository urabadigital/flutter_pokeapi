// import 'package:flutter/material.dart';
// import 'package:flutter_bloc/flutter_bloc.dart';

// import '../../../core/home/domain/entities/entities.dart';
// import '../bloc/home_bloc.dart';

// class CategoryListView extends StatelessWidget {
//   const CategoryListView({super.key});

//   @override
//   Widget build(BuildContext context) {
//     ThemeData theme = Theme.of(context);
//     HomeState state = context.watch<HomeBloc>().state;
//     int selectedGenre = state.selectedGenre;
//     List<GenRes> genres = state.genres;
//     return Padding(
//       padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
//       child: SizedBox(
//         height: 45,
//         child: ListView.separated(
//           separatorBuilder: (BuildContext context, int index) =>
//               const VerticalDivider(
//             color: Colors.transparent,
//             width: 5,
//           ),
//           scrollDirection: Axis.horizontal,
//           itemCount: genres.length,
//           itemBuilder: (context, index) {
//             GenRes genre = genres[index];
//             return Column(
//               children: <Widget>[
//                 Padding(
//                   padding: const EdgeInsets.symmetric(horizontal: 2.5),
//                   child: InkWell(
//                     onTap: () {
//                       // selectedGenre = genre.id;
//                       // context
//                       //     .read<HomeBloc>()
//                       //     .add(MovieEventStarted(selectedGenre, ''));
//                     },
//                     hoverDuration: const Duration(milliseconds: 150),
//                     hoverColor: theme.hintColor.withOpacity(0.07),
//                     borderRadius: const BorderRadius.all(
//                       Radius.circular(10),
//                     ),
//                     child: Container(
//                       padding: const EdgeInsets.symmetric(
//                         horizontal: 12,
//                         vertical: 10,
//                       ),
//                       decoration: BoxDecoration(
//                         // border: Border.all(
//                         //   color: theme.colorScheme.onSecondary.withOpacity(0.4),
//                         // ),
//                         borderRadius: const BorderRadius.all(
//                           Radius.circular(10),
//                         ),
//                         color: (genre.id == selectedGenre)
//                             ? theme.hintColor
//                             : Colors.transparent,
//                       ),
//                       child: Text(
//                         genre.name ?? '',
//                         style: TextStyle(
//                           fontSize: 12,
//                           fontWeight: FontWeight.bold,
//                           color: (genre.id == selectedGenre)
//                               ? theme.colorScheme.onSecondary
//                               : theme.hintColor,
//                         ),
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             );
//           },
//         ),
//       ),
//     );
//   }
// }
