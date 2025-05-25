// import 'package:flutter/material.dart';
// import 'package:aeroxspace_app_2/detail_screen.dart';
// import 'package:aeroxspace_app_2/model/destination_model.dart';

// class ListScreen extends StatelessWidget {
//   const ListScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text(
//           "TourAjaSize",
//           style: TextStyle(
//             fontFamily: "SofiaSans",
//             color: Colors.white,
//             fontWeight: FontWeight.bold,
//           ),
//         ),
//         backgroundColor: Colors.blue,
//       ),
//       body: LayoutBuilder(
//         builder: (BuildContext context, BoxConstraints constraints) {
//           if (constraints.maxWidth <= 600) {
//             return const DestinationList();
//           } else if (constraints.maxWidth <= 1200) {
//             return const DestinationGrid(gridCount: 4);
//           } else {
//             return const DestinationGrid(gridCount: 6);
//           }
//         },
//       ),
//     );
//   }
// }

// class DestinationList extends StatelessWidget {
//   const DestinationList({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return ListView.builder(
//       itemCount: destinationList.length,
//       itemBuilder: (context, index) {
//         final destination = destinationList[index];
//         return InkWell(
//           onTap: () {
//             Navigator.push(
//               context,
//               MaterialPageRoute(
//                 builder: (_) => DetailScreen(place: destination),
//               ),
//             );
//           },
//           child: Card(
//             margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
//             elevation: 4,
//             shape: RoundedRectangleBorder(
//               borderRadius: BorderRadius.circular(10),
//             ),
//             child: Row(
//               children: [
//                 ClipRRect(
//                   borderRadius: const BorderRadius.only(
//                     topLeft: Radius.circular(10),
//                     bottomLeft: Radius.circular(10),
//                   ),
//                   child: Image.asset(
//                     destination.imageAsset,
//                     width: 120,
//                     height: 100,
//                     fit: BoxFit.cover,
//                   ),
//                 ),
//                 const SizedBox(width: 12),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.symmetric(vertical: 8.0),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           destination.name,
//                           style: const TextStyle(
//                             fontSize: 16,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           destination.location,
//                           style: const TextStyle(color: Colors.grey),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           destination.price,
//                           style: const TextStyle(color: Colors.black87),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         );
//       },
//     );
//   }
// }

// class DestinationGrid extends StatelessWidget {
//   final int gridCount;

//   const DestinationGrid({super.key, required this.gridCount});

//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(16.0),
//       child: GridView.count(
//         crossAxisCount: gridCount,
//         crossAxisSpacing: 16,
//         mainAxisSpacing: 16,
//         children: destinationList.map((destination) {
//           return InkWell(
//             onTap: () {
//               Navigator.push(
//                 context,
//                 MaterialPageRoute(
//                   builder: (_) => DetailScreen(place: destination),
//                 ),
//               );
//             },
//             child: Card(
//               shape: RoundedRectangleBorder(
//                 borderRadius: BorderRadius.circular(12),
//               ),
//               elevation: 4,
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   Expanded(
//                     child: ClipRRect(
//                       borderRadius: const BorderRadius.vertical(top: Radius.circular(12)),
//                       child: Image.asset(
//                         destination.imageAsset,
//                         fit: BoxFit.cover,
//                       ),
//                     ),
//                   ),
//                   Padding(
//                     padding: const EdgeInsets.all(8),
//                     child: Column(
//                       crossAxisAlignment: CrossAxisAlignment.start,
//                       children: [
//                         Text(
//                           destination.name,
//                           style: const TextStyle(
//                             fontWeight: FontWeight.bold,
//                             fontSize: 14,
//                           ),
//                         ),
//                         const SizedBox(height: 4),
//                         Text(
//                           destination.location,
//                           style: const TextStyle(fontSize: 12, color: Colors.grey),
//                         ),
//                       ],
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         }).toList(),
//       ),
//     );
//   }
// }
