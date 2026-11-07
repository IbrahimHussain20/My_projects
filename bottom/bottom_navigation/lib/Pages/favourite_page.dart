import 'package:flutter/material.dart';

class FavouritePage extends StatelessWidget {
  const FavouritePage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> favoriteImages = [
      'https://picsum.photos/seed/fav1/400/400',
      'https://picsum.photos/seed/fav2/400/400',
      'https://picsum.photos/seed/fav3/400/400',
      'https://picsum.photos/seed/fav4/400/400',
      'https://picsum.photos/seed/fav5/400/400',
      'https://picsum.photos/seed/fav6/400/400',
    ];

    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Saved Inspirations',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: GridView.builder(
        padding: const EdgeInsets.all(12),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          crossAxisSpacing: 12,
          mainAxisSpacing: 12,
        ),
        itemCount: favoriteImages.length,
        itemBuilder: (context, index) {
          return ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Stack(
              fit: StackFit.expand,
              children: [
                Image.network(favoriteImages[index], fit: BoxFit.cover),
                Positioned(
                  top: 8,
                  right: 8,
                  child: Container(
                    padding: const EdgeInsets.all(6),
                    decoration: const BoxDecoration(
                      color: Colors.black45,
                      shape: BoxShape.circle,
                    ),
                    child: const Icon(
                      Icons.favorite,
                      color: Colors.red,
                      size: 18,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
