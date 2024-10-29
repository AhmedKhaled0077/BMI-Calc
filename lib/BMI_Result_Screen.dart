import 'package:flutter/material.dart';

class BmiResultScreen extends StatelessWidget {
  final int age;
  final bool isMale;
  final double result;
  int healthy = 0;
  //0 >> under
  //1 >> healthy
  //2 >> over
  BmiResultScreen(
      {super.key, @required this.age = 0,
      @required this.isMale = true,
      @required this.result = 0});
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: const Padding(
          padding: EdgeInsets.all(65.0),
          child: Text(
            "BMI CALCULATOR",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600),
          ),
        ),
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(
              Icons.keyboard_arrow_left,
              color: Colors.white,
              size: 35,
            )),
        shadowColor: Colors.black,
        toolbarHeight: 100,
      ),
      body: Container(
        color: Colors.black87,
        width: double.infinity,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            const Expanded(
              flex: 1,
              child: Padding(
                padding: EdgeInsets.only(top: 20, left: 20),
                child: Text(
                  "Your Result",
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 45,
                      fontWeight: FontWeight.w900),
                ),
              ),
            ),
            Expanded(
              flex: 10,
              child: Padding(
                padding: const EdgeInsets.all(40.0),
                child: Container(
                    width: double.infinity,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Colors.grey[800]),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Text(
                            result < 18.5 ? "UNDER-WEIGHT" : result > 25 ? "OVER-WEIGHT" : "NORMAL",
                            style: TextStyle(
                                color: result < 18.5
                                    ? Colors.red
                                    : result > 25
                                        ? Colors.amber
                                        : Colors.green,
                                fontSize: 20,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                        Text(
                          "${result.toInt()}",
                          style: const TextStyle(
                              color: Colors.white,
                              fontSize: 150,
                              fontWeight: FontWeight.w600),
                        ),
                        const Text(
                          "Normal BMI Range: ",
                          style: TextStyle(color: Colors.white38, fontSize: 20),
                        ),
                        const Text(
                          "18.5 - 25 Kg/m2",
                          style: TextStyle(color: Colors.white70, fontSize: 20),
                        ),
                        const SizedBox(
                          height: 150,
                        )
                      ],
                    )),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                  decoration: const BoxDecoration(color: Colors.red),
                  width: double.infinity,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pop(context);
                    },
                    child: const Text(
                      "RE-CALCULATE YOUR BMI",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.w400),
                    ),
                  )),
            )
          ],
        ),
      ),
    );
  }
}
