import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:aeroxspace_app_2/model/destination_model.dart';
import 'package:aeroxspace_app_2/model/similar_model.dart';

class DetailScreen extends StatefulWidget {
  final Destination destination;
  final List<Similar> similarPlaces;

  const DetailScreen({
    required this.destination,
    required this.similarPlaces,
    super.key,
  });

  @override
  State<DetailScreen> createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  String review = "";
  String? ask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
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

        // Back button
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.white),
          onPressed: () => Navigator.pop(context),
        ),

        // Favorite button
        actions: <Widget>[const FavoriteButton()],
      ),

      // Body
      body: SafeArea(
        // Scroll
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Main image
              Image.network(widget.destination.imageUrl),

              // Title & rating
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      // Nama destinasi
                      widget.destination.name,
                      style: const TextStyle(
                        fontFamily: "SofiaSans",
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Row(
                      children: [
                        RatingBarIndicator(
                          // Rating
                          rating: widget.destination.rating,
                          itemBuilder:
                              (context, _) =>
                                  const Icon(Icons.star, color: Colors.amber),
                          itemCount: 5,
                          itemSize: 24.0,
                        ),

                        const SizedBox(width: 5),
                        // Text rating
                        Text(
                          widget.destination.rating.toString(),
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Lokasi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
                child: Row(
                  children: [
                    const Icon(Icons.location_on, size: 18, color: Colors.red),
                    const SizedBox(width: 5),
                    // Teks lokasi
                    Expanded(
                      child: Text(
                        widget.destination.location,
                        style: const TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Informasi
              Padding(
                padding: const EdgeInsets.symmetric(
                  vertical: 25.0,
                  horizontal: 15.0,
                ),
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
                        TextButton(
                          onPressed: () {
                            // Implement contact action
                          },
                          child: const Text("Call"),
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Deskripsi
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0),
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

              // Similar Experiences
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 15.0,
                ),
                child: const Text(
                  "Similar Experiences",
                  style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                ),
              ),

              SizedBox(
                height: 260,
                // List similar yang discroll horizontal
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: widget.similarPlaces.length,
                  itemBuilder: (context, index) {
                    final place = widget.similarPlaces[index];
                    return _SimilarCard(place: place);
                  },
                ),
              ),

              // Write review heading
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 15.0,
                ),
                child: const Text(
                  "Write a Review",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),

              // Rating
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 10.0,
                ),
                child: Center(
                  child: RatingBarIndicator(
                    rating: 5.0,
                    itemBuilder:
                        (context, index) =>
                            const Icon(Icons.star, color: Colors.amber),
                    itemCount: 5,
                    itemSize: 45.0,
                    direction: Axis.horizontal,
                  ),
                ),
              ),

              // Review input
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 10.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextField(
                      decoration: const InputDecoration(
                        hintText: "Write your review...",
                        labelText: "Review",
                      ),
                      onChanged: (String value) {
                        setState(() {
                          review = value;
                        });
                      },
                    ),

                    const SizedBox(height: 30),

                    // Question text
                    Container(
                      alignment: Alignment.topLeft,
                      child: const Text(
                        "Would you recommend this place to your friends?",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),

                    // Radio buttons
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Row(
                              children: [
                                Radio<String>(
                                  value: "Yes",
                                  groupValue: ask,
                                  onChanged: (String? value) {
                                    setState(() {
                                      ask = value;
                                    });
                                  },
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
                                  onChanged: (String? value) {
                                    setState(() {
                                      ask = value;
                                    });
                                  },
                                ),
                                const Text("No"),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),

                    const SizedBox(height: 30),

                    ElevatedButton(
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
                      onPressed: () {
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Review sent!')),
                        );
                      },
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
          // Clip gambar saja, bukan seluruh container
          ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
            ),
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
                      (context, _) =>
                          const Icon(Icons.star, color: Colors.amber),
                  itemCount: 5,
                  itemSize: 12,
                  direction: Axis.horizontal,
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
  FavoriteButtonState createState() => FavoriteButtonState();
}

class FavoriteButtonState extends State<FavoriteButton> {
  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(
        isFavorite ? Icons.favorite : Icons.favorite_border,
        color: Colors.red,
      ),
      onPressed: () {
        setState(() {
          isFavorite = !isFavorite;
        });
      },
    );
  }
}
