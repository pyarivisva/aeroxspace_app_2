import 'package:flutter/material.dart';
import 'package:aeroxspace_app_2/detail_screen.dart';
import 'package:aeroxspace_app_2/model/destination_model.dart';
import 'package:aeroxspace_app_2/model/similar_model.dart';

class ListScreen extends StatelessWidget {
  const ListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "TourAja",
          style: TextStyle(
            fontFamily: "SofiaSans",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: SafeArea(
        child: ListView.builder(
          itemCount: tDestination.length,
          padding: const EdgeInsets.all(16),
          itemBuilder: (context, index) {
            final destination = tDestination[index];

            return GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder:
                        (context) => DetailScreen(
                          destination: destination,
                          similarPlaces: tListSimilar,
                        ),
                  ),
                );
              },
              child: Card(
                key: ValueKey(destination.name),
                margin: const EdgeInsets.only(bottom: 16),
                elevation: 4,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    ClipRRect(
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(4),
                        bottomLeft: Radius.circular(4),
                      ),
                      child: Image.network(
                        destination.imageUrl,
                        height: 100,
                        width: 100,
                        fit: BoxFit.cover,
                        errorBuilder:
                            (context, error, stackTrace) => Container(
                              height: 100,
                              width: 100,
                              color: Colors.grey[300],
                              child: const Icon(Icons.broken_image),
                            ),
                      ),
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.all(12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              destination.name,
                              style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const SizedBox(height: 8),
                            Text(
                              destination.location,
                              style: const TextStyle(
                                fontSize: 14,
                                color: Colors.grey,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
