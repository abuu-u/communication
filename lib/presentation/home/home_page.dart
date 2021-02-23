import 'package:communication/generated/l10n.dart';
import 'package:communication/presentation/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(S.of(context).title),
      ),
      body: HomeBody(),
    );
  }
}
