import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Home"),
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: 30),
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 150,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(color: Colors.black, width: 2)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          size: 60,
                          Icons.phone,
                          color: Colors.red,
                        ),
                        Text('Call')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.route,
                          size: 60,
                        ),
                        Text('Route')
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Icon(
                          Icons.share,
                          size: 60,
                          color: Colors.green,
                        ),
                        Text('Share')
                      ],
                    ),
                  ],
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 5)),
              Container(
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.white,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    )),
              )
            ],
          )
        ]),
      ),
    );
  }
}
