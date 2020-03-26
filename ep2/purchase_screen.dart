import 'package:flutter/material.dart';

class PurchaseScreen extends StatefulWidget {
  @override
  _PurchaseScreenState createState() => _PurchaseScreenState();
}

class _PurchaseScreenState extends State<PurchaseScreen> {
  TextStyle biggerText = TextStyle(fontSize: 22, fontWeight: FontWeight.w700);
  TextStyle smallerText = TextStyle(
      fontSize: 18, fontWeight: FontWeight.w500, color: Colors.grey[800]);

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Plant App',style: TextStyle(color: Colors.white),),
        leading: IconButton(onPressed: (){},icon: Icon(Icons.arrow_back,color: Colors.white,),),
        elevation: 0,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff19803d),
            Color(0xff34ff7c),
          ],
        )),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.black,
        onPressed: () {},
        child: Icon(Icons.add_shopping_cart),
      ),
      body: SafeArea(
          child: (Container(
        width: width,
        decoration: BoxDecoration(
            gradient: LinearGradient(
          colors: [
            Color(0xff19803d),
            Color(0xff34ff7c),
          ],
        )),
        child: SingleChildScrollView(
          child: Container(
            width: width,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(topLeft: Radius.circular(50))),
            margin: EdgeInsets.only(top: 20),
            child: Padding(
              padding: EdgeInsets.all(30),
              child: Column(
                children: <Widget>[
                  Text(
                    'Ficus',
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.w600),
                  ),
                  SizedBox(height: 30,),
                  Row(
                    children: <Widget>[
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text('Price',style: biggerText,),
                          Text('\$50',style: smallerText,),
                          SizedBox(height: 20,),
                          Text('Type',style: biggerText,
                          ),
                          Text('Benjamina',style: smallerText,
                          )
                        ],
                      ),
                      SizedBox(width: 80,),
                      Image.asset('assets/ficus.png', height: 220),
                    ],
                  ),
                  SizedBox(height: 20,),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text('Details',style: biggerText,),
                      Text(
                        'Una de las características de las especies de este género, y de la familia es la secreción lechosa llamada látex que segregan al cortar o herir cualquier parte de la planta. La especie Ficus carica, la higuera común, pertenece a este género. Produce un fruto muy comercializado, el higo o breva.',
                        style: smallerText,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
      ))),
    );
  }
}
