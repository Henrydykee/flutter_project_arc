// import 'package:flutter/foundation.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:webview_flutter/webview_flutter.dart';
//
// import '../../platform/color.dart';
// import 'newproject_app_bar.dart';
//
// class newprojectWebView extends StatefulWidget {
//   final String? title;
//   final String? url;
//
//
//   const newprojectWebView({
//     Key? key,
//     this.title,
//     this.url,
//   }) : super(key: key);
//
//   @override
//   _newprojectWebViewState createState() => _newprojectWebViewState();
// }
//
// class _newprojectWebViewState extends State<newprojectWebView> {
//
//   late bool _isLoadingPage;
//   late WebViewController _webController;
//   final Set gestureRecognizers = [
//     Factory(() => EagerGestureRecognizer()),
//   ].toSet();
//
//   // @override
//   // void initState() {
//   //   super.initState();
//   //   startLoading();
//   //   _isLoadingPage = true;
//   // }
//
//   int position = 1;
//
//   final key = UniqueKey();
//
//   doneLoading() {
//     setState(() {
//       position = 0;
//     });
//   }
//
//   startLoading() {
//     setState(() {
//       position = 1;
//     });
//   }
//
//   late WebViewController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _initializeController();
//   }
//
//   void _initializeController() {
//     _controller = WebViewController()
//       ..setJavaScriptMode(JavaScriptMode.unrestricted)
//       ..setBackgroundColor(const Color(0x00000000))
//       ..setNavigationDelegate(
//         NavigationDelegate(
//           onProgress: (int progress) {
//             setState(() {
//
//             });
//           },
//           onPageStarted: (String url) {
//             setState(() {
//               position = 1;
//             });
//           },
//           onPageFinished: (String url) {
//             setState(() {
//               position = 0;
//             });
//           },
//           onWebResourceError: (WebResourceError error) {},
//         ),
//       )
//       ..loadRequest(Uri.parse('${widget.url}'));
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: newprojectSecondaryAppBar(
//         title: widget.title,
//         textColor: Colors.black,
//       ),
//       body: IndexedStack(
//         index: position,
//         children: <Widget>[
//           SafeArea(
//             child: WebViewWidget(controller: _controller),
//           ),
//           Container(
//             color: Colors.white,
//             child: Center(
//                 child: CircularProgressIndicator(
//                   valueColor: AlwaysStoppedAnimation<Color>(newprojectColor.green),
//                 )),
//           ),
//
//         ],
//       ),
//     );
//   }
// }