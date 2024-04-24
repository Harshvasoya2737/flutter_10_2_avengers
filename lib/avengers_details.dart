import 'package:flutter/material.dart';

class Avengers_details extends StatefulWidget {
  final String? img;
  final String? name;
  final String? roll;

  Avengers_details({Key? key, this.img, this.name, this.roll})
      : super(key: key);

  @override
  _Avengers_detailsState createState() => _Avengers_detailsState();
}

class _Avengers_detailsState extends State<Avengers_details> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        centerTitle: true,
        title: Text(
          "Marvel Character",
          style: TextStyle(color: Colors.white),
        ),
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: Icon(
            Icons.arrow_back,
            color: Colors.white,
          ),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(8.0),
              height: 400,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Image.asset(widget.img ?? ''),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              height: 100,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Column(
                children: [
                  Text(
                    widget.name ?? "",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  ),
                  SizedBox(height: 18),
                  Text(
                    widget.roll ?? "",
                    style: TextStyle(color: Colors.white, fontSize: 25),
                  )
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.all(8.0),
              height: 300,
              width: double.infinity,
              decoration: BoxDecoration(
                color: Colors.black12,
                boxShadow: [
                  BoxShadow(
                    color: Colors.black,
                    blurRadius: 10,
                    spreadRadius: 1,
                  )
                ],
              ),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.",
                style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
