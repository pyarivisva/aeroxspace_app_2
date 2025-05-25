class Similar {
  final String name;
  final String location;
  final String imagePath;
  final double rating;
  final String price;

  Similar({
    required this.name,
    required this.location,
    required this.imagePath,
    required this.rating,
    required this.price,
  });
}

// Dummy list
var tListSimilar = [
  Similar(
    name: "Waterbom Bali",
    location: "Kuta",
    imagePath: "images/waterbom.jpg",
    rating: 4.7,
    price: "Rp 250.000",
  ),
  Similar(
    name: "Bali ATV Quad Bike",
    location: "Ubud, Bali",
    imagePath: "images/atv.jpg",
    rating: 4.1,
    price: "Rp 200.000",
  ),
  Similar(
    name: "TSM Theme Park",
    location: "Kuta",
    imagePath: "images/tsm.jpg",
    rating: 4.1,
    price: "Rp 200.000",
  ),
  Similar(
    name: "Bali Farm House",
    location: "Kuta",
    imagePath: "images/bali-farm.jpeg",
    rating: 4.1,
    price: "Rp 200.000",
  ),
];
