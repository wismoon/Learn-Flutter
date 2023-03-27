import 'dart:math';
import 'package:faker/faker.dart';
import 'package:flutter/material.dart';
import 'package:model_flutter/Models/product.dart';


class Homepage extends StatelessWidget {

  Homepage({super.key});
  Faker faker = Faker();
  
  @override
  Widget build(BuildContext context) {
  List <product> DummyData = List.generate(100, (index)  {
    return product(
      "https://picsum.photos/id/$index/200", 
      faker.food.restaurant(), 
      10000 + Random().nextInt(100000), 
      faker.lorem.sentence());
  });
    return Scaffold(
      appBar: AppBar(
        title: Text("Membuat Model Flutter"),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing: 10,
          crossAxisSpacing: 10
          ),
        itemBuilder: (context, index) {
          return GridTile(
            child: Image.network(DummyData[index].imageUrl),
            footer: Container(
              color: Colors.grey.withOpacity(0.9),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    DummyData[index].judul,
                    maxLines: 1,
                    style: TextStyle(
                      foreground: Paint()
                       ..style = PaintingStyle.fill
                       //penggunaan stroke painting style untung garis tulisan
                       //..strokeWidth = 1
                       ..color = Colors.white,
                      fontWeight: FontWeight.bold)), 
                  Text("Rp ${DummyData[index].harga}", style: TextStyle(color: Colors.white),),
                  Text(
                    DummyData[index].deskripsi,
                    maxLines: 2,
                    style: TextStyle(
                      color: Colors.white
                    ),),
                ],
              ),
            ),);
        },
        itemCount: DummyData.length,
      ),
    );
  }
}