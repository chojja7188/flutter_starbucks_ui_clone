import 'package:flutter/material.dart';

class DeliveryScreen extends StatefulWidget {
  const DeliveryScreen({Key? key}) : super(key: key);

  @override
  State<DeliveryScreen> createState() => _DeliveryScreenState();
}

class _DeliveryScreenState extends State<DeliveryScreen> {
  bool _isLoading = true;
  @override
  void initState() {
    Future.delayed(Duration(seconds: 2)).then((value) {
      setState(() {
        _isLoading = false;
      });
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Delivers', style: TextStyle(fontWeight: FontWeight.bold)),
        leading:  BackButton(
          color: Colors.black,
        ),
      ),
      body: Center(
        child: _isLoading ? CircularProgressIndicator() : Text('배달 안 합니다.', style: TextStyle(fontSize: 40)),
      )
    );
  }
}
