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
        title: Text(
          "Wisata Bandung. Size: ${MediaQuery.of(context).size.width}",
          style: const TextStyle(
            fontFamily: "SofiaSans",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,
      ),
      body: LayoutBuilder(
        builder: (BuildContext context, BoxConstraints constraints) {
          if (constraints.maxWidth <= 600) {
            return const DestinationList();
          } else if (constraints.maxWidth <= 1200) {
            return const DestinationGrid(gridCount: 4);
          } else {
            return const DestinationGrid(gridCount: 6);
          }
        },
      ),
    );
  }
}

class DestinationList extends StatelessWidget {
  const DestinationList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tDestination.length,
      itemBuilder: (context, index) {
        final destination = tDestination[index];
        return InkWell(
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

  const DestinationGrid({required this.gridCount, super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24),
      child: GridView.count(
        crossAxisCount: gridCount,
        crossAxisSpacing: 10,
        mainAxisSpacing: 10,
        children:
            tDestination.map((destination) {
              return InkWell(
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
