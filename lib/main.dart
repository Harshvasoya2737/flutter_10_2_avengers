  import 'package:flutter/cupertino.dart';
  import 'package:flutter/material.dart';
  import 'package:flutter_10_2/avengers_details.dart';
  import 'package:flutter_10_2/list.dart';

  void main() {
    runApp(Myapp());
  }

  class Myapp extends StatefulWidget {
    const Myapp({super.key});

    @override
    State<Myapp> createState() => _MyappState();
  }

  class _MyappState extends State<Myapp> {
    @override
    Widget build(BuildContext context) {
      return MaterialApp(
        debugShowCheckedModeBanner: false,
        initialRoute: "home",
        routes: {
          "home": (context) => Homepage(),
          "detail": (context) => Avengers_details(),
        },
      );
    }
  }

  class Homepage extends StatelessWidget {
    const Homepage({super.key});

    @override
    Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            "MARVEL UNIVERSE",
            style: TextStyle(color: Colors.white, fontSize: 25, letterSpacing: 2),
          ),
          backgroundColor: Colors.black,
        ),
        body: Stack(
          children: [
            Container(
              height: 740,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xff240046),
              ),
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 25, top: 50),
                  child: Text(
                    "AVENGERS",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 25,
                        fontWeight: FontWeight.w600),
                  ),
                ),
              ],
            ),
            SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              child: Row(
                children: Avengers.map((e) {
                  return Company(
                    img: e["img"],
                    name: e["name"],
                    roll: e["roll"],
                  );
                }).toList(),
              ),
            ),
          ],
        ),
      );
    }
  }

  class Company extends StatelessWidget {
    String? img;
    String? name;
    String? roll;

    Company({
      super.key,
      this.img,
      this.name,
      this.roll,
    });

    @override
    Widget build(BuildContext context) {
      return Stack(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 150, left: 20),
            child: Container(
              height: 250,
              width: 180,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20),
                  color: Color(0xff4E1288),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 1, blurRadius: 10, color: Colors.black),
                  ]),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 60, top: 101),
            child: Image.asset(
              img ?? "",
              height: 180,
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 300),
            child: Text(
              name ?? "",
              style: TextStyle(
                  color: Colors.white, fontWeight: FontWeight.bold, fontSize: 18),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 320),
            child: Text(
              roll ?? "",
              style: TextStyle(
                  color: Colors.white54,
                  fontWeight: FontWeight.w600,
                  fontSize: 15),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 25, top: 355),
            child: InkWell(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Avengers_details(
                      img: img,
                      name: name,
                      roll: roll,
                    ),
                  ),
                );
              },
              child: Container(
                height: 30,
                width: 100,
                child: Center(
                    child: Text(
                  "KNOW MORE",
                  style: TextStyle(color: Colors.white, fontSize: 10),
                )),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Colors.black,
                    boxShadow: [
                      BoxShadow(
                          color: Colors.black, blurRadius: 10, spreadRadius: 1)
                    ]),
              ),
            ),
          ),
        ],
      );
    }
  }
