import 'package:flutter/material.dart';

import 'reportForm.dart';
import '../../../util.dart';
import '../../../constants.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                  TextSpan(
                    text: "ALERT US\n",
                    style: Theme.of(context).textTheme.headline1,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: Text.rich(
                  TextSpan(
                    text: "If you came across anything that you think should be reported in the news, please get in touch with us.\n",
                    style: Theme.of(context).textTheme.headline2,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  child: Text.rich(
                    TextSpan(
                      text: contactNo,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  onTap: () {
                    launchExternalURL(contactLaunchUri);
                  },
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: InkWell(
                  child: Text.rich(
                    TextSpan(
                      text: email + '\n',
                      style: Theme.of(context).textTheme.headline3,
                    ),
                  ),
                  onTap: () {
                    launchExternalURL(emailLaunchUri);
                  },
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(12),
                  border: Border.all(
                    color: Theme.of(context).accentColor
                  ),
                ),
                child: ReportForm()
              ),
            ],
          ),
        ),
      ),
    );
  }
}
