import 'package:flutter/material.dart';
import 'package:movie/views/movie_review.dart';
import 'package:movie/views/seats.dart';
import 'package:movie/views/widgets/category/category_one.dart';

class BookTicket extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<BookTicket> {

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: 24,
      right: 8,
      child: ElevatedButton(
        style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.grey)),
        child: const Text(
          'BOOK-TICKET',
          style: TextStyle(color: Colors.white),
        ),
        onPressed: () {
          showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
               return Ticket();
              });
        },
      ),
    );
  }
}
class Ticket extends StatefulWidget {
  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
  int dropdownvalue =1;
  var items = <int>[1, 2, 3, 4];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      color: Colors.grey[800],
      child: Center(
        child: Column(
          children: [
            AppBar(

              backgroundColor: Colors.grey[800],
              title: Text('How many Seats'),
              leading: IconButton(
                icon: Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              actions: [
                Padding(padding:EdgeInsets.only(right: 16) ),
                DropdownButton<int>(

                  icon: Icon(Icons.keyboard_arrow_down),
                  iconSize: 16,
                  items: items.map((int items) {
                    return DropdownMenuItem(
                        value: items,
                        child: Text('$items'));
                  }).toList(),
                  onChanged: (int? newvalue) {
                    setState(() {
                      this.dropdownvalue = newvalue!;
                    },
                    );

                  },
                  value:dropdownvalue,

                ),
                SizedBox(width: 16,)
              ],
            ),
            Row(

              mainAxisAlignment: MainAxisAlignment.center,
              children: [


                Column(

                  children: [
                    SizedBox(height: 40,),
                    Text('Balcony',style: TextStyle(color: Colors.white),),
                    Text('Rs.150.0',style: TextStyle(color: Colors.white)),
                    Text('Available',style: TextStyle(color: Colors.white))
                  ],
                ),
                SizedBox(width: 30,),
                Column(
                  children: [
                    SizedBox(height: 40,),
                    Text('First Class',style: TextStyle(color: Colors.white)),
                    Text('Rs.120.0',style: TextStyle(color: Colors.white)),
                    Text('Available',style: TextStyle(color: Colors.white))
                  ],
                )
              ],
            ),
            SizedBox(height: 30,),
            ElevatedButton(
                onPressed: (){Navigator.push(context,  MaterialPageRoute(builder: (context) => Seat(title: 'Bad Boys For Life', tickets: dropdownvalue)),);},
                child: Text('Select Seats',style: TextStyle(color: Colors.white),

                )
            )

          ],
        ),
      ),
    );
  }
}
