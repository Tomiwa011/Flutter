import 'package:flutter/material.dart';


class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('2024 Toyota Camry',),
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            // Define back button action here
          },
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.favorite_border),
            onPressed: () {
              // Define favorite button action here
            },
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Main Image with Overlays
            Stack(
              children: [
                // Image.network(
                //   'https://www.carwale.com/tata-cars/curvv/images/', // Replace with your actual image URL
                //   width: double.infinity,
                //   height: 300,
                //   fit: BoxFit.cover,
                // ),
                Container(
                  width: double.infinity,
                  height: 300,
                ),
                Positioned(
                  top: 10,
                  right: 10,
                  child: IconButton(
                    icon:
                        const Icon(Icons.favorite_border, color: Colors.white),
                    onPressed: () {
                      // Handle favorite action
                    },
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title and Price
                  const Text(
                    '2024 Toyota Camry',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'N100,000,000',
                    style: TextStyle(fontSize: 26, color: Colors.amber),
                  ),
                  const SizedBox(height: 8),
                  // Category and Location
                  const Row(
                    children: [
                      Icon(Icons.location_on, color: Colors.orange),
                      SizedBox(width: 5),
                      Text(
                          'Shop Address: 24 Ilupeju street, Ojueleba, Lagos State'),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Call Button
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle call button tap
                    },
                    icon: const Icon(Icons.phone),
                    label: const Text('Call'),
                    style: ElevatedButton.styleFrom(
                      shadowColor: Colors.orange,
                      iconColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Quick Message Section
                  const Text(
                    'Send a Quick Message',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(height: 10),
                  Wrap(
                    spacing: 10,
                    children: [
                      Chip(
                        label: const Text('Is this still available'),
                        backgroundColor: Colors.grey.shade200,
                      ),
                      Chip(
                        label: const Text('Last price'),
                        backgroundColor: Colors.grey.shade200,
                      ),
                      Chip(
                        label: const Text('How will I get it'),
                        backgroundColor: Colors.grey.shade200,
                      ),
                    ],
                  ),
                  const SizedBox(height: 10),
                  // Message Input
                  const TextField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      hintText: 'Type message',
                    ),
                  ),
                  const SizedBox(height: 10),
                  ElevatedButton(
                    onPressed: () {
                      // Handle send button tap
                    },
                    child: const Text('Send'),
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.orange,
                      backgroundColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  // Description Section
                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet lLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet lLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet lLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet l',
                    style: TextStyle(color: Colors.grey),
                  ),
                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'Shop'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business_center), label: 'Portfolio'),
          BottomNavigationBarItem(icon: Icon(Icons.store), label: 'My Store'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_circle), label: 'Account'),
        ],
      ),
    );
  }
}
