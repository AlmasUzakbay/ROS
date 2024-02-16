import 'package:flutter/material.dart';
import 'webview_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  void _launchGitHubURL(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(url: 'https://github.com/AlmasUzakbay'),
      ),
    );
  }

  void _launchSmolGUURL(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => WebViewPage(url: 'https://www.smolgu.ru/'),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My App'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          SizedBox(height: 20), 
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16.0),
            child: Text(
              'ROS application',
              textAlign: TextAlign.left,
            ),
          ),
          SizedBox(height: 20),
          Center(
            child: ElevatedButton(
              onPressed: () => _launchGitHubURL(context),
              child: Text('GitHub'),
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: <Widget>[
              ElevatedButton(
                onPressed: () => _launchSmolGUURL(context),
                child: Text('СмолГУ'),
              ),
              SizedBox(width: 16), 
            ],
          ),
          Expanded(
            child: Center( 
              child: Image.network(
                'https://source.unsplash.com/random'
              ),
            ),
          ),
        ],
      ),
    );
  }
}
