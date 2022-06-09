import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: toggel(),
    ); 
  }
}

class toggel extends StatefulWidget {
  toggel({Key? key}) : super(key: key);

  @override
  State<toggel> createState() => _toggelState();
}

class _toggelState extends State<toggel> {
  int countervalue = 0;
  Color txtcolor = Colors.white;

  @override
  Widget build(BuildContext context) {
     
     
  
   return Scaffold(
     
     body: SafeArea(
       child: Container(
         margin: EdgeInsets.symmetric(horizontal: 25,vertical: 50),
         child: Column(
           mainAxisAlignment: MainAxisAlignment.center,
           children: [
             Row(
               mainAxisAlignment: MainAxisAlignment.spaceEvenly,
               children: [
                 Container(
                   padding: EdgeInsets.only(left: 20, top: 25),
                    
                        height: 150,
                        width: 150,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,

                          children: [
                            
                          Text("Sarita",
                          style: TextStyle(fontSize: 20, color: txtcolor,),
                          ),
                          Text("Blood",
                          style: TextStyle(fontSize: 20, color: txtcolor,),
                          ),
                          Text("Bank",
                          style: TextStyle(fontSize: 20, color: txtcolor,),
                          ),
                          SizedBox(height: 3,),
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 5, vertical: 5),

                            child: Container(
                               width: 15,
                                    height: 15,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      color: Colors.green,
                                    ),
                                 ),
                                 width: 30,
                                 height: 30,
                                  decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(5),)

                          ),
                           ]),
                        
                          decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(30),)
                 ),
                


                 Column(
                   mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Blood Group",
                    style: TextStyle(fontWeight: FontWeight.bold, color: Colors.red)),

                   SizedBox(height: 3),
                    Text("B +ve",
                    style: TextStyle(fontSize: 20)),

                    SizedBox(height: 20),
                    Text("Add units"),

                   Container(
                     height: 40,
                        width: 120,
                     child: Row(
                          children: [
                           if(countervalue>0) ElevatedButton(
                             child: Text("-",
                             style: TextStyle(color: Colors.black),),
                             style : ElevatedButton.styleFrom(
                               primary: Colors.white70,
                              minimumSize: Size.zero,
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3)),
                             onPressed: () {
                             countervalue = countervalue - 1;
                            setState(() {
                          
                            });
                             print(countervalue);
                             }),

                             SizedBox(width: 5),
                            Text(countervalue.toString()),

                            SizedBox(width: 10,),
                            if(countervalue<9) ElevatedButton(
                             child: Text("+",
                             style: TextStyle(color: Colors.black),),
                             style : ElevatedButton.styleFrom(
                               primary: Colors.white70,
                              minimumSize: Size.zero,
                              padding: EdgeInsets.symmetric(horizontal: 10,vertical: 3)),
                             onPressed: () {
                             countervalue = countervalue + 1;
                            setState(() {
                          
                            });
                             print(countervalue);
                             }),

                            
                          ]),
                          decoration: BoxDecoration(
                          color: Colors.grey,
                          borderRadius: BorderRadius.circular(15),)
                   ),
                  ],
                 ),
               ],
             ),
             if(countervalue>8) ElevatedButton(
                             child: Text("You have reaches maximum unit limit"),
                             style: ElevatedButton.styleFrom(
                               primary: Colors.red,
                             ),
                             onPressed: () {
                            
                             }),


             
           ],
         ),

         

       ),
       
       ),
     );
    
  }
}
