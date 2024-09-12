import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          '2024 Mercerdes Benz',
          style: GoogleFonts.xanhMono(
            textStyle: Theme.of(context).textTheme.displayLarge,
            fontSize: 15,
            fontWeight: FontWeight.w700,
            fontStyle: FontStyle.normal,
          ),
        ),
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
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: double.infinity,
              height: 300,
              child: Image.network(
                "https://images.pexels.com/photos/6152812/pexels-photo-6152812.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1",
              ),
            ),
            const Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Center(
                  child: SizedBox(
                    width: 100,
                    height: 50,
                    // color: Colors.black,
                    child: Row(
                      children: [
                        Icon(Icons.arrow_back_ios),
                        Text('1 of 4'),
                        Icon(Icons.arrow_forward_ios_rounded)
                      ],
                    ),
                  ),
                )
              ],
            ),
            Positioned(
              top: 10,
              right: 10,
              child: IconButton(
                icon: const Icon(Icons.favorite_border, color: Colors.white),
                onPressed: () {},
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Product Title and Price
                  const Text(
                    '2024 Toyota Camry',
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
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
                        'Shop Address: 24 Ilupeju street, Ojueleba, Lagos State',
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  // Call Button
                  ElevatedButton.icon(
                    onPressed: () {
                      // Handle call button tap
                    },
                    icon: const Icon(Icons.phone),
                    label: const Text(
                      'Call',
                      style: TextStyle(color: Colors.white),
                    ),
                    style: ElevatedButton.styleFrom(
                      shadowColor: const Color.fromARGB(224, 241, 60, 60),
                      backgroundColor: Colors.orange.shade600,
                      iconColor: Colors.white,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 40,
                  ),
                  // Quick Message Section
                  const Text(
                    'Send a Quick Message',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 20,
                    child: Text('Quick Select', style: TextStyle(fontSize: 14)),
                  ),

                  Wrap(
                    spacing: 10,
                    children: [
                      Chip(
                        label: const Text('Is this still available'),
                        labelStyle: TextStyle(color: Colors.orange.shade600),
                        backgroundColor: Colors.grey.shade200,
                      ),
                      Chip(
                        label: const Text('Last price'),
                        labelStyle: TextStyle(color: Colors.orange.shade600),
                        backgroundColor: Colors.grey.shade200,
                      ),
                      Chip(
                        label: const Text('How will I get it'),
                        labelStyle: TextStyle(color: Colors.orange.shade600),
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
                    style: ElevatedButton.styleFrom(
                      iconColor: Colors.orange,
                      backgroundColor: Colors.orange,
                      minimumSize: const Size(double.infinity, 50),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                    ),
                    child: const Text('Send'),
                  ),
                  const SizedBox(height: 20),

                  const Text(
                    'Description',
                    style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                  ),
                  const Text(
                    'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet lLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet lLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet lLorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus imperdiet l',
                    style: TextStyle(color: Color.fromARGB(248, 154, 154, 151)),
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
