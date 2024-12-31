import 'package:flutter/material.dart';

class Rides extends StatefulWidget {
  const Rides({super.key});

  @override
  State<Rides> createState() => _RidesState();
}

class _RidesState extends State<Rides> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: ListView.builder(
          itemCount: 7,
          itemBuilder: (ctx, index) {
            return const Padding(
              padding: EdgeInsets.only(bottom: 7),
              child: RideCardWidget(
                title: 'Ride to Nandi Hills',
                userName: 'Manish Surapaneni',
                bike: 'Ducati',
                coRiders: 12,
                distance: '900 km',
                date: 'July 20 2024',
                location: 'Hyderabad',
                imagePath: 'https://example.com/path_to_your_image.jpg',
              ),
            );
          }),
    );
  }
}

class RideCardWidget extends StatelessWidget {
  final String title;
  final String userName;
  final String bike;
  final int coRiders;
  final String distance;
  final String date;
  final String location;
  final String imagePath;

  const RideCardWidget({
    required this.title,
    required this.userName,
    required this.bike,
    required this.coRiders,
    required this.distance,
    required this.date,
    required this.location,
    required this.imagePath,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 4,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Image Section
          ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(12), topRight: Radius.circular(12)),
              child: Container(
                color: Colors.red,
                height: 120,
              )

              // Image.network(
              //   imagePath,
              //   height: 150,
              //   width: double.infinity,
              //   fit: BoxFit.cover,
              // ),
              ),
          // Text Content Section
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.account_circle, size: 20),
                    const SizedBox(width: 8),
                    Text(
                      userName,
                      style: const TextStyle(fontSize: 14),
                    ),
                    const Spacer(),
                    Text(
                      '$coRiders Co Riders',
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                const SizedBox(height: 4),
                Text(
                  bike,
                  style: TextStyle(fontSize: 14, color: Colors.grey[600]),
                ),
              ],
            ),
          ),
          const Divider(height: 1),
          // Bottom Info Section
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    const Icon(Icons.directions_bike, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      distance,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.calendar_today, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      date,
                      style: const TextStyle(fontSize: 14),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Icon(Icons.location_on, size: 18),
                    const SizedBox(width: 4),
                    Text(
                      location,
                      style: const TextStyle(fontSize: 14),
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
