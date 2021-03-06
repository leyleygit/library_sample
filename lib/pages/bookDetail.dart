import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:library_sample/data/bookData.dart';
import 'package:library_sample/pages/bookDirection.dart';

class BookDetail extends StatefulWidget {
  final int index;
  const BookDetail({Key? key, required this.index}) : super(key: key);

  @override
  _BookDetailState createState() => _BookDetailState();
}

final _bookDetail = bookData;

class _BookDetailState extends State<BookDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                height: 500,
                decoration: BoxDecoration(
                    color: Color(0xffDAAA63),
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(20.0),
                        bottomRight: Radius.circular(20.0))),
                child: Column(
                  children: [
                    //Topbar
                    Padding(
                      padding: const EdgeInsets.only(left: 0, right: 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          TextButton(
                            onPressed: () {
                              setState(() {
                                Navigator.pop(context);
                              });
                            },
                            child: Icon(
                              Icons.arrow_back_ios_sharp,
                              color: Colors.white,
                            ),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Icon(
                              Icons.bookmark_border,
                              size: 30,
                              color: Colors.white,
                            ),
                          )
                        ],
                      ),
                      //Book Picture
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Container(
                      width: 200,
                      height: 250,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                _bookDetail[widget.index]['img'][0])),
                        borderRadius: BorderRadius.circular(12.0),
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //Title book
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '??????????????? ???',
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                        Text(
                          _bookDetail[widget.index]['bname'],
                          style: TextStyle(color: Colors.white, fontSize: 25),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    //by Author
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          '??????????????????????????? ??? ',
                          style: TextStyle(color: Colors.white70, fontSize: 17),
                        ),
                        Text(
                          _bookDetail[widget.index]['bAuthor'],
                          style: TextStyle(color: Colors.white70, fontSize: 17),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 25,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Column(
                          children: [
                            Text(
                              '????????????????????????',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 17),
                            ),
                            Text(
                              _bookDetail[widget.index]['bRate'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '??????????????????????????????',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 17),
                            ),
                            Text(
                              _bookDetail[widget.index]['bPages'],
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '???????????????',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 17),
                            ),
                            Text(
                              '???????????????',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Text(
                              '??????????????????????????????',
                              style: TextStyle(
                                  color: Colors.white70, fontSize: 17),
                            ),
                            Text(
                              "${_bookDetail[widget.index]['bQty']} ???????????????",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 23,
                                  fontWeight: FontWeight.bold),
                            ),
                          ],
                        )
                      ],
                    )
                  ],
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        width: 150,
                        height: 60,
                        child: TextButton(
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.auto_stories,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '????????????????????????',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff282637),
                            borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(15.0),
                                bottomLeft: Radius.circular(15.0))),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Container(
                        width: 150, 
                        height: 60,
                        child: TextButton(
                          onPressed: () {
                            setState(() {
                              Navigator.push(
                                  context,
                                  CupertinoPageRoute(
                                      builder: (_) => BookDirection()));
                            });
                          },
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(
                                Icons.alt_route,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                '?????????????????????',
                                style: TextStyle(
                                    color: Colors.white, fontSize: 17),
                              ),
                            ],
                          ),
                        ),
                        decoration: BoxDecoration(
                            color: Color(0xff282637),
                            borderRadius: BorderRadius.only(
                                topRight: Radius.circular(15.0),
                                bottomRight: Radius.circular(15.0))),
                      ),
                    ],
                  ),
                  Container(
                      width: 380,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 30,
                          ),
                          Text(
                            '????????????????????????????????????????????????????????? ???',
                            style: TextStyle(
                                color: Color(0xff272535),
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Text(
                            '???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????? ???????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????????',
                            style: TextStyle(
                                fontSize: 17, color: Color(0xff98979E)),
                          )
                        ],
                      ))
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
