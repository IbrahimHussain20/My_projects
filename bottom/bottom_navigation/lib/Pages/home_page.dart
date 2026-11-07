import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Discover Shots',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
        actions: [
          IconButton(
            icon: const Icon(Icons.notifications_outlined),
            onPressed: () {},
          ),
        ],
      ),
      body: ListView(
        padding: const EdgeInsets.all(12),
        children: const [
          PhotoCard(
            title: 'Misty Pine Forest',
            photographer: 'Aiden Vance',
            imageUrl: 'https://picsum.photos/seed/forest/600/400',
          ),
          SizedBox(height: 16),
          PhotoCard(
            title: 'Golden Hour Coastline',
            photographer: 'Elena Rostova',
            imageUrl: 'https://picsum.photos/seed/coast/600/400',
          ),
          SizedBox(height: 16),
          PhotoCard(
            title: 'Urban Neon Nights',
            photographer: 'Marcus Chen',
            imageUrl: 'https://picsum.photos/seed/neon/600/400',
          ),
        ],
      ),
    );
  }
}

class PhotoCard extends StatelessWidget {
  final String title;
  final String photographer;
  final String imageUrl;

  const PhotoCard({
    super.key,
    required this.title,
    required this.photographer,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
      elevation: 3,
      clipBehavior: Clip.antiAlias,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Image.network(
            imageUrl,
            height: 220,
            width: double.infinity,
            fit: BoxFit.cover,
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'By $photographer',
                      style: TextStyle(
                        color: Colors.grey.shade600,
                        fontSize: 13,
                      ),
                    ),
                  ],
                ),
                const Row(
                  children: [
                    Icon(Icons.favorite_border, color: Colors.red),
                    SizedBox(width: 8),
                    Icon(Icons.share_outlined, color: Colors.grey),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
