import 'package:flutter/material.dart';
import 'package:share/share.dart';
import 'package:transparent_image/transparent_image.dart';

class GifPage extends StatelessWidget {
  final Map _gifImage;

  GifPage(this._gifImage);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          _gifImage["title"],
        ),
        actions: [
          IconButton(
            icon: Icon(Icons.share),
            onPressed: () {
              Share.share(_gifImage["images"]["fixed_height"]["url"]);
            },
          ),
        ],
      ),
      body: Center(
        child: FadeInImage.memoryNetwork(
          placeholder: kTransparentImage,
          image: _gifImage["images"]["fixed_height"]["url"],
          
        ), 
      ),
    );
  }
}
