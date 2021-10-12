import 'package:flutter/material.dart';

class ItemDescribtion extends StatefulWidget {
  @override
  _ItemDescribtionState createState() => _ItemDescribtionState();
}

class _ItemDescribtionState extends State<ItemDescribtion> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView(
        children: [
          Container(
            height: 250,
            child: Image(
              image: NetworkImage(
                  'https://hips.hearstapps.com/hmg-prod.s3.amazonaws.com/images/tropical-colors-hbx040119bertram05-1580427438.jpg?crop=1.00xw:0.936xh;0,0.0644xh&resize=640:*'),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey, shape: BoxShape.circle),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey, shape: BoxShape.circle),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey, shape: BoxShape.circle),
                ),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                      color: Colors.blueGrey, shape: BoxShape.circle),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('sofa,2-seat',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold)),
            subtitle: Text('classic Traditional',
                style: TextStyle(
                    color: Colors.blueAccent,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold)),
            trailing: Text('\$5999,',
                style: TextStyle(
                    color: Colors.lightBlue,
                    fontSize: 35.0,
                    fontWeight: FontWeight.bold)),
          ),
          Text(
            'data',
            softWrap: true,
            style: TextStyle(fontSize: 25.0),
          )
        ],
      ),
      bottomSheet: Container(
        width: MediaQuery.of(context).size.width,
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            TextButton(
              onPressed: () {},
              style: TextButton.styleFrom(
                  fixedSize: Size(90, 50), backgroundColor: Colors.blue),
              child: IconButton(
                icon: Icon(
                  Icons.favorite_border,
                  color: Colors.black,
                ),
                onPressed: () {},
              ),
            ),
            TextButton(
                onPressed: () {},
                style: TextButton.styleFrom(
                    fixedSize:
                        Size(MediaQuery.of(context).size.width / 1.30, 50),
                    backgroundColor: Colors.blueGrey),
                child: Text('Add to cart',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 30.0,
                        fontWeight: FontWeight.bold)))
          ],
        ),
      ),
    );
  }
}
