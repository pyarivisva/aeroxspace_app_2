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

// Dummy
var tListSimilar = [
  Similar(
    name: "Waterbom Bali",
    location: "Kuta, Bali",
    imagePath: "images/waterbom.jpg",
    rating: 4.7,
    price: "Rp 300.000",
  ),
  Similar(
    name: "Bali ATV Quad Bike",
    location: "Ubud, Bali",
    imagePath: "images/atv.jpg",
    rating: 4.5,
    price: "Rp 200.000",
  ),
  Similar(
    name: "TSM Theme Park",
    location: "Badung, Bali",
    imagePath: "images/tsm.jpg",
    rating: 3.9,
    price: "Rp 100.000",
  ),
  Similar(
    name: "Bali Farm House",
    location: "Bedugul, Bali",
    imagePath: "images/bali-farm.jpeg",
    rating: 4.2,
    price: "Rp 150.000",
  ),
  Similar(
    name: "AeroXSpace",
    location: "Sanur, Bali",
    imagePath: "images/aero.jpg",
    rating: 4.5,
    price: "Rp 300.000",
  ),
];
