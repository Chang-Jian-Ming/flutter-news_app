import 'package:url_launcher/url_launcher.dart';

import 'constants.dart';

String decoding(String text) {
  Map<String, String> changes = {
    'â': '\'',
    'â': '\'',
    'â': '\"',
    'â': '\"',
  };
  return changes.entries
  .fold(text, (previousValue, element) => previousValue.replaceAll(element.key, element.value));
}

final String emailLaunchUri = Uri(
  scheme: 'mailto',
  path: email,
  queryParameters: {
    'subject': 'Information Reporting'
  }
).toString();

final String contactLaunchUri = Uri(
  scheme: 'tel',
  path: contactNo,
).toString();

launchExternalURL(String toSend) async {
  if (await canLaunch(toSend)) {
    await launch(toSend);
  } else {
    throw 'Could not launch $toSend';
  }
}

launchInternalURL(String toSend) async {
  if (await canLaunch(toSend)) {
    await launch(toSend, forceWebView: true);
  } else {
    throw 'Could not launch $toSend';
  }
}
