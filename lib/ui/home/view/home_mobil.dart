import 'package:flutter/material.dart';

class HomeMobil extends StatelessWidget {
  const HomeMobil({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          return ConstrainedBox(
            constraints: BoxConstraints(minHeight: constraints.maxHeight),
            child: SingleChildScrollView(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 40,
                          bottom: 20,
                          left: 50,
                        ),
                        child: Text(
                          'Hello, What do you \nwant to watch ?',
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Theme.of(context).hintColor,
                            fontSize: 28,
                          ),
                        ),
                      ),
                    ],
                  ),
                  // const MoviesSearchBar(),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: SearchAnchor(
                      builder: (
                        BuildContext context,
                        SearchController controller,
                      ) {
                        return SearchBar(
                          controller: controller,
                          // constraints: const BoxConstraints(
                          //     maxWidth: double.infinity, minHeight: 50),
                          hintText: 'Search cats',
                          padding: const MaterialStatePropertyAll<EdgeInsets>(
                              EdgeInsets.symmetric(horizontal: 16.0)),
                          onTap: () {
                            controller.openView();
                          },
                          onChanged: (_) {
                            controller.openView();
                          },
                          leading: const Icon(Icons.search),
                          // trailing: <Widget>[
                          //   Tooltip(
                          //     message: 'Change brightness mode',
                          //     child: IconButton(
                          //       isSelected: isDark,
                          //       onPressed: () {
                          //         setState(() {
                          //           isDark = !isDark;
                          //         });
                          //       },
                          //       icon: const Icon(Icons.wb_sunny_outlined),
                          //       selectedIcon: const Icon(Icons.brightness_2_outlined),
                          //     ),
                          //   )
                          // ],
                        );
                      },
                      suggestionsBuilder:
                          (BuildContext context, SearchController controller) {
                        return List<ListTile>.generate(
                          6,
                          (int index) {
                            final String item = 'item $index';
                            return ListTile(
                              title: Text(item),
                              onTap: () {
                                // setState(() {
                                //   controller.closeView(item);
                                // });
                              },
                            );
                          },
                        );
                      },
                      viewConstraints: BoxConstraints(
                        maxWidth: constraints.maxWidth,
                        minHeight: constraints.minHeight,
                        maxHeight: constraints.maxHeight / 2.4,
                      ),
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
