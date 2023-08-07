import 'package:flutter/material.dart';

class WorkshopButton extends StatefulWidget {
  const WorkshopButton({super.key});

  @override
  State<WorkshopButton> createState() => _WorkshopButtonState();
}

class _WorkshopButtonState extends State<WorkshopButton> {
  String content = "";
  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        title: const Text('Button Stateful Widgets'),
      ),
      body: Column(
        children: [
          Expanded(
              child: Container(
            width: width,
            color: Colors.yellow,
            padding: const EdgeInsets.all(20.0),
            child: Center(
              child: Text(
                'You press button : \n $content',
                textAlign: TextAlign.center,
                style:
                    const TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
              ),
            ),
          )),
          Row(
            children: [
              //Button 1
              SizedBox(
                width: (width / 2),
                height: 150,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.blue,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      content = "1";
                    });
                  },
                  child: const Text('1'),
                ),
              ),
              //Button 2
              SizedBox(
                width: (width / 2),
                height: 150,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.red,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      content = "2";
                    });
                  },
                  child: const Text('2'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              //Button 3
              SizedBox(
                width: (width / 2),
                height: 150,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.amber,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      content = "3";
                    });
                  },
                  child: const Text('3'),
                ),
              ),
              //Button 4
              SizedBox(
                width: (width / 2),
                height: 150,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.green,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      content = "4";
                    });
                  },
                  child: const Text('4'),
                ),
              ),
            ],
          ),
          Row(
            children: [
              //Button Clear Data
              SizedBox(
                width: width,
                height: 75,
                child: TextButton(
                  style: TextButton.styleFrom(
                    foregroundColor: Colors.white,
                    backgroundColor: Colors.black87,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(0),
                    ),
                    textStyle: const TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: () {
                    setState(() {
                      content = "";
                    });
                  },
                  child: const Text('Clear'),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}