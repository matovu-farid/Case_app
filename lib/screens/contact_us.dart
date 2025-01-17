import 'dart:io';

import 'package:case_app/classes/models/contacts.dart';
import 'package:case_app/widgets/my_indicator.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';
import 'package:logging/logging.dart';

class ContactUs extends StatelessWidget {
  final _logger = Logger('Contact Us');
  @override
  Widget build(BuildContext context) {
     if (Platform.isIOS) {
      return CupertinoPageScaffold(
        
        
          navigationBar: CupertinoNavigationBar(
            middle:  Text(
          'Contacts',
          style: TextStyle(fontSize: 16),
        ),
          ),
          child: _Body(logger: _logger));
    }
    return Scaffold(
      appBar: AppBar(title: Text('Contacts'),centerTitle: true,),
      body: _Body(logger: _logger),
    );
  }
}

class _Body extends StatelessWidget {
  const _Body({
    Key? key,
    required Logger logger,
  }) : _logger = logger, super(key: key);

  final Logger _logger;

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Contacts>(
        future: Contacts.fromLocalJson('assets/json/contacts.json'),
        builder: (_, snapshot) {
          _logger.info(snapshot.connectionState);
          if (snapshot.connectionState == ConnectionState.done) {
            var map = snapshot.data!.toJson();
            return ListView.builder(
                itemCount: map.length,
                itemBuilder: (_, index) {
                  var key = map.keys.elementAt(index);
                  var value = map[key];
                  return Card(
                    child: ListTile(
                      title: Text("$key : $value"),
                    ),
                  );
                });
          }
          return Center(child: MyIndicator(Indicator.ballPulseRise));
        });
  }
}
