import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

// Tampilan
class DetailScreen extends StatefulWidget {
  const DetailScreen({super.key});

  @override
  DetailScreenState createState() => DetailScreenState();
}

class DetailScreenState extends State<DetailScreen> {
  String review = "";
  String? ask;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // Appbar
      appBar: AppBar(
        // Title
        title: const Text(
          "TourAja",
          style: TextStyle(
            // Font
            fontFamily: "SofiaSans",
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
        backgroundColor: Colors.blue,

        // Menu
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.white),
          onPressed: () {
            // Aksi
          },
        ),

        // Search bar
        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.search, color: Colors.white),
            onPressed: () {
              // Aksi
            },
          ),
        ],
      ),

      // Body
      body: SafeArea(
        // scroll
        child: SingleChildScrollView(
          // column
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              // Image
              Image.network(
                "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/c8/2b/23/stellar-trapeze.jpg?w=1400&h=-1&s=1",
              ),

              // Headline
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 8.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Nama Destinasi
                    const Text(
                      "AeroXSpace",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: "SofiaSans",
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    // jarak
                    const SizedBox(width: 80),

                    // Icon Rating
                    RatingBarIndicator(
                      rating: 4.5,
                      // Fungsi itemBuilder
                      itemBuilder:
                          (context, index) =>
                              const Icon(Icons.star, color: Colors.amber),
                      itemCount: 5,
                      itemSize: 24.0,
                      direction: Axis.horizontal,
                    ),

                    // Tulisan rating
                    const Text(
                      "4.5",
                      style: TextStyle(
                        fontSize: 16.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              // Lokasi
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 1.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    // Icon lokasi
                    const Icon(
                      Icons.location_on,
                      color: Colors.red,
                      size: 18.0,
                    ),

                    const SizedBox(width: 5),

                    // Lokasi
                    Text(
                      "Jl. Bypass Ngurah Rai No.999, Denpasar, Bali",
                      style: TextStyle(
                        fontSize: 14.0,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),

              // Informasi
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 15.0,
                  vertical: 25.0,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    // jadwal
                    Column(
                      children: const <Widget>[
                        Icon(Icons.calendar_today),
                        SizedBox(height: 8.0),
                        Text('Everyday'),
                      ],
                    ),
                    // jam
                    Column(
                      children: const <Widget>[
                        Icon(Icons.access_time),
                        SizedBox(height: 8.0),
                        Text('09:00 - 21:00'),
                      ],
                    ),
                    // harga
                    Column(
                      children: const <Widget>[
                        Icon(Icons.monetization_on),
                        SizedBox(height: 8.0),
                        Text('Rp 300.000'),
                      ],
                    ),
                    // kontak
                    Column(
                      children: <Widget>[
                        Icon(Icons.call),
                        SizedBox(height: 8.0),
                        TextButton(
                          child: Text("Call"),
                          onPressed: () {
                            // Aksi
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),

              // Deskripsi
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 2.0,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Description",
                      style: TextStyle(
                        fontSize: 20.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    SizedBox(height: 8.0),

                    Text(
                      'Designed to inspire all ages to disconnect from their devices and improve their wellbeing and mental health through adrenaline-pumping activities. AeroXSpace is committed to creating the most exciting, imaginative, and fun family experience in Bali. Strategically located on Bali’s main artery bypass near the iconic Sanur neighborhood, AeroXSpace is a fully air-conditioned space-themed adventure park spans over 3,500 square meters and is located within a 6,000 square meter plot, with parking for up to 77 vehicles. Packed with 26 exhilarating multilevel attractions — some of which are the first in Indonesia — and adhering to the highest international safety codes.',
                      textAlign: TextAlign.justify,
                      style: TextStyle(fontSize: 15.0),
                    ),
                  ],
                ),
              ),

              // Heading Similar Experiences
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 15.0,
                ),
                child: Text(
                  "Similar Experiences",
                  textAlign: TextAlign.start,
                  style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
                ),
              ),

              Container(
                margin: const EdgeInsets.symmetric(horizontal: 15.0),
                child: SizedBox(
                  height: 240,
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 10, offset: Offset(0, 5)),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/waterbom.jpg",
                                  height: 140,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Waterbom Bali",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      RatingBarIndicator(
                                        rating: 4.7,
                                        itemBuilder:
                                            (context, index) => const Icon(
                                              Icons.star,
                                              color: Colors.amber,
                                            ),
                                        itemCount: 5,
                                        itemSize: 10.0,
                                        direction: Axis.horizontal,
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 14,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "Kuta, Bali",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.monetization_on, size: 14),
                                          SizedBox(width: 4),
                                          Text(
                                            "Rp 328.000",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 10, offset: Offset(0, 5)),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/atv.jpg",
                                  height: 140,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bali ATV Quad Bike",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: 5.0,
                                            itemBuilder:
                                                (context, index) => const Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                            itemCount: 5,
                                            itemSize: 10.0,
                                            direction: Axis.horizontal,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 14,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "Ubud, Bali",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.monetization_on, size: 14),
                                          SizedBox(width: 4),
                                          Text(
                                            "Rp 340.000",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 10, offset: Offset(0, 5)),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/tsm.jpg",
                                  height: 140,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "TSM Theme Park",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: 4.6,
                                            itemBuilder:
                                                (context, index) => const Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                            itemCount: 5,
                                            itemSize: 10.0,
                                            direction: Axis.horizontal,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 14,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "Denpasar, Bali",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.monetization_on, size: 14),
                                          SizedBox(width: 4),
                                          Text(
                                            "Rp 225.000",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 15.0),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: Container(
                            width: 160,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              boxShadow: [
                                BoxShadow(blurRadius: 10, offset: Offset(0, 5)),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Image.asset(
                                  "images/bali-farm.jpeg",
                                  height: 140,
                                  width: 160,
                                  fit: BoxFit.cover,
                                ),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Bali Farm House",
                                        style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 14,
                                        ),
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          RatingBarIndicator(
                                            rating: 4.7,
                                            itemBuilder:
                                                (context, index) => const Icon(
                                                  Icons.star,
                                                  color: Colors.amber,
                                                ),
                                            itemCount: 5,
                                            itemSize: 10.0,
                                            direction: Axis.horizontal,
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(
                                            Icons.location_on,
                                            size: 14,
                                            color: Colors.red,
                                          ),
                                          SizedBox(width: 4),
                                          Text(
                                            "Singaraja, Bali",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 4),
                                      Row(
                                        children: [
                                          Icon(Icons.monetization_on, size: 14),
                                          SizedBox(width: 4),
                                          Text(
                                            "Rp 112.000",
                                            style: TextStyle(
                                              color: Colors.grey,
                                              fontSize: 12,
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Write review heading
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 15.0,
                ),
                child: Text(
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

              // Review
              Container(
                margin: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 10.0,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    TextField(
                      decoration: InputDecoration(
                        hintText: "Write your review...",
                        labelText: "Review",
                      ),
                      onChanged: (String value) {
                        setState(() {
                          review = value;
                        });
                      },
                    ),

                    SizedBox(height: 30),

                    // Teks pertanyaan
                    Container(
                      alignment: Alignment.topLeft,
                      child: Text(
                        "Would you recommend this place to your friends?",
                        style: TextStyle(fontSize: 15),
                      ),
                    ),

                    // Radio
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
                            SizedBox(width: 20),
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

                    SizedBox(height: 30),

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
                          SnackBar(content: const Text('Review sent!')),
                        );
                      },
                    ),
                  ],
                ),
              ),

              // Radio
            ],
          ),
        ),
      ),

      floatingActionButton: SizedBox(
        width: 90,
        height: 40,
        child: FloatingActionButton(
          backgroundColor: Colors.red,
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: const Text('Tickets have been booked!')),
            );
          },
          child: const Text(
            "Book Now",
            style: TextStyle(color: Colors.white),
            textAlign: TextAlign.center,
          ),
        ),
      ),
    );
  }
}
