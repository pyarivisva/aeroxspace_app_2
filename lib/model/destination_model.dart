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
var tDestination = [
  Destination(
    name: "AeroXSpace",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/c8/2b/23/stellar-trapeze.jpg?w=1400&h=-1&s=1",
    rating: 4.5,
    location: "Denpasar, Bali",
    schedule: "Everyday",
    time: "09:00 - 21:00",
    price: "Rp 300.000",
    contact: "08123456789",
    description:
        "Designed to inspire all ages to disconnect from their devices and improve their wellbeing and mental health through adrenaline-pumping activities. AeroXSpace is committed to creating the most exciting, imaginative, and fun family experience in Bali. Strategically located on Bali’s main artery bypass near the iconic Sanur neighborhood, AeroXSpace is a fully air-conditioned space-themed adventure park spans over 3,500 square meters and is located within a 6,000 square meter plot, with parking for up to 77 vehicles. Packed with 26 exhilarating multilevel attractions — some of which are the first in Indonesia — and adhering to the highest international safety codes.",
  ),
  Destination(
    name: "Waterbom Bali",
    imageUrl:
        "https://media-cdn.tripadvisor.com/media/photo-s/13/8e/4e/64/photo3jpg.jpg",
    rating: 4.7,
    location: "Kuta, Bali",
    schedule: "Everyday",
    time: "09:00 - 18:00",
    price: "Rp 300.000",
    contact: "08123456780",
    description:
        "Waterbom Bali is Southeast Asia’s premier waterpark with world-class rides set in a lush tropical garden. It provides thrills and relaxation alike, making it perfect for families, couples, and adventurers. Located in the heart of Kuta, it’s a must-visit destination for water enthusiasts.",
  ),

  Destination(
    name: "Bali ATV Quad Bike",
    imageUrl:
        "https://balquadadventure.com/wp-content/uploads/2021/06/ATV-Bali-Tandem.jpg",
    rating: 4.5,
    location: "Ubud, Bali",
    schedule: "Everyday",
    time: "08:00 - 17:00",
    price: "Rp 200.000",
    contact: "08123456781",
    description:
        "Experience the thrill of off-road ATV riding through the forests, rivers, and traditional Balinese villages in Ubud. Bali ATV Quad Bike offers guided tours perfect for beginners and experienced riders alike, promising adventure with safety and fun.",
  ),

  Destination(
    name: "TSM Theme Park",
    imageUrl:
        "https://awsimages.detik.net.id/community/media/visual/2023/07/13/trans-studio-mini-1_169.jpeg",
    rating: 3.9,
    location: "Badung, Bali",
    schedule: "Everyday",
    time: "10:00 - 20:00",
    price: "Rp 100.000",
    contact: "08123456782",
    description:
        "TSM Theme Park is an indoor amusement park located within Trans Studio Mall, offering rides, games, and fun zones for kids and families. It’s the perfect spot to escape the heat and have some fun indoors while shopping and dining are just steps away.",
  ),

  Destination(
    name: "Bali Farm House",
    imageUrl:
        "https://img.inews.co.id/media/822/files/inews_new/2022/12/15/Farm_House_Susu_Lembang.jpg",
    rating: 4.2,
    location: "Bedugul, Bali",
    schedule: "Everyday",
    time: "08:00 - 17:00",
    price: "Rp 150.000",
    contact: "08123456783",
    description:
        "Bali Farm House is a countryside-themed attraction offering fresh air, scenic mountain views, and interactive animal experiences. Visitors can feed farm animals, enjoy local produce, and immerse themselves in the peaceful rural lifestyle of Bali’s highlands.",
  ),
];
