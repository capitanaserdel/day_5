import 'package:flutter/material.dart';

void main() {
  runApp(const DayFive());
}

class DayFive extends StatelessWidget {
  const DayFive({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Challenge(),
    );
  }
}

class Challenge extends StatefulWidget {
  const Challenge({Key? key}) : super(key: key);

  @override
  State<Challenge> createState() => _ChallengeState();
}

class _ChallengeState extends State<Challenge> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          children: [
            Stack(
              clipBehavior: Clip.none,
              children: [
                Container(
                  height: 300,
                  decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage('asset/12.jpg'),
                      fit: BoxFit.cover
                    )
                  ),
                  child: Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                          begin: Alignment.topRight,
                          stops: [0.1,0.8],
                          colors: [
                            Colors.blueAccent.shade700.withOpacity(.9),
                            Colors.blueAccent.shade700.withOpacity(.6),
                          ])
                    ),
                    child: Column(
                      children: [
                        SizedBox(height: 80,),
                        Align(
                            alignment: Alignment.topCenter,
                            child: Column(
                              children: [
                                Text('PLAYING FROM ARTIST',style: TextStyle(fontSize: 15,color: Colors.white),),
                                Text('Lauv',style: TextStyle(fontSize: 15,color: Colors.white),),

                              ],
                            )),
                      ],
                    ),
                  ),
                ),
                Positioned(
                    bottom: -550,
                    child: Container(
                      height: 600,
                      width: 390,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                        color: Colors.blue,
                      ),

                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.vertical(top: Radius.circular(40)),
                            gradient: LinearGradient(
                                begin: Alignment.topRight,
                                stops: [0.1,0.8],
                                colors: [
                                  Colors.blue.shade900.withOpacity(.8),
                                  Colors.blue.shade900.withOpacity(.5),
                                ])
                        ),
                        child: Column(
                          children: [
                            SizedBox(height: 200,),
                              Text("There's no way",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                            Text("(feat. Julia Michaels)",style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold),),
                              SizedBox(height: 50,),
                            Text("Lauv Julia Michaels",style: TextStyle(color: Colors.grey.shade700,fontWeight: FontWeight.bold),),
                            SizedBox(height: 30,),

                            Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 36),
                                child: Slider(
                                  activeColor: Colors.white,
                                    inactiveColor: Colors.grey.shade700,
                                    value: 1,
                                    onChanged: (value) async{}
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 45),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                   Text('1:58',style: TextStyle(fontSize: 11,color: Colors.grey.shade700),),
                                  Text('2:54',style: TextStyle(fontSize: 11,color: Colors.grey.shade700)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 36),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                 IconButton(onPressed: (){}, icon: Icon(Icons.refresh_outlined,color: Colors.white,size: 20,)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_previous,color: Colors.white,)),
                                  Container(
                                    height: 70,
                                    width: 70,
                                    child: CircleAvatar(

                                      backgroundColor: Colors.white,
                                      child:IconButton(onPressed: (){}, icon: Icon(Icons.pause,size: 30)) ,
                                    ),
                                  ),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.skip_next,color: Colors.white,)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.favorite,color: Colors.white,size: 20)),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 36),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  IconButton(onPressed: (){}, icon: Icon(Icons.bluetooth_connected_sharp,color: Colors.white,size: 20)),
                                  IconButton(onPressed: (){}, icon: Icon(Icons.share,color: Colors.white,size: 20)),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    )),
                Positioned(
                    top: 190,
                    left: 80,
                    child: Container(
                      height: 230,
                      width: 230,
                      decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage('asset/20.jpg'),
                        fit: BoxFit.cover),
                        borderRadius: BorderRadius.circular(50),
                        color: Colors.red,
                      ),
                      child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(50),
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              stops: [0.1,3],
                              colors: [
                                Colors.blue.shade900.withOpacity(.4),
                                Colors.blue.shade900.withOpacity(.4)
                              ])
                        ),
                      ),
                    )),
              ],
            )
          ],
        ),
      ),
    );
  }
}
