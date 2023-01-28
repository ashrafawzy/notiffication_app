import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Packages extends StatelessWidget {
  const Packages({Key? key}) : super(key: key);
  final String? TextHeader1 = 'Commercial Premises';
  final String? TextHeader2 = '44 Photos';

  final String? ImagePath = 'assets/Dish3.png';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(250, 250, 250, 250),
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          'Packages',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios),
          color: Colors.black,
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 25),
            child: SvgPicture.asset('assets/svgs/notifiy.svg'),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 35),
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white30,
                            blurRadius: 5.0,
                            spreadRadius: 0.1,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              'Category',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: SvgPicture.asset(
                              'assets/svgs/arrow.svg',
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17),
                    child: Container(
                      height: 30,
                      width: 140,
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey),
                        borderRadius: BorderRadius.circular(5.0),
                        shape: BoxShape.rectangle,
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.white30,
                            blurRadius: 5.0,
                            spreadRadius: 0.1,
                          ),
                        ],
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 8),
                            child: Text(
                              'Type',
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 5),
                            child: SvgPicture.asset(
                              'assets/svgs/arrow.svg',
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    child: Row(
                      children: [
                        SvgPicture.asset(
                          "assets/svgs/grid_view.svg",
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SvgPicture.asset(
                          "assets/svgs/list_view.svg",
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15),
                    child: GridView.builder(
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        gridDelegate:
                            const SliverGridDelegateWithFixedCrossAxisCount(
                                mainAxisExtent: 186,
                                crossAxisCount: 2,
                                childAspectRatio: 4 / 5,
                                crossAxisSpacing: 22,
                                mainAxisSpacing: 12),
                        itemCount: 2,
                        itemBuilder: (BuildContext context, int index) {
                          return Card(
                            elevation: 1,
                            child: GestureDetector(
                              onTap: () {},
                              child: Container(
                                width: 166,
                                height: 186,

                                decoration: BoxDecoration(
                                  color: Colors.white,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: SingleChildScrollView(
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(
                                            3, 9, 0, 7),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          children: [
                                            Text(
                                              "$TextHeader1",
                                              style: TextStyle(
                                                fontFamily: 'Roboto',
                                                fontSize: 10,
                                              ),
                                            ),
                                            Expanded(
                                              child: Align(
                                                alignment: AlignmentDirectional(
                                                    0.5, 0),
                                                child: Text(
                                                  '$TextHeader2',
                                                  style: TextStyle(
                                                    fontFamily: 'Roboto',
                                                    fontSize: 7,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Stack(children: [
                                        ClipRRect(
                                            child: Image.asset(
                                                width:172 ,
                                                fit: BoxFit.fill,
                                                '$ImagePath')),
                                        new Positioned(
                                          right: 7.0,
                                          bottom: 40.0,
                                          child: new Icon(
                                            Icons.keyboard_arrow_right_outlined,
                                            color: Colors.black,
                                          ),
                                        ),
                                        new Positioned(
                                          left: 7.0,
                                          bottom: 40.0,
                                          child: new Icon(
                                            Icons.keyboard_arrow_left_sharp,
                                            color: Colors.black,
                                          ),
                                        ),
                                      ]),
                                      Align(
                                        alignment: AlignmentDirectional(2, 0),
                                        child: Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: const [
                                            Align(
                                              alignment:
                                                  AlignmentDirectional(0, 0),
                                              child: Padding(
                                                padding: EdgeInsetsDirectional
                                                    .fromSTEB(0, 0, 0, 0),
                                                child: Text(
                                                  '180sar',
                                                  style: TextStyle(
                                                    fontSize: 9,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Row(
                                        mainAxisSize: MainAxisSize.max,
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceAround,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                EdgeInsetsDirectional.fromSTEB(
                                                    0,0, 0, 0),
                                            child: TextButton(
                                              onPressed: () {},
                                              child: const Text(
                                                'Package Details',
                                                style: TextStyle(fontSize: 11),
                                              ),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        Row(
                          children: [
                            Card(
                              elevation: 1,
                              child: GestureDetector(
                                onTap: () {},
                                child: Container(
                                  width: 172,
                                  height: 180,

                                  decoration: BoxDecoration(
                                    color: Colors.white,
                                    borderRadius: BorderRadius.circular(5),
                                  ),
                                  child: SingleChildScrollView(
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      children: [
                                        Padding(
                                          padding:
                                              EdgeInsetsDirectional.fromSTEB(
                                                  3, 9, 0, 7),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            children: [
                                              Text(
                                                "$TextHeader1",
                                                style: TextStyle(
                                                  fontFamily: 'Roboto',
                                                  fontSize: 10,
                                                ),
                                              ),
                                              Expanded(
                                                child: Align(
                                                  alignment:
                                                      AlignmentDirectional(
                                                          0.5, 0),
                                                  child: Text(
                                                    '$TextHeader2',
                                                    style: TextStyle(
                                                      fontFamily: 'Roboto',
                                                      fontSize: 7,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Stack(children: [
                                          ClipRRect(
                                              child: Image.asset(
                                                width:172 ,
                                                  fit: BoxFit.fill,
                                                  '$ImagePath')),
                                          new Positioned(
                                            right: 7.0,
                                            bottom: 40.0,
                                            child: new Icon(
                                              Icons
                                                  .keyboard_arrow_right_outlined,
                                              color: Colors.black,
                                            ),
                                          ),
                                          new Positioned(
                                            left: 7.0,
                                            bottom: 40.0,
                                            child: new Icon(
                                              Icons.keyboard_arrow_left_sharp,
                                              color: Colors.black,
                                            ),
                                          ),
                                        ]),
                                        Align(
                                          alignment: AlignmentDirectional(2, 0),
                                          child: Row(
                                            mainAxisSize: MainAxisSize.max,
                                            mainAxisAlignment:
                                                MainAxisAlignment.center,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: const [
                                              Align(
                                                alignment:
                                                    AlignmentDirectional(0, 0),
                                                child: Padding(
                                                  padding: EdgeInsetsDirectional
                                                      .fromSTEB(0, 0, 0, 0),
                                                  child: Text(
                                                    '180sar',
                                                    style: TextStyle(
                                                      fontSize: 9,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        Row(
                                          mainAxisSize: MainAxisSize.max,
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceAround,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.center,
                                          children: [
                                            Padding(
                                              padding: EdgeInsetsDirectional
                                                  .fromSTEB(0, 0, 0, 3),
                                              child: TextButton(
                                                onPressed: () {},
                                                child: const Text(
                                                  'Package Details',
                                                  style:
                                                      TextStyle(fontSize: 11),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal:27),
                              child: Container(
                                height: 96,
                                width: 146,
                                child: Card(
                                  elevation: 3,
                                  shape: RoundedRectangleBorder(
                                    //<-- SEE HERE

                                    borderRadius: BorderRadius.circular(22),
                                  ),
                                  child: Padding(
                                    padding: const EdgeInsets.only(top: 10),
                                    child: Column(
                                      children: [
                                        IconButton(
                                          icon: Icon(
                                            Icons.add_circle_outlined,
                                            color: Colors.teal,
                                            size: 25,
                                          ),
                                          onPressed: () {
                                            Navigator.of(context).pop();
                                          },
                                        ),
                                        Column(
                                          children: [
                                            Text(
                                              'CREAT NEW PACKAGE',
                                              style: TextStyle(
                                                  fontSize: 11,
                                                  color: Colors.teal),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
