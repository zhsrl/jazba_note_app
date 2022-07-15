import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jazba_app/consts.dart';

import '../models/note.dart';

class NoteItem extends StatelessWidget {
  // final Note note;
  // NoteItem(this.note);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 200,
        width: 180,
        decoration: BoxDecoration(
            color: MainColors.darkColor,
            borderRadius: BorderRadius.circular(20)),
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('title',
                  style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                      color: MainColors.whiteColor)),
              Text(
                  'But I must explain to you how all this mistaken idea of denouncing pleasure and praising pain was born and I will give you a complete account of the system',
                  overflow: TextOverflow.ellipsis,
                  maxLines: 3,
                  style: TextStyle(fontSize: 16, color: MainColors.whiteColor)),
            ],
          ),
        ));
  }
}
