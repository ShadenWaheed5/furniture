import 'package:flutter/material.dart';
import 'package:furniture/demodata.dart';
import 'package:furniture/screens/items%20describtion.dart';

class CategoryPage extends StatefulWidget {
  @override
  _CategoryPageState createState() => _CategoryPageState();
}

class _CategoryPageState extends State<CategoryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        title: Text('Category',
            style: TextStyle(
                color: Colors.black,
                fontSize: 17,
                fontWeight: FontWeight.bold)),
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black, size: 12),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_bag),
            color: Colors.blue,
            onPressed: () {},
          )
        ],
      ),
      body: Container(
        child: GridView.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2, childAspectRatio: 1),
            itemCount: CategoryData.length,
            scrollDirection: Axis.vertical,
            itemBuilder: (context, index) {
              return Column(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(context, MaterialPageRoute(builder: (_) {
                        return ItemDescribtion();
                      }));
                    },
                    child: Container(
                      alignment: Alignment.topRight,
                      height: 150,
                      width: 150,
                      margin: EdgeInsets.all(5),
                      child: IconButton(
                        icon: Icon(Icons.favorite),
                        onPressed: () {},
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25.0),
                        image: DecorationImage(
                            fit: BoxFit.fill,
                            image: NetworkImage(
                                CategoryData[index]['categoryimage'])),
                      ),
                    ),
                  ),
                  Text(CategoryData[index]['caterogyname']),
                  Text(CategoryData[index]['itemsnumber'].toString())
                ],
              );
            }),
      ),
    );
  }
}
