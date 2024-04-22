import 'dart:async';

import 'package:webview_flutter/webview_flutter.dart';

import '../../../../index.dart';

class WebViewPage extends StatefulWidget {
  const WebViewPage({super.key, this.title, required this.uri});
  final String? title;
  final String uri;
  @override
  State<WebViewPage> createState() => _WebViewPageState();
}

class _WebViewPageState extends State<WebViewPage> {
  late final WebViewController _controller;
  bool isLoading = true;
  final title = Completer<String>();

  @override
  void initState() {
    final controller = WebViewController();

    controller
      ..setJavaScriptMode(JavaScriptMode.unrestricted)
      // ..setBackgroundColor(Colors.transparent)
      ..setNavigationDelegate(
        NavigationDelegate(
          onPageFinished: (url) => setState(() {
            _controller.getTitle().then((value) {
              if (!title.isCompleted) title.complete(value);
            });
            isLoading = false;
          }),
        ),
      )
      ..loadRequest(Uri.parse(widget.uri));

    _controller = controller;
    if (widget.title != null) {
      title.complete(widget.title);
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: DUColors.grayE5,
      appBar: _appBar(context),
      body: SafeArea(
        bottom: true,
        child: isLoading ? const CircularProgressIndicator() : WebViewWidget(controller: _controller),
      ),
    );
  }

  AppBar _appBar(BuildContext context) {
    return AppBar(
      leading: const BackButton(),
      title: FutureBuilder(
          future: title.future,
          builder: (context, snap) {
            return Text(
              snap.data ?? '',
            );
          }),
      centerTitle: true,
    );
  }
}
