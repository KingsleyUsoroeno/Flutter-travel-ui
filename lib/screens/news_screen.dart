import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

class NewsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.symmetric(vertical: 16.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.only(left: 20.0),
                    child: Text(
                      'Discover',
                      style: TextStyle(
                          fontSize: 26.0, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 20.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.search,
                        size: 24.0,
                      ),
                      onPressed: () {},
                    ),
                  )
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                _buildIconChannel(
                    Icon(
                      Icons.apps,
                      color: Colors.white,
                    ),
                    "Application",
                    Colors.blue),
                _buildIconChannel(Icon(Icons.book, color: Colors.white), "News",
                    Colors.orange),
                _buildIconChannel(
                    Icon(Icons.local_grocery_store, color: Colors.white),
                    "Stock",
                    Colors.orange),
                _buildIconChannel(Icon(Icons.chat, color: Colors.white),
                    "Topic", Colors.blueAccent),
              ],
            ),
            SizedBox(height: 20.0,),
            _buildListView()
          ],
        ),
      ),
    );
  }
}

Widget _buildListView() {
  return Expanded(
      child: ListView(
        padding: EdgeInsets.only(left: 10.0) ,
        children: <Widget>[
          ListTile(
            leading: Card(
              elevation: 6.0,
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
              child: CircleAvatar(
                backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
              ),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
          ListTile(
            leading: CircleAvatar(
              backgroundImage: AssetImage('assets/images/ocean_image.jpg'),
            ),
            title: Text('East Merlin', style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),),
            subtitle: Text('What an Amarzing day to be alive', style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.w400),),
            trailing: Card(
              elevation: 8.0,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Padding(
                padding: const EdgeInsets.all(2.0),
                child: Icon(Icons.music_note, color: Colors.deepOrangeAccent,),
              ),
            ),
          ),
        ],
    )
  );
}

Widget _buildIconChannel(Icon icon, String title, Color color) {
  return Container(
    child: Column(
      children: <Widget>[
        Container(
          width: 40.0,
          height: 40.0,
          child: icon,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0), color: color),
        ),
        SizedBox(
          height: 6.0,
        ),
        Text(
          title,
          style: TextStyle(fontSize: 16.0, fontWeight: FontWeight.bold),
        )
      ],
    ),
  );
}
