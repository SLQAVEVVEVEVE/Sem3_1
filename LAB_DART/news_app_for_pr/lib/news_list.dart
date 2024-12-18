import 'package:flutter/material.dart';

class NewsList extends StatelessWidget {
  const NewsList({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(15.0), // Add 8.0 padding around the grid  
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 3, // Set the number of columns to 2
        childAspectRatio: 1, // Set the child aspect ratio to 1 to make the cards square
      ),
      itemCount: 8, // Replace 10 with the number of news items you want to display
      itemBuilder: (context, index) {
        return NewsCard(
          title: 'News Title $index', // Replace with the actual news title
          description: 'News Description $index', // Replace with the actual news description
        );
      },
    );
  }
}

class NewsCard extends StatelessWidget {
  const NewsCard({
    required this.title,
    required this.description,
    super.key,
  });

  final String title;
  final String description;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0, horizontal: 16.0), // Add 16.0 padding to both sides
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 4.0),
            Text(
              description,
              style: const TextStyle(fontSize: 12.0),
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}