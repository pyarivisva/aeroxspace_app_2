import 'package:flutter/material.dart';
import 'package:aeroxspace_app_2/detail_screen.dart';
import 'package:aeroxspace_app_2/model/destination_model.dart';
import 'package:aeroxspace_app_2/model/similar_model.dart';

class ListScreen extends StatelessWidget {
  final List<Destination> destinations;

  const ListScreen({required this.destinations, super.key});

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
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth <= 600) {
            return DestinationList(destinations: destinations);
          } else if (constraints.maxWidth <= 1200) {
            return DestinationGrid(gridCount: 4, destinations: destinations);
          } else {
            return DestinationGrid(gridCount: 6, destinations: destinations);
          }
        },
      ),
    );
  }
}

class DestinationList extends StatelessWidget {
  final List<Destination> destinations;

  const DestinationList({required this.destinations, super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: destinations.length,
      itemBuilder: (context, index) {
        final destination = destinations[index];
        return InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder:
                    (_) => DetailScreen(
                      destination: destination,
                      similarPlaces: tListSimilar,
                    ),
              ),
            );
          },
          child: Card(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  flex: 1,
                  child: Image.network(destination.imageUrl, fit: BoxFit.cover),
                ),
                Expanded(
                  flex: 2,
                  child: Padding(
                    padding: const EdgeInsets.all(8),
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
                        const SizedBox(height: 10),
                        Text(destination.location),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class DestinationGrid extends StatelessWidget {
  final int gridCount;
  final List<Destination> destinations;

  const DestinationGrid({
    required this.gridCount,
    required this.destinations,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children:
            destinations.map((destination) {
              return InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder:
                          (_) => DetailScreen(
                            destination: destination,
                            similarPlaces: tListSimilar,
                          ),
                    ),
                  );
                },
                child: Card(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.stretch,
                    children: [
                      Expanded(
                        child: Image.network(
                          destination.imageUrl,
                          fit: BoxFit.cover,
                        ),
                      ),
                      const SizedBox(height: 8),
                      Padding(
                        padding: const EdgeInsets.only(left: 8),
                        child: Text(
                          destination.name,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, bottom: 8),
                        child: Text(destination.location),
                      ),
                    ],
                  ),
                ),
              );
            }).toList(),
      ),
    );
  }
}
