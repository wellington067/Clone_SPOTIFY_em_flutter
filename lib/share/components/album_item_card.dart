import 'package:flutter/cupertino.dart';

class AlbumItemCard extends StatelessWidget {
  final ImageProvider image;
  final String label;

  const AlbumItemCard({
    super.key,
    required this.image,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: image,
          width: 120,
          height: 120,
          fit: BoxFit.cover,
        ),
        const SizedBox(
          height: 10,
        ),
        Text(label),
      ],
    );
  }
}
