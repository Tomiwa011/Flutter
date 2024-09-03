import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';

class Product extends StatelessWidget {
  const Product({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('2024 Toyota Camry'),
          centerTitle: true,
        ),
        body: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.all(0),
            child: Column(
              children: [
                Container(
                  width: 410,
                  height: 300,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                  margin: const EdgeInsets.only(bottom: 15),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Padding(padding: EdgeInsets.all(10)),
                    Icon(Icons.arrow_back_ios),
                    Text('1 of 4'),
                    Icon(Icons.arrow_forward_ios),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.only(
                      top: 20, right: 20, left: 20, bottom: 20),
                  margin: const EdgeInsets.only(top: 9),
                  // width: 380,
                  height: 300,
                  decoration: const BoxDecoration(
                      color: Color.fromARGB(137, 221, 216, 216),
                      border: Border.symmetric(),
                      borderRadius: BorderRadius.all(Radius.circular(20))),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(' 2004 Toyota Camry',
                          style: TextStyle(fontSize: 20)),
                      const Text(
                        ' N100,000,000',
                        style:
                            TextStyle(fontSize: 30, color: Colors.amberAccent),
                      ),
                      const Text(' Category:Automobile',
                          style: TextStyle(fontSize: 15, color: Colors.grey)),
                      const Row(
                        children: [
                          Icon(
                            Icons.location_on_sharp,
                            color: Colors.orange,
                          ),
                          Text('Shop Address:'),
                          Text(
                            '24 Ilupeju street,Ojueleba,Lagos State',
                          )
                        ],
                      ),
                      Container(
                        margin:
                            const EdgeInsets.only(top: 20, left: 10, right: 10),
                        width: 400,
                        height: 100,
                        decoration: BoxDecoration(
                            color: const Color.fromARGB(255, 244, 121, 34),
                            borderRadius: BorderRadius.circular(15)),
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.phone,
                              color: Colors.white,
                            ),
                            Text(
                              'Call',
                              style: TextStyle(color: Colors.white),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      'Send a Quick Message',
                      style: TextStyle(fontSize: 22),
                    )
                  ],
                ),
                Container(
                  margin: const EdgeInsets.only(
                    left: 10,
                    right: 10,
                  ),
                  width: 410,
                  height: 250,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  
                )
              ],
            ),
          ),
        ));
  }
}
