import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageList extends StatelessWidget
{
  final List<String> imagesUrl;

  ImageList(this.imagesUrl);

  Widget build(context)
  {
    return ListView.builder(
      itemCount: imagesUrl.length,
      itemBuilder: (context,index)
      {
        return Container(
        decoration: BoxDecoration(
          border: Border.all(
            color: Colors.black87,
            width: 4,
            style: BorderStyle.solid,
          ),
        ),
        
        child: Column(
          children: <Widget>[
            Image.network(imagesUrl[index]),
            Container(
              margin: EdgeInsets.all(5.0),
              child: Text('Hey $index'),
            ),
          ],
        ), 
         );
      },
    );
  }
}