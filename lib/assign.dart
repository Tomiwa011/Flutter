import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';

class Assign extends StatelessWidget {
  const Assign({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: Container(
        padding: EdgeInsets.only(top: 50),
        width: 200,
        color: Colors.amber,
        height: MediaQuery.of(context).size.height,
        child: Column(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.white,
            )
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.amber,
        title: const Text("Assign"),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.only(right: 20, left: 20, top: 30),
        child: Column(children: [
          Row(
            children: [
              Container(
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.red.shade800,
                    border: Border.all(color: Colors.black, width: 2),
                    borderRadius: BorderRadius.circular(10)),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                ),
              ),
              const Padding(padding: EdgeInsets.only(right: 5)),
              Container(
                height: 150,
                width: 180,
                decoration: BoxDecoration(
                    color: Colors.red.shade800,
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(10)),
              )
            ],
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            height: 150,
            width: 350,
            decoration: BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black, width: 3),
                borderRadius: BorderRadius.circular(10)),
          ),
          const Padding(padding: EdgeInsets.only(top: 10)),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 400,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue.shade200,
                      border: Border.all(color: Colors.green, width: 3),
                      borderRadius: BorderRadius.circular(10)),
                ),
                Container(
                  height: 400,
                  width: 170,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue.shade200,
                      border: Border.all(color: Colors.green, width: 3),
                      borderRadius: BorderRadius.circular(10)),
                )
              ],
            ),
          ),
        ]),
      ),
    );
  }
}
