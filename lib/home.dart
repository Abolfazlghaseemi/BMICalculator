import 'package:application_bmi_calculator_me/constants/constants.dart';
import 'package:application_bmi_calculator_me/result.dart';
import 'package:flutter/material.dart';
// ignore: unused_import
import 'package:flutter_feather_icons/flutter_feather_icons.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  double resultbMi = 0;
  final weightController = TextEditingController();
  final heightController = TextEditingController();
  int _imageIndex = 0;
  double cartBMI = 280;
  String resultText = '';
  final List<String> _images = [
    'assets/images/boy-male.png',
    'assets/images/lady-girl.png',
  ];

  void _switchImage(int index) {
    setState(() {
      _imageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        title: Text(
          'BMI Calculator',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.only(top: 30, left: 15, right: 15),
            child: Column(children: [
              Container(
                decoration: BoxDecoration(
                  color: backgroundColorFemale,
                  borderRadius: BorderRadius.circular(12),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 4,
                      offset: Offset(0, 1),
                    ),
                  ],
                ),
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    getMale(),
                    getFemale(),
                  ],
                ),
              ),
              SizedBox(height: 25),
              Stack(
                children: [
                  Image.asset(
                    _images[_imageIndex],
                    height: 350,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 320),
                    child: Center(
                      child: Container(
                        width: 350,
                        height: 250,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(24),
                          color: backgroundColorFemale,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.black.withOpacity(0.1),
                              blurRadius: 7,
                              spreadRadius: 2,
                              offset: Offset(0, 1),
                            ),
                          ],
                        ),
                        child: getDataBmi(),
                      ),
                    ),
                  ),
                ],
              ),
            ]),
          ),
        ),
      ),
    );
  }

  Widget getMale() {
    return Expanded(
      child: InkWell(
        onTap: () {
          _switchImage(0);
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.male,
                color: _imageIndex == 0 ? Colors.white : Colors.black,
              ),
              SizedBox(width: 4),
              Text(
                'Male',
                style: TextStyle(
                    color: _imageIndex == 0 ? Colors.white : Colors.black),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color:
                _imageIndex == 0 ? backgroundColorMale : backgroundColorFemale,
          ),
          height: 40,
          width: 180,
        ),
      ),
    );
  }

  Widget getFemale() {
    return Expanded(
      child: InkWell(
        onTap: () {
          _switchImage(1);
        },
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Container(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.female_outlined,
                color: _imageIndex == 1 ? Colors.white : Colors.black,
              ),
              SizedBox(width: 4),
              Text(
                'Female',
                style: TextStyle(
                    color: _imageIndex == 1 ? Colors.white : Colors.black),
              ),
            ],
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              bottomRight: Radius.circular(12),
              topRight: Radius.circular(12),
            ),
            color:
                _imageIndex == 1 ? backgroundColorMale : backgroundColorFemale,
          ),
          height: 40,
          width: 180,
        ),
      ),
    );
  }

  Widget getDataBmi() {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Column(
              children: [
                SizedBox(height: 20),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Card(
                          color: Colors.blue,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            Icons.trending_up,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Weight'),
                    ],
                  ),
                ),
                SizedBox(height: 50),
                Container(
                  child: Row(
                    children: [
                      Container(
                        width: 40,
                        height: 40,
                        child: Card(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(6),
                          ),
                          child: Icon(
                            Icons.height,
                            size: 30,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      SizedBox(width: 10),
                      Text('Height'),
                    ],
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 38, bottom: 20),
              child: Column(
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: backgroundColorMale,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(right: 3),
                          child: SizedBox(
                            width: 55,
                            height: 30,
                            child: Padding(
                              padding: const EdgeInsets.all(9.0),
                              child: TextField(
                                maxLines: 1,
                                minLines: 1,
                                style: TextStyle(fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                                keyboardType: TextInputType.number,
                                controller: weightController,
                                decoration: InputDecoration(
                                  border: InputBorder.none,
                                  hintStyle: TextStyle(),
                                ),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'KG',
                          style: TextStyle(color: backgroundColorMale),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                  SizedBox(height: 45),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: backgroundColorMale,
                        width: 2,
                      ),
                    ),
                    child: Row(
                      children: [
                        SizedBox(
                          width: 55,
                          height: 30,
                          child: Padding(
                            padding: const EdgeInsets.all(9.0),
                            child: TextField(
                              maxLines: 1,
                              minLines: 1,
                              style: TextStyle(fontWeight: FontWeight.bold),
                              textAlign: TextAlign.center,
                              controller: heightController,
                              keyboardType: TextInputType.number,
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                hintStyle: TextStyle(),
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 5),
                        Text(
                          'CM',
                          style: TextStyle(color: backgroundColorMale),
                        ),
                        SizedBox(width: 5),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
        SizedBox(height: 15),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: backgroundColorMale,
            fixedSize: Size(200, 40),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          onPressed: () {
            final weight = double.parse(weightController.text);
            final height = double.parse(heightController.text);
            setState(() {
              resultbMi = weight / (height * height);
              if (resultbMi > 25) {
                resultText = 'You are overweight';
                cartBMI = 280;
              } else if (resultbMi >= 18.5 && resultbMi <= 25) {
                resultText = 'Your weight is normal';
                cartBMI = 150;
              } else {
                resultText = 'Your weight is below normal';
                cartBMI = 50;
              }
            });

            Navigator.of(context)
                .push(MaterialPageRoute(builder: (BuildContext context) {
              return ResultBMI(
                resultText: resultText,
                resultBMI: resultbMi,
                cartBMI: cartBMI,
              );
            }));
          },
          child: Text(
            'Calculator',
            style: TextStyle(color: Colors.white),
          ),
        ),
      ],
    );
  }
}
