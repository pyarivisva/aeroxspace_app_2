class Destination {
  final String name;
  final String imageUrl;
  final double rating;
  final String location;
  final String schedule;
  final String time;
  final String price;
  final String contact;
  final String description;

  Destination({
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.location,
    required this.schedule,
    required this.time,
    required this.price,
    required this.contact,
    required this.description,
  });
}

// Dummy data
var tDestination = Destination(
  name: "AeroXSpace",
  imageUrl:
      "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/c8/2b/23/stellar-trapeze.jpg?w=1400&h=-1&s=1",
  rating: 4.5,
  location: "Jl. Bypass Ngurah Rai No.999, Denpasar, Bali",
  schedule: "Everyday",
  time: "09:00 - 21:00",
  price: "Rp 300.000",
  contact: "08123456789",
  description:
      "Designed to inspire all ages to disconnect from their devices and improve their wellbeing and mental health through adrenaline-pumping activities. AeroXSpace is committed to creating the most exciting, imaginative, and fun family experience in Bali. Strategically located on Bali’s main artery bypass near the iconic Sanur neighborhood, AeroXSpace is a fully air-conditioned space-themed adventure park spans over 3,500 square meters and is located within a 6,000 square meter plot, with parking for up to 77 vehicles. Packed with 26 exhilarating multilevel attractions — some of which are the first in Indonesia — and adhering to the highest international safety codes.",
);
