import 'package:flutter/material.dart';
import 'package:movie/service/api_call.dart';
import 'package:movie/views/widgets/gird.dart';
class Movie extends StatefulWidget {

   Movie({Key? key}) : super(key: key);

  @override
  _MovieState createState() => _MovieState();
}

class _MovieState extends State<Movie> {




  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: Colors.black26,
        appBar: AppBar(
          title: Text('Book Movie'),
          backgroundColor: Colors.black26,
          leading: IconButton(
            icon: Icon(Icons.menu),
            onPressed: () {},
          ),
          actions: [
            Padding(
                padding: const EdgeInsets.only(right: 16),
                child: IconButton(icon: Icon(Icons.search), onPressed: () {}))
          ],
          bottom: const TabBar(
            tabs: [
              Tab(
                child: Text('Popular'),
              ),
              Tab(child: Text('Top Rated')),
              Tab(child: Text('Upcoming')),
            ],
          ),
        ),
        drawer: Drawer(
          child: ListView(
            padding: EdgeInsets.zero,
            children: const <Widget>[
              DrawerHeader(
                decoration: BoxDecoration(
                  color: Colors.indigo,
                ),
                child: Text(
                  '',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                  ),
                ),
              ),
              ListTile(
                leading: Icon(Icons.movie),
                title: Text('Movies'),
              ),
              ListTile(
                leading: Icon(Icons.tv),
                title: Text('Tv Shows'),
              ),
              ListTile(
                leading: Icon(Icons.event_seat),
                title: Text('Discover'),
              ),
              ListTile(
                leading: Icon(Icons.person),
                title: Text('Popular People'),
              ),
              ListTile(
                leading: Icon(Icons.alarm),
                title: Text('Remainders'),
              ),
              ListTile(
                leading: Icon(Icons.help),
                title: Text('Discover'),
              ),
              ListTile(
                leading: Icon(Icons.contact_support),
                title: Text('Google+ Community'),
              ),
              ListTile(
                leading: Icon(Icons.lock_open),
                title: Text('Unlock Pro'),
              ),
              ListTile(
                leading: Icon(Icons.settings),
                title: Text('Settings'),
              ),
            ],
          ),
        ),
        body: TabBarView(

          children: [
            MovieGrid('Popular'),
            MovieGrid('TopRated'),
            MovieGrid('Upcoming'),
          ],
        ),
      ),
    );
  }
}
