import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:furniture/Themes/sharedTextStyleandColor.dart';
import 'package:furniture/catogories/category.dart';
import 'package:furniture/demodata.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('HOME',
            style: TextStyle(
                color: Colors.black,
                fontSize: 25,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.blue, size: 35),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag),
            color: Colors.blue,
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        scrollDirection: Axis.vertical,
        children: [
          TextField(),
          Container(
              height: 250,
              child:
                  Image(image: NetworkImage(CategoryData[1]['categoryimage']))),
          ListTile(
            title: Text('category',
                style: TextStyle(
                    color: mainColor,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold)),
            trailing: Text('veiw all'),
            onTap: () {
              Navigator.push(context, MaterialPageRoute(builder: (_) {
                return CategoryPage();
              }));
            },
          ),
          Container(
            height: 150,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CategoryData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 100,
                      width: 100,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                CategoryData[index]['categoryimage'])),
                      ),
                    ),
                    Text(CategoryData[index]['caterogyname']),
                    Text(CategoryData[index]['itemsnumber'].toString())
                  ],
                );
              },
            ),
          ),
          Container(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: CategoryData.length,
              itemBuilder: (context, index) {
                return Column(
                  children: [
                    Container(
                      height: 90,
                      width: 90,
                      margin: EdgeInsets.all(5),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                CategoryData[index]['categoryimage'])),
                      ),
                    ),
                    Text(CategoryData[index]['caterogyname']),
                    Text(CategoryData[index]['itemsnumber'].toString())
                  ],
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
