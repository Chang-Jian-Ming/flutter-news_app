import 'dart:async';

import 'package:flutter/material.dart';
import 'nytimes.dart';
import 'services.dart';
import '../../../util.dart';

class Body extends StatefulWidget {

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  Future<Nytimes> _nytimes;

  @override
  void initState() {
    super.initState();
    _nytimes = Services.getResults();
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height, 
      width: width,
      color: Theme.of(context).primaryColor,
      child: FutureBuilder<Nytimes>(
        future: _nytimes,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) {
                return Card(
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: ListTile(
                          leading: Image.network(snapshot.data.results[index].multimedia[1].url),
                          title: Text(snapshot.data.results[index].title),
                          subtitle: Text(snapshot.data.results[index].resultAbstract),
                          onTap: () {
                            launchInternalURL(snapshot.data.results[index].url);
                          },
                        ),
                      ),
                    ],
                  ),
                );
              },
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text('Something went wrong. Please try again.')
            );
          }
          return Center(
            child: Container(
              height: width * 0.1,
              width: width * 0.1,
              child: CircularProgressIndicator(),
            ),
          );
        },
      ),
    );
  }
}
