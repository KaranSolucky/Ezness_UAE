import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shopping/utils/shared.dart';
import 'package:shopping/utils/styles.dart';

import 'cart.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int _selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    final _tabs = [
      HomePage(),
      CartScreen(),
      Text('Tab3'),
      Text('Tab4'),
      Text('Tab5'),
    ];
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Image.asset(
                      "assets/images/usell.PNG",
                      height: 50,
                      width: 50,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 40,
                        width: 200,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: Colors.grey[100]),
                        // ignore: prefer_const_literals_to_create_immutables
                        child: Row(children: [
                          SizedBox(width: 10),
                          SizedBox(
                            width: 180,
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintText: 'Search',
                              ),
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Image.asset(
                      "assets/images/support.PNG",
                      height: 50,
                      width: 100,
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      InkWell(
                        child: Text(
                          "HEADLINE 1",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "HEADLINE 2",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "HEADLINE 3",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "HEADLINE 4",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                              child: Stack(
                            children: [
                              CarouselSlider(
                                  items: [
                                    Image.asset(
                                      "assets/images/2.jpg",
                                    ),
                                    Image.asset("assets/images/2.jpg"),
                                    Image.asset("assets/images/2.jpg"),
                                    Image.asset("assets/images/2.jpg"),
                                  ],
                                  options: CarouselOptions(
                                    height: 249,
                                    aspectRatio: 16 / 9,
                                    viewportFraction: 1.1,
                                    initialPage: 0,
                                    enableInfiniteScroll: true,
                                    reverse: false,
                                    autoPlay: true,
                                    autoPlayInterval: Duration(seconds: 3),
                                    autoPlayAnimationDuration:
                                        Duration(milliseconds: 800),
                                    autoPlayCurve: Curves.fastOutSlowIn,
                                    enlargeCenterPage: true,
                                    scrollDirection: Axis.horizontal,
                                  )),
                            ],
                          )),
                        ],
                      )),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      "Best practice Defination & meaning",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    MaterialButton(
                      onPressed: () {},
                      child: Text("SHOP"),
                      color: Colors.amber,
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 130.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/Capture.PNG"),
                                FittedBox(child: Text("Main Category1"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/Capture.PNG"),
                                FittedBox(child: Text("Main Category2"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/Capture.PNG"),
                                Container(
                                    child: FittedBox(
                                        child: Text("Main Category3")))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/Capture.PNG"),
                                FittedBox(child: Text("Main Category4"))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text("  #BEST TITLE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                SingleChildScrollView(
                  child: GridView.count(
                      primary: true,
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 0.0,
                      padding: const EdgeInsets.all(8.0),
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                      ]),
                ),
                Row(
                  children: [
                    Text("  #TOP TITLE",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 130.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/user.PNG"),
                                FittedBox(child: Text("@user1"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/user.PNG"),
                                FittedBox(child: Text("@user2"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/user.PNG"),
                                FittedBox(child: Text("@user3"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 100.0,
                            child: Column(
                              children: [
                                Image.asset("assets/images/user.PNG"),
                                FittedBox(child: Text("@user4"))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Row(
                  children: [
                    Text("  #SHOP BY CATEGORY",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20)),
                    Spacer(),
                    Text("VIEW ALL",
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20))
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 20.0),
                    height: 130.0,
                    child: ListView(
                      // This next line does the trick.
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                            width: 200.0,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/Capture.PNG",
                                  height: 90,
                                  width: 90,
                                ),
                                FittedBox(child: Text("Sub Category"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 200.0,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/Capture.PNG",
                                  height: 90,
                                  width: 90,
                                ),
                                FittedBox(child: Text("Sub Category"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 200.0,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/Capture.PNG",
                                  height: 90,
                                  width: 90,
                                ),
                                FittedBox(child: Text("Sub Category"))
                              ],
                            )),
                        SizedBox(
                          width: 10,
                        ),
                        Container(
                            width: 200.0,
                            child: Row(
                              children: [
                                Image.asset(
                                  "assets/images/Capture.PNG",
                                  height: 90,
                                  width: 90,
                                ),
                                FittedBox(child: Text("Sub Category"))
                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                SingleChildScrollView(
                  child: GridView.count(
                      primary: true,
                      shrinkWrap: true,
                      crossAxisCount: 3,
                      crossAxisSpacing: 5.0,
                      mainAxisSpacing: 0.0,
                      padding: const EdgeInsets.all(8.0),
                      children: [
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              height: 84,
                              child: Stack(
                                children: <Widget>[
                                  Container(
                                    child: Image.asset(
                                      "assets/images/2.jpg",
                                      fit: BoxFit.fitHeight,
                                    ),
                                    height: 100,
                                  ),
                                  Positioned(
                                      right: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: Text(
                                          " 3 Km ",
                                          style: TextStyle(color: Colors.white),
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                  Positioned(
                                      left: 1.0,
                                      top: 60.0,
                                      child: Container(
                                        height: 18,
                                        child: RatingBar.builder(
                                          itemSize: 18,
                                          initialRating: 3,
                                          minRating: 1,
                                          direction: Axis.horizontal,
                                          allowHalfRating: true,
                                          itemCount: 3,
                                          itemPadding: EdgeInsets.symmetric(
                                              horizontal: 1.0),
                                          itemBuilder: (context, _) => Icon(
                                            Icons.star,
                                            color: Colors.amber,
                                          ),
                                          onRatingUpdate: (rating) {
                                            print(rating);
                                          },
                                        ),
                                        decoration: BoxDecoration(
                                            color: Colors.black38,
                                            borderRadius:
                                                BorderRadius.circular(5)),
                                      )),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 1,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("00.00/-"),
                                Container(
                                  height: 18,
                                  child: Text(
                                    "  00% ",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                  decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(5)),
                                )
                              ],
                            ),
                            Text("Product Service"),
                          ],
                        ),
                      ]),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      InkWell(
                        child: Text(
                          "TERMS OF USE",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "CONTACT",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "CAREER",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      InkWell(
                        child: Text(
                          "AREA RANGE",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 20,
                    ),
                    Image.asset(
                      "assets/images/usell.PNG",
                      height: 50,
                      width: 50,
                    ),
                    SizedBox(
                      width: 25,
                    ),
                    Text(
                      "PROJECT BY",
                      style: TextStyle(color: Colors.black),
                    ),
                    Text(
                      " EZENESS TECHNOLOGY",
                      style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: BottomNavigationBar(
          // ignore: prefer_const_literals_to_create_immutables
          items: <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/Capture.PNG", height: 35),
                title: Text(
                  'Store',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/cart.PNG", height: 35),
                title: Text(
                  'My Cart',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/menu.PNG", height: 40),
                title: Text(
                  'Favourites',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/gps.PNG", height: 35),
                title: Text(
                  'Profile',
                  style: tabLinkStyle,
                )),
            BottomNavigationBarItem(
                icon: Image.asset("assets/images/star.PNG", height: 35),
                title: Text(
                  'Settings',
                  style: tabLinkStyle,
                ))
          ],
          currentIndex: _selectedIndex,
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.green[600],
          onTap: _onItemTapped,
        ));
  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }
}
