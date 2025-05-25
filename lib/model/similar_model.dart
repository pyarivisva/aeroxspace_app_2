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

final List<Similar> places = [
  Similar(
    name: "Waterbom Bali",
    location: "Kuta, Bali",
    imagePath: "images/waterbom.jpg",
    rating: 4.7,
    price: "Rp 328.000",
  ),
  Similar(
    name: "Bounce Trampoline",
    location: "Canggu, Bali",
    imagePath: "images/bounce.jpg",
    rating: 4.3,
    price: "Rp 250.000",
  ),
  // Tambah data lainnya sesuai kebutuhan
];
