

import 'package:flutter/material.dart';
class Seat extends StatefulWidget {

  const Seat({Key? key, required this.title, required this.tickets}) : super(key: key);

  final String title;
  final int tickets;

  @override
  _SeatState createState() => _SeatState();
}

class _SeatState extends State<Seat> {
  Set<int> seats = {};
  late String value;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.black54,
          title:Text('${widget.title}',style: TextStyle(color: Colors.white),) ,
          leading: IconButton(icon:Icon(Icons.arrow_back),
          onPressed: (){
            Navigator.pop(context);
          },),

          actions: [
            Text( '${widget.tickets} Tickets')
          ],
        ),
        body: Column(

          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text('Screen',style: TextStyle(color: Colors.white,fontWeight: FontWeight.bold,fontSize: 24),),
            ),
            GridView.count(
              crossAxisCount: 6,
              crossAxisSpacing: 4.0,
              mainAxisSpacing: 4.0,
              shrinkWrap:true ,
              padding: EdgeInsets.all(8.0),
              children: List.generate(36, (index){
                value='${String.fromCharCode(65+index~/6).toUpperCase()}${(index%6)+1}';
                return InkWell(
                  onTap: (){
                   setState(() {

                     if(seats.contains(index)){
                       seats.remove(index);
                     }else{
                       if(seats.length == widget.tickets){
                         return;
                       }
                       seats.add(index);
                     }
                   });
                  },

                  child: Container(
                    decoration:BoxDecoration(border:Border.all(color: Colors.greenAccent) , color: seats.contains(index)?Colors.greenAccent: Colors.transparent,
                    ),

                    alignment: Alignment.center,
                    child:Text('$value',style: TextStyle(color: Colors.white),),
                  ),
                );
              }),
            ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(fixedSize: Size(MediaQuery.of(context).size.width, 40)),

          onPressed:(){
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text('Your tickets are booked ')),

              );
          },
  child:Text('Book',style: TextStyle(color: Colors.white),textAlign: TextAlign.center,)
           )
          ],
        ),
      ),
    );
  }
}
