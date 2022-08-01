import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../models/note.dart';
import 'note_widget.dart';

class NoteGridView extends StatelessWidget {
  final notes = Note.generatedNotes();

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 10.0,
        mainAxisSpacing: 10.0,
      ),
      padding: EdgeInsets.all(0),
      itemBuilder: (BuildContext context, int index) => NoteItem(notes[index]),
      itemCount: notes.length,
    );
  }

  // @override
  // Widget build(BuildContext context) {
  //   return StaggeredGridView.countBuilder(
  //     shrinkWrap: true,
  //     physics: ScrollPhysics(),
  //     crossAxisSpacing: 10.0,
  //     mainAxisSpacing: 10.0,
  //     crossAxisCount: 2,
  //     itemCount: notes.length,
  //     itemBuilder: (BuildContext context, int index) => NoteItem(notes[index]),
  //     staggeredTileBuilder: (_) {
  //       StaggeredTile.fit(2);
  //     },
  //   );
  // }
}
