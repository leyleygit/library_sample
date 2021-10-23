import 'package:flutter/material.dart';

class BookDirection extends StatefulWidget {
  const BookDirection({Key? key}) : super(key: key);

  @override
  _BookDirectionState createState() => _BookDirectionState();
}

class _BookDirectionState extends State<BookDirection> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Container(
              padding: EdgeInsets.only(top: 200, right: 210),
              width: size.width,
              height: size.height,
              color: const Color(0xffF9F3EE),
            ),
            Positioned(
              bottom: 150,
              child: Row(
                children: [
                  Container(
                    height: 250,
                    width: 200,
                    decoration: BoxDecoration(
                        color: Colors.black,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey,
                              blurRadius: 5.0,
                              spreadRadius: 2.0,
                              offset: Offset(0.0, 2.0))
                        ],
                        image: DecorationImage(
                            image: AssetImage('assets/img/b4.png'),
                            fit: BoxFit.fill)),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Text(
                            'ទីតាំងសៀវភៅក្នុងទូ ៖',
                            style: TextStyle(fontSize: 23),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        children: [
                          Text(
                            'ជួរទី (Row):',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' ១',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Text(
                            'ថ្នាក់ទី(Collumn) :',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                          Text(
                            ' ៣',
                            style: TextStyle(
                                fontSize: 17, fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 15,
                left: 80,
                child: Container(
                  width: 250,
                  height: 50,
                  child: TextButton(
                      onPressed: () {},
                      child: Center(
                        child: Text(
                          'ខ្ជីឥលូវនេះ',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                        ),
                      )),
                  decoration: BoxDecoration(
                      color: Color(0xff2B3B97),
                      boxShadow: [BoxShadow(
                              color: Color(0xff2B3B97),
                              blurRadius: 5.0,
                              spreadRadius: 1.0,
                              offset: Offset(0.0, 3.0))],
                      borderRadius: BorderRadius.circular(11.0)),
                )),
            Container(
              width: size.width,
              height: 250,
              decoration: BoxDecoration(
                  color: const Color(0xffF6FCFF),
                  boxShadow: [
                    BoxShadow(
                        color: Color(0xffE0E0E0),
                        spreadRadius: 1,
                        blurRadius: 10.0,
                        offset: Offset(0.0, 10.0))
                  ],
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(30.0),
                      bottomRight: Radius.circular(30.0))),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 20),
                        child: Container(
                          width: 50,
                          height: 50,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(15.0),
                              border:
                                  Border.all(width: 1.0, color: Colors.grey)),
                          child: TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Padding(
                              padding: const EdgeInsets.only(left: 8),
                              child: Icon(
                                Icons.arrow_back_ios,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Text(
                          'Book Title',
                          style: TextStyle(color: Colors.black, fontSize: 20),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 20),
                        child: Container(
                          width: 50, height: 50,
                          //empty
                          child: Icon(
                            Icons.emoji_objects_outlined,
                            size: 30,
                            color: Colors.green,
                          ),
                        ),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 50),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              'លេខកូដ',
                              style: TextStyle(
                                  color: Color(0xffBFC7C9), fontSize: 17),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '303.EB102',
                              style: TextStyle(
                                  color: Color(0xff31373C), fontSize: 20),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'ជាន់ទី',
                              style: TextStyle(
                                  color: Color(0xffBFC7C9), fontSize: 17),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              '១',
                              style: TextStyle(
                                  color: Color(0xff31373C), fontSize: 20),
                            )
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              'លេខទូ',
                              style: TextStyle(
                                  color: Color(0xffBFC7C9), fontSize: 17),
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Text(
                              'EB.1',
                              style: TextStyle(
                                color: Color(0xff2B3B97),
                                fontSize: 20,
                              ),
                            )
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
