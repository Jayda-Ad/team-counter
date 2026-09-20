import 'package:flutter/material.dart';

class Counter extends StatefulWidget {
  const Counter({super.key});

  @override
  State<Counter> createState() => CounterState();
}

class CounterState extends State<Counter> {

  int scoreA = 0;
  int scoreB = 0;

  Color getTeamColor(int score1, int score2) {
    if (score1 > score2) {
      return Color(0xff84a98c);
    } else if (score1 < score2) {
      return Color(0xfff4796b);
    } else {
      return Color(0xfff7b267);
    }
  }

  Color getDividerColor(int score1, int score2) {
    if (score1 > score2 || score1 < score2) {
      return Color.fromARGB(255, 105, 134, 111);
    } else {
      return Color.fromARGB(255, 205, 147, 84);
    }
  }

  void incrementA() {
    setState(() {
      scoreA++;
    });
  }

  void incrementB() {
    setState(() {
      scoreB++;
    });
  }

  void reset() {
    setState(() {
      scoreA = 0;
      scoreB = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomAppBar(
        child: Center(
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: ElevatedButton(
              onPressed: reset,
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xff003049),shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7),),),
              child: const Text("Reset", style: TextStyle(color: Colors.white,fontSize: 30),),
            ),
          ),
        ),
      ),
      body: Row(
        children: [
          Expanded(
          child: Container(
            color: getTeamColor(scoreA, scoreB),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Team A",style: TextStyle(color: Colors.white,fontSize: 35,),),
                SizedBox(height: 50),
                Text("$scoreA",style: TextStyle(color: Colors.white,fontSize: 80,),),
                SizedBox(height: 180),
                ElevatedButton.icon(
                  onPressed: incrementA,
                  label: const Text("+1", style: TextStyle(color: Color(0xff003049),fontSize: 25,),),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7),),),
                ),
              ],
            )
            ),
          ),
          Container(
            width: 1,
            color: getDividerColor(scoreA, scoreB),
          ),
          Expanded(
          child: Container(
            color: getTeamColor(scoreB, scoreA),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text("Team B",style: TextStyle(color: Colors.white,fontSize: 35,),),
                SizedBox(height: 50),
                Text("$scoreB",style: TextStyle(color: Colors.white,fontSize: 80,),),
                SizedBox(height: 180),
                ElevatedButton.icon(
                  onPressed: incrementB,
                  label: const Text("+1", style: TextStyle(color: Color(0xff003049),fontSize: 25,),),
                  style: ElevatedButton.styleFrom(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7),),),
                ),
              ],
            )
            ),
          ),
        ],
        ),
    );
  }
}