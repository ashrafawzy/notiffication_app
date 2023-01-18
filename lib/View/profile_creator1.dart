
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

/// Hello world !
void main() => runApp(const ProfileCreator());

/// The main widget.
class ProfileCreator extends StatefulWidget {
  const ProfileCreator({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() => ProfileCreatorState();

}

/// The main widget state.
class ProfileCreatorState extends State<ProfileCreator> {
  TextEditingController brandNameController = TextEditingController();
  TextEditingController bessnessnameController = TextEditingController();
  TextEditingController mailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  String? profImage='assets/svgs/avatar.svg';
  bool _value = false;
  bool isDarkModeEnabled = true;
  String dropdownValue = 'English';
  final controller = PageController(viewportFraction: 0.8, keepPage: true);
  /// Whether dark mode is enabled.
  final _controller = ValueNotifier<bool>(false);
  List<String> lang=['English','Arabic'];
  String? selectedValue;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(

      debugShowCheckedModeBanner: false,



      home: Scaffold(appBar: AppBar(
        centerTitle: true,
        title: Text('Profile',style: TextStyle(color: Colors.black),),
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
            padding: const EdgeInsets.only(right:25),
            child:
              SvgPicture.asset('assets/svgs/notifiy.svg'),
            ),

        ],
      ),

          body: SingleChildScrollView(
            child:Column(

              children: [
                SizedBox(
                  height: 30.0,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(

                      height: 120,
                      width: 120,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: const AssetImage('assets/Ellipse 18.png'),
                          fit: BoxFit.cover,
                        ),
                        borderRadius: BorderRadius.all(Radius.elliptical(9999.0, 9999.0)),
                      ),
                    ),

                  ],
                ),
                SizedBox(height: 14,),
                Text(
                  'Mariam Nasser',
                  style: TextStyle(
                    fontFamily: 'Roboto',
                    fontSize: 20,
                    color: const Color(0xff0a0a0a),
                    letterSpacing: 0.14,
                    fontWeight: FontWeight.w500,
                  ),

                ),
                SizedBox(height: 35,),
                Card(
                  elevation: 4.0,
                  color: Color(0xfffaf7f7),
                  margin: EdgeInsets.only(left: 25, right: 25),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column( mainAxisAlignment: MainAxisAlignment.end,

                      children: <Widget>[
                        /////////////// name////////////
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black54,
                            ),
                            controller: bessnessnameController,
                            cursorColor: Color(0xff1a1a1a),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child:
                                    SvgPicture.asset(
                                      "assets/svgs/edit.svg",
                                    ),


                              ),
                              hintText: "Account",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            controller: bessnessnameController,
                            cursorColor: Color(0xff1a1a1a),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child:SvgPicture.asset(
                                     'assets/svgs/clock.svg'
                                    ),


                              ),
                              hintText: "Working Hours",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            controller: bessnessnameController,
                            cursorColor: Color(0xff1a1a1a),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Padding(
                                padding: const EdgeInsets.all(15.0),
                                child: SvgPicture.asset(
                                      'assets/svgs/key.svg'
                                    ),


                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [Text('Language',style: TextStyle(fontSize: 15,),),
                              Container(
                                height: 50,
                                width: 150,
                                decoration: BoxDecoration(
                                  border: Border.all(color: Colors.white70),
                                  borderRadius: BorderRadius.circular(25.0),
                                  shape: BoxShape.rectangle,
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.white30,
                                      blurRadius: 5.0,
                                      spreadRadius: 0.1,

                                    ),
                                  ],),
                                child: Stack(
                                  children: <Widget>[

                                    DropdownButton<String>(

                                      value: dropdownValue,
                                      //icon: Icon(Icons.arrow_downward),
                                      iconSize: 24,
                                      elevation: 16,
                                      style: TextStyle(color: Colors.deepPurple),
                                      underline: Container(

                                      ),

                                      onChanged: (String? items) {
                                        setState(() {
                                          dropdownValue = items!;
                                        });
                                      },

                                      items: <String>['English', 'Arabic']
                                          .map<DropdownMenuItem<String>>((String value) {
                                        return DropdownMenuItem<String>(

                                          value: value,
                                          child: Padding(
                                            padding: const EdgeInsets.only(left: 60.0),
                                            child: Text(dropdownValue,style: TextStyle(color: Colors.black45,fontSize: 15,fontWeight: FontWeight.bold),),
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                    Container(
                                      height: 25,
                                        width: 30,
                                        margin: EdgeInsets.symmetric(vertical: 17,horizontal: 13),
                                         child:
                                         Image.asset('assets/icons/ca.png'),
                                         ),
                                  ],
                                ),

                              ),

                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 27,),
                Card(
                  elevation: 4.0,
                  color: Color(0xfffaf7f7),
                  margin: EdgeInsets.only(left: 25, right: 25),
                  shape:
                  RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),

                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Column( mainAxisAlignment: MainAxisAlignment.end,

                      children: <Widget>[

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            controller: bessnessnameController,
                            cursorColor: Color(0xff1a1a1a),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                              hintText: "Income",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black, width: 1.5),
                              ),
                            ),
                          ),
                        ),


                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            controller: bessnessnameController,
                            cursorColor: Color(0xff1a1a1a),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black54,
                              ),
                              hintText: "Bank Account",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                            ),
                          ),
                        ),

                        /////////////// Email ////////////

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),
                            controller: bessnessnameController,
                            cursorColor: Color(0xff1a1a1a),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                              hintText: "Equipments",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.black54, width: 1.5),
                              ),
                            ),
                          ),
                        ),

                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: TextField(
                            style: TextStyle(
                              color: Colors.black,
                            ),

                            cursorColor: Color(0xff1a1a1a),
                            keyboardType: TextInputType.text,
                            decoration: InputDecoration(
                              suffixIcon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.black,
                              ),
                              hintText: "Skills",
                              hintStyle: TextStyle(
                                  color: Colors.black,
                                  fontSize: 15,
                                  fontWeight: FontWeight.normal),
                              enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(
                                    color: Colors.white, width: 1.5),
                              ),

                            ),

                          ),
                        ),


                      ],
                    ),
                  ),
                ),


              ],
            ),

          )   ),

    );
  }

  /// Called when the state (day / night) has changed.
  // void onStateChanged(bool isDarkModeEnabled) {
  //   setState(() {
  //     this.isDarkModeEnabled = isDarkModeEnabled;
  //   });
  }



