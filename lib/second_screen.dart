import 'package:flutter/material.dart';

class SecondPage extends StatefulWidget {
  final heroTag;
  final foodName;
  final foodPrice;


  SecondPage({this.heroTag, this.foodName, this.foodPrice});

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Stack(
            children: [
              Container(
                height: 300.0,
              ),
              Container(
                height: 200.0,
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/green.jpg'),
                    fit: BoxFit.cover,),
                    color: Color(0xFF5AC035),
                  borderRadius: BorderRadius.only(bottomLeft :Radius.circular(100.0),
                    bottomRight: Radius.circular(100.0),
                  )
                ),
              ),
              Positioned(
                top: 50.0,
                left: (MediaQuery.of(context).size.width/2)-125,
                child: Hero(
                  tag: widget.heroTag,
                  child: Container(
                    height: 250.0,
                    width: 250.0,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(widget.heroTag),
                        fit: BoxFit.cover
                      )
                    ),
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topLeft,
                child: IconButton(
                  onPressed: (){Navigator.of(context).pop();},
                  icon: Icon(Icons.arrow_back_ios),
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz),
                  color: Colors.white,
                ),
              )
            ],
          ),
         Padding(
           padding: EdgeInsets.only(left: 20.0, right: 20.0),
           child: Column(
             crossAxisAlignment: CrossAxisAlignment.start,
             children: [
               Text(widget.foodName,
               style: TextStyle(
                 fontFamily: 'Montserrat',
                 fontSize: 25.0,
                 fontWeight: FontWeight.bold,
                 color: Colors.black
               ),),
               SizedBox(height: 10.0,),
               Row(
                 children: [
                   Text('4.0',
                   style: TextStyle(
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.bold,
                     fontSize: 15.0
                   ),),
                   SizedBox(width: 3.0,),
                   Icon(Icons.star,color: Colors.green,size: 15.0,),
                   Icon(Icons.star,color: Colors.green,size: 15.0,),
                   Icon(Icons.star,color: Colors.green,size: 15.0,),
                   Icon(Icons.star,color: Colors.green,size: 15.0,),
                   Icon(Icons.star,color: Colors.green,size: 15.0,),

                 ],
               ),
               SizedBox(height: 50.0),
               Row(
                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                 children: [
                   Text(widget.foodPrice,
                   style: TextStyle(
                     fontFamily: 'Montserrat',
                     fontWeight: FontWeight.bold,
                     fontSize: 30.0,
                     color: Colors.black
                   ),),
                   Container(
                     height: 40.0,
                     width: 150.0,
                     decoration: BoxDecoration(
                       borderRadius: BorderRadius.circular(20.0),
                       color: Color(0xFFEDFEE5)
                     ),
                     child: Center(
                       child: Row(
                         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                         children: [
                           IconButton(
                             onPressed: (){},
                             icon: Icon(Icons.remove_circle_outline),
                             color: Colors.green,
                           ),
                           Text(
                             '3',
                             style: TextStyle(
                               fontFamily: 'Montserrat',
                               fontWeight: FontWeight.bold,
                               color: Colors.green,
                               fontSize: 25.0
                             ),
                           ),
                           IconButton(
                             onPressed: (){},
                             icon: Icon(Icons.add_circle),
                             color: Colors.green,
                           )
                         ],
                       ),

                     ),
                   )
                 ],
               ),
               SizedBox(height: 30.0),
                Text('About the food',
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   fontSize: 18.0,
                   fontWeight: FontWeight.bold,
                   color: Colors.black,
                 ),),
               SizedBox(height: 15.0,),
               Text(
                 'This light home-cooked food is low salt and low oil with balanced nutrition, selected from high-quality ingredients.This delicious food maybe your best healthy choice',
                 style: TextStyle(
                   fontFamily: 'Montserrat',
                   fontWeight: FontWeight.bold,
                   color: Colors.grey,
                   fontSize: 15.0
                 ),
               ),
               SizedBox(height: 60.0,),
               Container(
                 height: 70.0,
                 width: MediaQuery.of(context).size.width-40,
                 decoration: BoxDecoration(
                   borderRadius: BorderRadius.circular(40.0),
                   color: Color(0xFF5AC035),
                 ),
                 child: Center(
                   child :Row(
                     mainAxisAlignment: MainAxisAlignment.center,
                     children: [
                       Text('Total',
                       style: TextStyle(
                         fontFamily: 'Montserrat',
                         color: Colors.white,
                         fontSize: 20.0,
                         fontWeight: FontWeight.bold,
                       ),),
                       SizedBox(width: 15.0),
                       Text(
                         '\$ 84.00',
                         style: TextStyle(
                           fontFamily: 'Montserrat',
                           fontSize: 25.0,
                           color: Colors.white,
                           fontWeight: FontWeight.bold
                         ),
                       )
                     ],
                   )
                 ),
               )

             ],
           ),

          )

        ],
      ),

    );
  }
}
