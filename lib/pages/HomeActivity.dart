import 'package:flutter/material.dart';

class HomeActivity extends StatelessWidget {
  HomeActivity({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: _titleText(),
          backgroundColor: Colors.amber,
        ),
        body: Column(
          children: [
            _HeaderTitle(),
            _ImageBody(),
          ],
        ));
  }
}

Widget _titleText() {
  return Text("Go To Moon");
}

Widget _HeaderTitle() {
  return Container(
    child: Text(
      "Go To Moon",
      style: TextStyle(
          color: Colors.red, fontSize: 18, fontWeight: FontWeight.w500),
      textDirection: UnderlineInputBorder(true),
    ),
  );
}

Widget _ImageBody() {
  return Container(
    decoration:
        BoxDecoration(border: Border.all(color: Colors.amber, width: 6)),
    child: Image.asset(
      "assets/images/moon.jpg",
      fit: BoxFit.fill,
      errorBuilder: (context, error, stackTrace) {
        return Center(
          child: Text(
            "Image Not Found",
            style: TextStyle(
              fontSize: 18,
              color: Colors.red,
            ),
          ),
        );
      },
    ),
  );
}
