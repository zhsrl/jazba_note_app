import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

class NotesStaggeredGridView extends StatelessWidget {
  const NotesStaggeredGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      mainAxisSpacing: 4.0,
      crossAxisSpacing: 4.0,
      padding: const EdgeInsets.all(4.0),
    );
  }
}

List<StaggeredTile> _gridTemplate = const <StaggeredTile>[
  StaggeredTile.count(2, 2),
  StaggeredTile.count(2, 4),
  StaggeredTile.count(2, 2),
  StaggeredTile.count(1, 4)
];
