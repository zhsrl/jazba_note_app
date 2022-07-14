import 'package:flutter/material.dart';
import 'package:jazba_app/consts.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:jazba_app/image_list.dart';

class NotesScreen extends StatefulWidget {
  const NotesScreen({Key? key}) : super(key: key);

  @override
  State<NotesScreen> createState() => _NotesScreenState();
}

class _NotesScreenState extends State<NotesScreen> {
  @override
  Widget build(BuildContext context) {
    double widthSize = MediaQuery.of(context).size.width;

    return Scaffold(
        backgroundColor: MainColors.whiteToneColor,
        body: Padding(
            padding: const EdgeInsets.fromLTRB(16, 20, 16, 0),
            child: SafeArea(
                child: StaggeredGridView.countBuilder(
              crossAxisCount: 2,
              itemCount: imageList.length,
              itemBuilder: (context, index) => ImageCard(
                imageData: imageList[index],
              ),
              staggeredTileBuilder: (index) => StaggeredTile.fit(1),
              mainAxisSpacing: 8.0,
              crossAxisSpacing: 8.0,
            ))));
  }
}

class ImageCard extends StatelessWidget {
  const ImageCard({required this.imageData});

  final ImageData imageData;

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(16.0),
      child: Image.network(imageData.imageUrl, fit: BoxFit.cover),
    );
  }
}
