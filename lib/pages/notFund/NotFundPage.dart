import 'package:flutter/material.dart';

class NotFundPage extends StatefulWidget {
  @override
  _NotFundState createState() {
    // TODO: implement createState
    return _NotFundState();
  }
}


class _NotFundState extends State<NotFundPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('404')
      ),
      body: Center(
        child: Text('页面丢失了'),
      ),
    );
  }
}