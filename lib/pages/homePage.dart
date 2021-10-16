import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:khmer_fonts/khmer_fonts.dart';
import 'package:library_sample/data/bookData.dart';
import 'package:library_sample/data/categoryData.dart';
import 'package:library_sample/pages/bookDetail.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

List<String> story = [
  'វិទ្យាសាស្រ្ដ',
  'ការអប់រំ',
  'ចិត្តវិទ្យា',
  'សុខភាពនិងអាហាររូបត្ថម្ភ',
  'ការវិនិយោក'
];
List<Color> avataBackColor = [
  Color(0xffECEEF2),
  Color(0xffFEE9F6),
  Color(0xffFFF3EA),
  Color(0xffFBE9FF),
  Color(0xffEFF5F7)
];
String titleBook = 'ចំណងជើងរឿង';

List<String> booksImage = [
  'assets/img/b1.png',
  'assets/img/b2.png',
  'assets/img/b3.jpg',
  'assets/img/b4.png',
  'assets/img/b5.png',
];
var _bookDetial = bookData;
class _HomePageState extends State<HomePage> {
  bool _isSelectCategory = false;
  int _isSelectCategoryIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          resizeToAvoidBottomInset: false,
          backgroundColor: Color(0xffF9F3EE),
          body: CustomScrollView(
            physics: BouncingScrollPhysics(),
            slivers: [
              //Appbar
              SliverAppBar(
                backgroundColor: Color(0xffF9F3EE),
                leading: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Icon(
                    Icons.menu_open_rounded,
                    color: Colors.black,
                  ),
                ),
                title: Text(
                  'BBU Library',
                  style: GoogleFonts.ubuntu(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      color: Color(0xff282637)),
                ),
                centerTitle: true,
                actions: [
                  Padding(
                    padding: const EdgeInsets.only(left: 20, right: 20),
                    child: CircleAvatar(
                      backgroundImage: AssetImage('assets/img/profile.jpg'),
                    ),
                  )
                ],
              ),

              //search bar
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Container(
                          height: 50,
                          child: TextField(
                            decoration: InputDecoration(
                                filled: true,
                                fillColor: Colors.white,
                                prefixIcon: Icon(
                                  Icons.search,
                                  color: Color(0xff282637),
                                ),
                                enabledBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(12.0),
                                  borderSide: BorderSide(
                                    color: Colors.grey.withOpacity(0.3),
                                  ),
                                ),
                                focusedBorder: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(15.0),
                                  borderSide: BorderSide(
                                    color: Color(0xff282637),
                                  ),
                                ),
                                hintStyle: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontFamily: KhmerFonts.dangrek,
                                    color: Colors.grey.withOpacity(0.7),
                                    fontSize: 15),
                                hintText: 'ចំណងជើង, ប្រធានបទ, ឬ អ្នកនិពន្ធ'),
                          )),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 20,
                      ),
                      Text('ប្រភេទសៀវភៅ',
                          style: TextStyle(
                              fontFamily: KhmerFonts.dangrek,
                              fontSize: 20,
                              fontWeight: FontWeight.bold,
                              color: Color(0xff282637))),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 70,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: 5,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.only(
                                  left: 5, right: 20, top: 8, bottom: 8),
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Color(0xffFFFFFF),
                                    borderRadius: BorderRadius.circular(12.0),
                                    border: Border.all(
                                        width: 2,
                                        color: _isSelectCategory
                                            ? _isSelectCategoryIndex == index
                                                ? CategoryData.borderColorCate[
                                                    _isSelectCategoryIndex]
                                                : Colors.grey.withOpacity(0.3)
                                            : Colors.grey.withOpacity(0.3))),
                                child: TextButton(
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceAround,
                                    children: [
                                      SizedBox(
                                        width: 10,
                                      ),
                                      CircleAvatar(
                                          backgroundColor:
                                              avataBackColor[index],
                                          child:
                                              CategoryIcons.iconwidget[index]),
                                      SizedBox(
                                        width: 10,
                                      ),
                                      Text(story[index],
                                          style: GoogleFonts.ubuntu(
                                            fontSize: 15,
                                            fontWeight: FontWeight.bold,
                                            color: Colors.black,
                                          )),
                                      SizedBox(
                                        width: 10,
                                      ),
                                    ],
                                  ),
                                  onPressed: () {
                                    setState(() {
                                      _isSelectCategory = !_isSelectCategory;
                                      if (_isSelectCategory == true) {
                                        _isSelectCategoryIndex = index;
                                      } else {}

                                      print(_isSelectCategoryIndex);
                                    });
                                  },
                                ),
                              ),
                            );
                          },
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      //Trending Book
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'សៀវភៅ ថ្មីៗ',
                            style: TextStyle(
                                fontFamily: KhmerFonts.fasthand,
                                fontWeight: FontWeight.bold,
                                fontSize: 27,
                                color: Color(0xff282637)),
                          ),
                          TextButton(
                            onPressed: () {},
                            child: Text('ឃើញទាំងអស់',
                                style: GoogleFonts.ubuntu(
                                    fontSize: 18,
                                    color: Color(0xff9e9ea7),
                                    fontWeight: FontWeight.w400)),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      //Book View
                      Container(
                        height: 230,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          scrollDirection: Axis.horizontal,
                          itemCount: _bookDetial.length,
                          itemBuilder: (BuildContext context, int index) {
                            return Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(
                                      left: 0, right: 8, top: 8, bottom: 8),
                                  child: Container(
                                    height: 170,
                                    width: 120,
                                    child: TextButton(child: Container(),onPressed: (){
                                      setState(() {
                                        
                                        Navigator.push(context, CupertinoPageRoute(builder: (contex)=>BookDetail(index: index,)));
                                      });
                                    },),
                                    decoration: BoxDecoration(
                                        boxShadow: [
                                          BoxShadow(
                                              color: Colors.black,
                                              offset: Offset(0.0, 2.0),
                                              spreadRadius: 1,
                                              blurRadius: 5.0)
                                        ],
                                        image: DecorationImage(
                                            image:
                                                AssetImage(_bookDetial[index]['img'][0]),
                                            fit: BoxFit.fill)),
                                  ),
                                ),
                                Text(
                                  titleBook
                                              .substring(0, titleBook.length)
                                              .length >=
                                          15
                                      ? '${titleBook.substring(0, 15)}\n${titleBook.substring(15, titleBook.length)}'
                                      : titleBook,
                                  style: GoogleFonts.ubuntu(
                                      fontSize: 15,
                                      fontWeight: FontWeight.w400,
                                      color: Color(0xff282637)),
                                )
                              ],
                            );
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SliverToBoxAdapter(
                child: Padding(
                  padding: const EdgeInsets.only(right: 20, left: 20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'អ្នកនិពន្ធ',
                        style: TextStyle(
                            fontFamily: KhmerFonts.fasthand,
                            fontWeight: FontWeight.bold,
                            fontSize: 27,
                            color: Color(0xff282637)),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Container(
                        height: 120,
                        child: ListView.builder(
                          physics: BouncingScrollPhysics(),
                          itemCount: 6,
                          scrollDirection: Axis.horizontal,
                          itemBuilder: (BuildContext context, int index) {
                            return Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Container(
                                height: 100,
                                width: 100,
                                child: TextButton(
                                    onPressed: () {}, child: Container()),
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 4, color: Colors.white),
                                    borderRadius: BorderRadius.circular(50.0),
                                    image: DecorationImage(
                                        image: AssetImage(AuthorProfile
                                            .authorProfile[index]
                                            .toString()),
                                        fit: BoxFit.cover)),
                              ),
                            );
                          },
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          )),
    );
  }
}
