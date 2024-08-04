import 'package:application_bmi_calculator_me/constants/constants.dart';
import 'package:flutter/material.dart';

class ResultBMI extends StatelessWidget {
  final String resultText;
  final double resultBMI;
  final double cartBMI;

  const ResultBMI({
    Key? key,
    required this.resultText,
    required this.resultBMI,
    required this.cartBMI,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      appBar: AppBar(
        backgroundColor: backgroundColor,
        centerTitle: true,
        title: Text(
          'Results',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20),
        child: Container(
          width: double.infinity,
          height: 320,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(24),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.1),
                blurRadius: 0.5,
                spreadRadius: 0.5,
                offset: Offset(0, 0.5),
              ),
            ],
          ),
          child: Column(
            children: [
              SizedBox(height: 40),
              Text(
                resultText,
                style: TextStyle(fontSize: 25, color: Colors.blue[700]),
              ),
              Text(
                resultBMI.toStringAsFixed(2),
                style: TextStyle(
                  fontSize: 50,
                  color: Colors.deepPurple,
                  fontWeight: FontWeight.bold,
                ),
              ),
              Text(
                'The body mass index(BMI) is a value derived from the mass(weight) and height of an individual.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 19),
              ),
              SizedBox(height: 15),
              Padding(
                padding: const EdgeInsets.only(left: 19, right: 19),
                child: Container(
                  width: double.infinity,
                  height: 20,
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Stack(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomLeft: Radius.circular(10),
                                topLeft: Radius.circular(10),
                              ),
                              color: Colors.black26,
                            ),
                            height: 20,
                            width: 61,
                          ),
                          Container(
                            height: 20,
                            width: 60,
                            color: Colors.green,
                          ),
                          Container(
                            height: 20,
                            width: 60,
                            color: Colors.yellow,
                          ),
                          Container(
                            height: 20,
                            width: 60,
                            color: Colors.orange,
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                bottomRight: Radius.circular(10),
                                topRight: Radius.circular(10),
                              ),
                              color: Colors.red,
                            ),
                            height: 20,
                            width: 61,
                          ),
                        ],
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: cartBMI),
                        child: Container(
                          width: 40,
                          height: 20,
                          decoration: BoxDecoration(
                            color: Colors.transparent,
                            shape: BoxShape.circle,
                            border: Border.all(
                              color: Colors.green,
                              width: 3,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text(
                    '18.5',
                    style: TextStyle(fontSize: 18, color: Colors.black26),
                  ),
                  Text(
                    '24.9',
                    style: TextStyle(fontSize: 18, color: Colors.black26),
                  ),
                  Text(
                    '29.9',
                    style: TextStyle(fontSize: 18, color: Colors.black26),
                  ),
                  Text(
                    '34.9',
                    style: TextStyle(fontSize: 18, color: Colors.black26),
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
