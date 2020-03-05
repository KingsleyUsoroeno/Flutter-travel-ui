import 'package:flutter/material.dart';
import 'package:flutter_travel_ui/model/activity_model.dart';
import 'package:flutter_travel_ui/model/destination_model.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class DestinationScreen extends StatefulWidget {
  final Destination destination;

  DestinationScreen({this.destination});

  @override
  _DestinationScreenState createState() => _DestinationScreenState();
}

class _DestinationScreenState extends State<DestinationScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Hero(
                tag: widget.destination.city,
                child: Container(
                  height: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(30.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black26,
                            offset: Offset(0.0, 2.0),
                            blurRadius: 6.0)
                      ],
                      image: DecorationImage(
                          image: AssetImage(
                            widget.destination.imageUrl,
                          ),
                          fit: BoxFit.cover)),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(vertical: 40.0, horizontal: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(
                        Icons.arrow_back,
                      ),
                      iconSize: 24.0,
                      color: Colors.white,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Row(
                      children: <Widget>[
                        IconButton(
                          icon: Icon(
                            Icons.search,
                          ),
                          iconSize: 24.0,
                          color: Colors.white,
                          onPressed: () => Navigator.pop(context),
                        ),
                        IconButton(
                          icon: Icon(
                            FontAwesomeIcons.sortAlphaDown,
                          ),
                          iconSize: 24.0,
                          color: Colors.white,
                          onPressed: () => Navigator.pop(context),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              Positioned(
                left: 20.0,
                bottom: 20.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      widget.destination.city,
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 30.0,
                          letterSpacing: 1.2),
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.locationArrow,
                          size: 15.0,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 6.0,
                        ),
                        Text(
                          widget.destination.country,
                          style: TextStyle(color: Colors.white, fontSize: 20.0),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                right: 20.0,
                bottom: 20.0,
                child: Icon(
                  Icons.location_on,
                  size: 26.0,
                  color: Colors.white70,
                ),
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
                padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
                itemCount: widget.destination.activities.length,
                itemBuilder: (context, position) {
                  Activity activity = widget.destination.activities[position];
                  return Stack(
                    children: <Widget>[
                      Container(
                        margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                        height: 170.0,
                        width: double.infinity,
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(20.0)),
                        child: Padding(
                          padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Padding(
                                padding: EdgeInsets.only(
                                    top: 8.0, left: 0.0, right: 10.0),
                                child: Row(
                                  children: <Widget>[
                                    Container(
                                      width: 120.0,
                                      child: Text(
                                        activity.name,
                                        style: TextStyle(
                                            fontSize: 18.0,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ),
                                    Column(
                                      children: <Widget>[
                                        Text(
                                          '\$${activity.price.toString()}',
                                          style: TextStyle(
                                              fontSize: 22.0,
                                              fontWeight: FontWeight.w600),
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                        ),
                                        Text(
                                          'per pax',
                                          style: TextStyle(color: Colors.grey),
                                        )
                                      ],
                                    )
                                  ],
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                ),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(activity.type),
                              // build rating icon
                              buildIconBtn(),
                              SizedBox(
                                height: 20.0,
                              ),
                              Row(
                                children: <Widget>[
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    alignment: Alignment.center,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Text(activity.startTimes[0]),
                                  ),
                                  SizedBox(
                                    width: 15.0,
                                  ),
                                  Container(
                                    padding: EdgeInsets.all(4.0),
                                    alignment: Alignment.center,
                                    width: 70.0,
                                    decoration: BoxDecoration(
                                      color: Theme.of(context).primaryColor,
                                      borderRadius: BorderRadius.circular(6.0),
                                    ),
                                    child: Text(activity.startTimes[1]),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                      Positioned(
                        left: 15.0,
                        top: 15.0,
                        bottom: 15.0,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(20.0),
                          child: Image(
                            image: AssetImage(activity.imageUrl),
                            width: 110.0,
                            fit: BoxFit.cover,
                          ),
                        ),
                      )
                    ],
                  );
                }),
          )
        ],
      ),
    );
  }

  Widget buildIconBtn() {
    return Row(
      children: <Widget>[
        IconTheme(
          data: IconThemeData(
            color: Colors.amber,
            size: 20.0,
          ),
          child: Icon(Icons.star),
        ),
        IconTheme(
          data: IconThemeData(
            color: Colors.amber,
            size: 20.0,
          ),
          child: Icon(Icons.star),
        ),
        IconTheme(
          data: IconThemeData(
            color: Colors.amber,
            size: 20.0,
          ),
          child: Icon(Icons.star),
        ),
        IconTheme(
          data: IconThemeData(
            color: Colors.amber,
            size: 20.0,
          ),
          child: Icon(Icons.star),
        ),
        IconTheme(
          data: IconThemeData(
            color: Colors.amber,
            size: 20.0,
          ),
          child: Icon(Icons.star),
        ),
      ],
    );
  }
}
