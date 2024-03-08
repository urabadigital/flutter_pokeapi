import 'package:flutter/material.dart';

class MoviesSearchBar extends StatefulWidget {
  const MoviesSearchBar({super.key});

  @override
  State<MoviesSearchBar> createState() => _SearchBarState();
}

class _SearchBarState extends State<MoviesSearchBar> {
  final _controller = TextEditingController();

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: Center(
        child: Container(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 32),
          decoration: BoxDecoration(
            color: Theme.of(context).hintColor.withOpacity(0.1),
            borderRadius: const BorderRadius.all(Radius.circular(50)),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 10),
            child: Row(
              children: [
                const Icon(Icons.search, color: Colors.grey),
                const SizedBox(width: 10),
                Expanded(
                  child: Center(
                    child: TextField(
                        controller: _controller,
                        style: const TextStyle(color: Colors.white),
                        decoration: InputDecoration(
                          border: InputBorder.none,
                          contentPadding: EdgeInsets.zero,
                          isDense: true,
                          hintText: 'Search movies',
                          hintStyle: TextStyle(
                            color: Theme.of(context).hintColor.withOpacity(0.7),
                          ),
                        ),
                        onEditingComplete: () {
                          FocusManager.instance.primaryFocus?.unfocus();
                        },
                        onChanged: (text) {}),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
