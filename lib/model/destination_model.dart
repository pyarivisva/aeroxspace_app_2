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

// Dummy
var tDestination = [
  Destination(
    name: "AeroXSpace",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/c8/2b/23/stellar-trapeze.jpg?w=1400&h=-1&s=1",
    rating: 4.5,
    location: "Jl. Bypass Ngurah Rai No.999, Denpasar",
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
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/38/17/fc/waterbom-bali.jpg?w=2000&h=-1&s=1",
    rating: 4.7,
    location: "Jl. Kartika Plaza, Kuta",
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
        "https://nicetourbali.com/wp-content/uploads/2023/01/ATV-Quad-Bike-Through-Tunnel-and-Waterfall-in-Bali.jpg",
    rating: 4.5,
    location: "Jl. Raya Tebongkang, Ubud",
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
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2020/12/22/7343e543-0f7c-416a-83a9-d21449a3a373-1608640344376-fa693afa186d5964db4b269f9943715d.jpg",
    rating: 3.9,
    location: "Jl. Imam Bonjol No.440, Denpasar",
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
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2024/08/05/ca1788f1-6ef6-40b7-973d-62880ced5d30-1722833291285-4627e3e6a2b2160c2b65e5306fe4bbf4.png",
    rating: 4.2,
    location: "Jl. Raya Singaraja-Denpasar, Buleleng",
    schedule: "Everyday",
    time: "08:00 - 17:00",
    price: "Rp 150.000",
    contact: "08123456783",
    description:
        "Bali Farm House is a countryside-themed attraction offering fresh air, scenic mountain views, and interactive animal experiences. Visitors can feed farm animals, enjoy local produce, and immerse themselves in the peaceful rural lifestyle of Bali’s highlands.",
  ),
  Destination(
    name: "AeroXSpace",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/c8/2b/23/stellar-trapeze.jpg?w=1400&h=-1&s=1",
    rating: 4.5,
    location: "Jl. Bypass Ngurah Rai No.999, Denpasar",
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
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/38/17/fc/waterbom-bali.jpg?w=2000&h=-1&s=1",
    rating: 4.7,
    location: "Jl. Kartika Plaza, Kuta",
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
        "https://nicetourbali.com/wp-content/uploads/2023/01/ATV-Quad-Bike-Through-Tunnel-and-Waterfall-in-Bali.jpg",
    rating: 4.5,
    location: "Jl. Raya Tebongkang, Ubud",
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
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2020/12/22/7343e543-0f7c-416a-83a9-d21449a3a373-1608640344376-fa693afa186d5964db4b269f9943715d.jpg",
    rating: 3.9,
    location: "Jl. Imam Bonjol No.440, Denpasar",
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
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2024/08/05/ca1788f1-6ef6-40b7-973d-62880ced5d30-1722833291285-4627e3e6a2b2160c2b65e5306fe4bbf4.png",
    rating: 4.2,
    location: "Jl. Raya Singaraja-Denpasar, Buleleng",
    schedule: "Everyday",
    time: "08:00 - 17:00",
    price: "Rp 150.000",
    contact: "08123456783",
    description:
        "Bali Farm House is a countryside-themed attraction offering fresh air, scenic mountain views, and interactive animal experiences. Visitors can feed farm animals, enjoy local produce, and immerse themselves in the peaceful rural lifestyle of Bali’s highlands.",
  ),
  Destination(
    name: "AeroXSpace",
    imageUrl:
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/2d/c8/2b/23/stellar-trapeze.jpg?w=1400&h=-1&s=1",
    rating: 4.5,
    location: "Jl. Bypass Ngurah Rai No.999, Denpasar",
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
        "https://dynamic-media-cdn.tripadvisor.com/media/photo-o/07/38/17/fc/waterbom-bali.jpg?w=2000&h=-1&s=1",
    rating: 4.7,
    location: "Jl. Kartika Plaza, Kuta",
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
        "https://nicetourbali.com/wp-content/uploads/2023/01/ATV-Quad-Bike-Through-Tunnel-and-Waterfall-in-Bali.jpg",
    rating: 4.5,
    location: "Jl. Raya Tebongkang, Ubud",
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
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2020/12/22/7343e543-0f7c-416a-83a9-d21449a3a373-1608640344376-fa693afa186d5964db4b269f9943715d.jpg",
    rating: 3.9,
    location: "Jl. Imam Bonjol No.440, Denpasar",
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
        "https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit1440960gsm/events/2024/08/05/ca1788f1-6ef6-40b7-973d-62880ced5d30-1722833291285-4627e3e6a2b2160c2b65e5306fe4bbf4.png",
    rating: 4.2,
    location: "Jl. Raya Singaraja-Denpasar, Buleleng",
    schedule: "Everyday",
    time: "08:00 - 17:00",
    price: "Rp 150.000",
    contact: "08123456783",
    description:
        "Bali Farm House is a countryside-themed attraction offering fresh air, scenic mountain views, and interactive animal experiences. Visitors can feed farm animals, enjoy local produce, and immerse themselves in the peaceful rural lifestyle of Bali’s highlands.",
  ),
];
