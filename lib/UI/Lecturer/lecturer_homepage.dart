import 'package:flutter/material.dart';

class LecturerHome extends StatefulWidget {
  @override
  _LecturerHomeState createState() => _LecturerHomeState();
}

class _LecturerHomeState extends State<LecturerHome> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Color(0x0E004D99),
          brightness: Brightness.dark,
          elevation: 0,
          leading: Hero(
            tag: 'signOutTag',
            child: Material(
              color: Colors.transparent,
              child: IconButton(
                  icon: Icon(Icons.exit_to_app),
                  iconSize: 36,
                  color: Colors.white,
                  onPressed: () {
                    Navigator.of(context).pushNamedAndRemoveUntil(
                        '/lecturerLogin', (Route<dynamic> route) => false);
                  }),
            ),
          ),
        ),
        backgroundColor: Color(0xDF004D99),
        body: ListView(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: <Widget>[
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Hero(
                                tag: 'broadcastText',
                                child: Text(
                                  'Broadcast',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Hero(
                                tag: 'broadcastIcon',
                                child: Icon(
                                  Icons.volume_up,
                                  color: Colors.black,
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'You can broadcast a message or notification to a particular class.',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                          Hero(
                            tag: 'broadcastButton',
                            child: RaisedButton(
                                child: Text(
                                  'Send Broadcast',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                  ),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.lightBlueAccent,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/broadcast');
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Hero(
                                tag: 'letter',
                                child: Text(
                                  'Letters',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Hero(
                                tag: 'fileIcon',
                                child: Material(
                                  color: Colors.transparent,
                                  child: Icon(
                                    Icons.description,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'You can view letters uploaded by students for leave of absense, permissions, etc.',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                          Hero(
                            tag: 'letterButton',
                            child: RaisedButton(
                                child: Text(
                                  'Check Letters',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.lightBlueAccent,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/letters');
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Hero(
                                tag: 'report',
                                child: Text(
                                  'Report Generation',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Hero(
                                tag: 'reportIcon',
                                child: Material(
                                  color: Colors.transparent,
                                  child: Icon(
                                    Icons.receipt,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'Generate the report of letters uploaded by students for leave of absense, permissions, etc.',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                          Hero(
                            tag: 'reportButton',
                            child: RaisedButton(
                                child: Text(
                                  'Generate Report',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.lightBlueAccent,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/report');
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Card(
                    elevation: 10,
                    child: Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Hero(
                                tag: 'events',
                                child: Text(
                                  'Events',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 20,
                                    fontFamily: "Roboto",
                                    color: Colors.black,
                                    decoration: TextDecoration.none,
                                  ),
                                ),
                              ),
                              Hero(
                                tag: 'eventIcon',
                                child: Material(
                                  color: Colors.transparent,
                                  child: Icon(
                                    Icons.event,
                                    color: Colors.black,
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16.0),
                            child: Text(
                              'You can update the details of the attended wokshops, events etc',
                              style: TextStyle(color: Colors.black38),
                            ),
                          ),
                          Hero(
                            tag: 'eventButton',
                            child: RaisedButton(
                                child: Text(
                                  'Event Details',
                                  style: TextStyle(
                                      color: Colors.white, fontSize: 16),
                                ),
                                padding: EdgeInsets.symmetric(horizontal: 30),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(30),
                                ),
                                color: Colors.lightBlueAccent,
                                onPressed: () {
                                  Navigator.pushNamed(context, '/letters');
                                }),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
