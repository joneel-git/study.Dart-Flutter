import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:url_launcher/url_launcher_string.dart';

Uri hello = Uri.parse('https://link.com');
Uri hello2 = Uri.parse('https://link.com');

Future<void> launchUniversalLinkIos(Uri url) async {
  final bool nativeAppLaunchSucceeded = await launchUrl(
    url,
    mode: LaunchMode.externalApplication,
  );
  if (!nativeAppLaunchSucceeded) {
    await launchUrl(
      url,
      mode: LaunchMode.inAppWebView,
    );
  }
}



// Future<void> _launchInBrowser(Uri url) async {
//     var url = Uri.parse('https://www.google.se/');
//     if (!await launchUrl(
//       url,
//       mode: LaunchMode.externalApplication,
//     )) {
//       throw 'Could not launch $url';
//     }
//   }

// Future<void> _launchInWebViewOrVC(Uri url) async {
//   if (!await launchUrl(
//     url,
//     mode: LaunchMode.inAppWebView,
//     webViewConfiguration: const WebViewConfiguration(
//         headers: <String, String>{'my_header_key': 'my_header_value'}),
//   )) {
//     throw 'Could not launch $url';
//   }
// }


