import 'package:flutter/material.dart';

class Score extends StatefulWidget {
  const Score({Key? key}) : super(key: key);

  @override
  State<Score> createState() => _ScoreState();
}

class _ScoreState extends State<Score> {
  final items = <String>[
    '1',
    '5',
    '10',
    '50',
    '100',
    '500',
    '1000',
    '5000',

  ];
  final colori = <Color>[
    Colors.green,
      Colors.blueAccent,
      Colors.red,
      Colors.yellow,
      Colors.greenAccent,
      Colors.pink,
      Colors.orangeAccent,
      Colors.blue,
  ];


  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Text("Score",style: TextStyle(color: Colors.white,fontSize: 20),),
              Image.asset("assets/images/button.png"),
            ],
          ),
          SizedBox(
            height: 15,
          ),

          Image.asset("assets/images/button.png"),
          Container(
          height: 140,
            width: 200,
            child: GridView.builder(
              itemCount: 8,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
                crossAxisSpacing:1,
                mainAxisSpacing: 1,
              ),
              itemBuilder:  (BuildContext context, int index){
                return Container(
                  color: Colors.transparent,
                  child: CircleAvatar(
                    backgroundColor: colori[index],
                    child: Text(items[index]),
                    radius: 20,
                ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}


class Winer extends StatefulWidget {
  const Winer({Key? key}) : super(key: key);

  @override
  State<Winer> createState() => _WinerState();
}

class _WinerState extends State<Winer> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Column(
            children: [
              Text("Winner",style: TextStyle(color: Colors.white,fontSize: 20),),
              Image.asset("assets/images/button.png"),
            ],
          ),
          SizedBox(
            height: 15,
          ),
          Image.asset("assets/images/button.png"),

          Padding(
            padding: const EdgeInsets.all(2),
            child: InkWell(
              onTap: (){},
              child: Container(
                  height: 22,
                  width: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Colors.black,
                      ],
                    ),

                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white,width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                    child: Text(
                      "Wheel Zoom: ON",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  )
              ),
            ),
          ),
          Row(
            children: [
              InkWell(
                onTap: (){},
                child: Container(
                    height: 22,
                    width: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.white,
                          Colors.black,
                        ],
                      ),

                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white,width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(10, 3, 0, 0),
                      child: Text(
                        "Take",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    )
                ),
              ),
              InkWell(
                onTap: (){},
                child: Container(
                    height: 22,
                    width: 40,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topRight,
                        end: Alignment.bottomLeft,
                        colors: [
                          Colors.white,
                          Colors.black,
                        ],
                      ),

                      borderRadius: BorderRadius.circular(20),
                      border: Border.all(color: Colors.white,width: 1),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(5, 3, 0, 0),
                      child: Text(
                        "Bet OK",
                        style: TextStyle(
                            color: Colors.black87,
                            fontWeight: FontWeight.bold,
                            fontSize: 10),
                      ),
                    )
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(2),
            child: InkWell(
              onTap: (){},
              child: Container(
                  height: 22,
                  width: 90,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topRight,
                      end: Alignment.bottomLeft,
                      colors: [
                        Colors.white,
                        Colors.black,
                      ],
                    ),

                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(color: Colors.white,width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.fromLTRB(15, 3, 0, 0),
                    child: Text(
                      "Cancel Bet",
                      style: TextStyle(
                          color: Colors.black87,
                          fontWeight: FontWeight.bold,
                          fontSize: 10),
                    ),
                  )
              ),
            ),
          ),

        ],
      ),
    );
  }
}