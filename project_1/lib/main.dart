import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: project_1(),
    );
  }
}

class project_1 extends StatefulWidget {
  const project_1({Key? key}) : super(key: key);

  @override
  _project_1State createState() => _project_1State();
}

class _project_1State extends State<project_1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.menu),
              onPressed: () { Scaffold.of(context).openDrawer(); },
              tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
            );
          },
        ),
      ),
      body:
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          width: double.infinity,
          child:
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(padding: const EdgeInsets.symmetric(vertical: 10 ),
                alignment: Alignment.center ,
                width: double.infinity,
                decoration:  BoxDecoration(
                color: Colors.blue,
                border: Border.all(color: Colors.black , width: 3.0 ,style:BorderStyle.solid  )
                ),
                child: const Text("Strawberry Pavlova Recipe" , style: TextStyle(color: Colors.white , fontSize: 20 , fontWeight:
                FontWeight.bold),),
              ),

              Container(margin: const EdgeInsets.only(top: 20 ,bottom: 20),
                alignment: Alignment.center ,
                width: double.infinity,
                child: const Text("Pavolova is a meringue-based dessert named after the russian ballerina anna pavlova ."
                 "pavlova features a crisp crust and soft, light inside, toppedsmith fruit and whipped cream" , textAlign: TextAlign.center
                , style: TextStyle(color: Colors.black , fontSize: 18 ,height: 1.5  ),),
              ),
              Container(
                padding: const EdgeInsets.all(10),
                width: double.infinity,
                decoration:  BoxDecoration(
                    border: Border.all(color: Colors.grey , width: 3.0 ,style:BorderStyle.solid  )
                ),
                child: Column(
                  children: [
                    Row(
                       mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.yellowAccent[700],),
                            Icon(Icons.star, color: Colors.yellowAccent[700],),
                            Icon(Icons.star, color: Colors.yellowAccent[700],),
                            const Icon(Icons.star),
                            const Icon(Icons.star),
                          ],
                        ),
                        const Text("17 Reviews" , style: TextStyle(fontSize: 18),)
                      ],
                    ),
                    Container(
                      margin: const EdgeInsets.only(top:  20),
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children:  [
                              const Icon(Icons.restaurant , color: Colors.green,),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  child: const Text("Feed")),
                              const Text("2 - 4"),
                            ],
                          ),
                          Column(
                            children:  [
                              const Icon(Icons.category , color: Colors.green,),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  child: const Text("Feed")),
                              const Text("2 - 4"),
                            ],
                          ),
                          Column(
                            children:  [
                              const Icon(Icons.emoji_food_beverage , color: Colors.green,),
                              Container(
                                  padding: const EdgeInsets.all(10),
                                  child: const Text("Feed")),
                              const Text("2 - 4"),
                            ],
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        )
    );
  }
}
