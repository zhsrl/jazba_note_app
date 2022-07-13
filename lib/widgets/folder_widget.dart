import 'package:flutter/material.dart';

import '../consts.dart';

class FolderWidget extends StatelessWidget {
  int? notes_count;
  String note_title;

  FolderWidget({Key? key, required this.notes_count, required this.note_title})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Container(
        height: 170,
        decoration: BoxDecoration(
          color: MainColors.folderColor,
          borderRadius: BorderRadius.circular(15),
        ),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('$note_title',
                      style: TextStyle(
                        fontWeight: FontWeight.w400,
                        color: MainColors.folderTopTextColor,
                      )),
                  Icon(
                    Icons.arrow_right_outlined,
                    size: 30,
                    color: MainColors.whiteColor,
                  )
                ],
              ),
              Text('$notes_count',
                  style: TextStyle(
                      color: MainColors.whiteColor,
                      fontSize: 60,
                      fontWeight: FontWeight.bold))
            ],
          ),
        ),
      ),
    );
    ;
  }
}
