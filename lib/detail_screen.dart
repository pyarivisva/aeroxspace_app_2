import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:aeroxspace_app_2/model/destination_model.dart';
import 'package:aeroxspace_app_2/model/similar_model.dart';

class DetailScreen extends StatefulWidget {
  final Destination destination;

  const DetailScreen({super.key, required this.destination});

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String review = "";
  String? ask;

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
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),
        actions: const [FavoriteButton()],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Image.network(widget.destination.imageUrl),
              Padding(
                padding: const EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Expanded(
                          child: Text(
                            widget.destination.name,
                            style: const TextStyle(
                              fontFamily: "SofiaSans",
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                            ),
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        Row(
                          children: [
                            RatingBarIndicator(
                              rating: widget.destination.rating,
                              itemBuilder:
                                  (_, __) => const Icon(
                                    Icons.star,
                                    color: Colors.amber,
                                  ),
                              itemCount: 5,
                              itemSize: 24,
                            ),
                            const SizedBox(width: 5),
                            Text(
                              widget.destination.rating.toString(),
                              style: const TextStyle(fontSize: 16),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 8),
                    Row(
                      children: [
                        const Icon(
                          Icons.location_on,
                          size: 18,
                          color: Colors.red,
                        ),
                        const SizedBox(width: 5),
                        Expanded(
                          child: Text(
                            widget.destination.location,
                            style: const TextStyle(fontSize: 14),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    _InfoColumn(
                      icon: Icons.calendar_today,
                      label: widget.destination.schedule,
                    ),
                    _InfoColumn(
                      icon: Icons.access_time,
                      label: widget.destination.time,
                    ),
                    _InfoColumn(
                      icon: Icons.monetization_on,
                      label: widget.destination.price,
                    ),
                    Column(
                      children: [
                        const Icon(Icons.call),
                        const SizedBox(height: 8),
                        TextButton(onPressed: () {}, child: const Text("Call")),
                      ],
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 15,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    const SizedBox(height: 8),
                    Text(
                      widget.destination.description,
                      textAlign: TextAlign.justify,
                      style: const TextStyle(fontSize: 15),
                    ),
                  ],
                ),
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 16.0, vertical: 15.0),
                child: Text(
                  "Similar Experiences",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 260,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: tListSimilar.length,
                  itemBuilder: (context, index) {
                    final place = tListSimilar[index];
                    return _SimilarCard(place: place);
                  },
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 15,
                ),
                child: const Text(
                  "Write a Review",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),
              Center(
                child: RatingBarIndicator(
                  rating: 5.0,
                  itemBuilder:
                      (_, __) => const Icon(Icons.star, color: Colors.amber),
                  itemCount: 5,
                  itemSize: 45.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    TextField(
                      decoration: const InputDecoration(
                        hintText: "Write your review...",
                        labelText: "Review",
                      ),
                      onChanged: (value) => setState(() => review = value),
                    ),
                    const SizedBox(height: 20),
                    const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        "Would you recommend this place to your friends?",
                      ),
                    ),
                    Row(
                      children: [
                        Row(
                          children: [
                            Radio<String>(
                              value: "Yes",
                              groupValue: ask,
                              onChanged: (value) => setState(() => ask = value),
                            ),
                            const Text("Yes"),
                          ],
                        ),
                        const SizedBox(width: 20),
                        Row(
                          children: [
                            Radio<String>(
                              value: "No",
                              groupValue: ask,
                              onChanged: (value) => setState(() => ask = value),
                            ),
                            const Text("No"),
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    ElevatedButton(
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Review sent!')),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue,
                      ),
                      child: const Text(
                        "Post",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _InfoColumn extends StatelessWidget {
  final IconData icon;
  final String label;

  const _InfoColumn({required this.icon, required this.label});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [Icon(icon), const SizedBox(height: 8), Text(label)],
    );
  }
}

class _SimilarCard extends StatelessWidget {
  final Similar place;

  const _SimilarCard({required this.place});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(left: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
          BoxShadow(blurRadius: 6, offset: Offset(0, 3), color: Colors.black26),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: const BorderRadius.vertical(top: Radius.circular(10)),
            child: Image.asset(
              place.imagePath,
              width: 160,
              height: 140,
              fit: BoxFit.cover,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  place.name,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                  ),
                ),
                const SizedBox(height: 4),
                RatingBarIndicator(
                  rating: place.rating,
                  itemBuilder:
                      (_, __) => const Icon(Icons.star, color: Colors.amber),
                  itemCount: 5,
                  itemSize: 12,
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 14, color: Colors.red),
                    const SizedBox(width: 4),
                    Expanded(
                      child: Text(
                        place.location,
                        style: const TextStyle(
                          fontSize: 12,
                          color: Colors.grey,
                        ),
                        overflow: TextOverflow.ellipsis,
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Row(
                  children: [
                    const Icon(Icons.monetization_on, size: 14),
                    const SizedBox(width: 4),
                    Text(
                      place.price,
                      style: const TextStyle(fontSize: 12, color: Colors.grey),
                    ),
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

class FavoriteButton extends StatefulWidget {
  const FavoriteButton({super.key});

  @override
  State<FavoriteButton> createState() => _FavoriteButtonState();
}

class _FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () => setState(() => isFavorite = !isFavorite),
    );
  }
}
