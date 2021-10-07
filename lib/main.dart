import 'package:flutter/material.dart';
import 'package:green_revolation/second_screen.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home:  MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {


  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(

      body: ListView(
        children: [
          SizedBox(height: 10.0),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 10.0),
                child: IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.menu),
                  color: Colors.grey,
                ),
              ),
              SizedBox(height: 10.0,),
              Padding(
                padding: EdgeInsets.only(left: 10.0,right: 15.0),
                child: Container(
                  height: 50.0,
                  width: 50.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/avocado.png'),
                      fit: BoxFit.cover,),
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                ),
              ),

            ],
          ),
              SizedBox(height: 15.0,),
              Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: Text(
                  'GOOD',
                  style: TextStyle(
                      fontFamily: 'Futura',
                      fontSize: 40.0,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF5B8842)
                  ),
                ),

              ),
              SizedBox(height: 5.0),
             Padding(
               padding: EdgeInsets.only(left: 15.0),
               child: Text(
                 'MORNING',
                 style: TextStyle(
                     fontWeight: FontWeight.bold,
                     fontSize: 40.0,
                     fontFamily: 'Futura',
                     color: Color(0xFF5B8842)
                 ),
               ) ,
             ),
          SizedBox(
            height: 15.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Popular Food',
              style: TextStyle(
                fontFamily: 'Montserrat',
                fontSize: 17.0,
                fontWeight: FontWeight.w600,
                color: Colors.black


              ),
            ),
          ),
          SizedBox(
            height: 7.0,),

          Container(
            height: 250.0,
              child :ListView(
                scrollDirection: Axis.horizontal,
            children: [
              _foodItem('assets/plate1.png','Vegan Breakfast','\$28'),
              _foodItem('assets/plate2.png','Protein Salad','\$26'),
              _foodItem('assets/plate3.png','Vegan Breakfast','\$28'),
              _foodItem('assets/plate4.png','Vegan Breakfast','\$28'),

            ],
          )
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'Best Food',
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0,
                  color: Colors.black
              ),
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            child:  Container(
                height: 200.0,
                width: 150.0,

                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white ,Color(0xFFACBEA3)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/plate6.png',),
                      fit: BoxFit.contain,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          spreadRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                )
            ),
          ),
          SizedBox(height: 20.0,),
          Padding(
            padding: EdgeInsets.only(left: 15.0,right: 15.0),
            child:  Container(
                height: 200.0,
                width: 150.0,

                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.white ,Color(0xFFACBEA3)],
                      begin: Alignment.topCenter,
                      end: Alignment.bottomRight,),
                    borderRadius: BorderRadius.only(
                      topRight: Radius.circular(10.0),
                      topLeft: Radius.circular(10.0),
                      bottomRight: Radius.circular(10.0),
                      bottomLeft: Radius.circular(10.0),
                    ),
                    image: DecorationImage(
                      image: AssetImage(
                        'assets/plate3.png',),
                      fit: BoxFit.contain,
                    ),
                    boxShadow: [
                      BoxShadow(
                          blurRadius: 6.0,
                          spreadRadius: 6.0,
                          color: Colors.grey.withOpacity(0.2)
                      )
                    ]
                )
            ),
    )

            ],
          ),
      bottomNavigationBar: Container(
        height: 75.0,
        decoration: BoxDecoration(
          color: Color(0xFF5AC035),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(50.0),
            topRight: Radius.circular(50.0),
           
          )
          ),
        child: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(Icons.home,color: Colors.white,size: 25.0,),
              Icon(Icons.search,color: Colors.white,size: 25.0,),
              Icon(Icons.check_box,color: Colors.white,size: 25.0,),
              Icon(Icons.person_outline,color: Colors.white,size: 25.0,),

            ],
          ),
        ),
      ),

    );
  }
  Widget _foodItem (String imgPath,String name,String price){
    return InkWell(
      onTap: (){
        Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => SecondPage(heroTag : imgPath ,foodName : name,foodPrice : price)
        ));
      },
      child: Padding(
        padding: EdgeInsets.only(left: 10.0,top: 10.0,bottom: 10.0),
        child: Container(
          height: 200.0,
          width: 200.0,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10.0),
            boxShadow: [
              BoxShadow(
                blurRadius: 6.0,
                spreadRadius: 6.0,
                color: Colors.grey.withOpacity(0.2),
              )
            ]
          ),
          child: Stack(
            children: [
              Container(
                height: 175.0,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                      colors: [Colors.white,Color(0xFFACBEA3)],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomRight,
                  ),
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(10.0),
                    topLeft: Radius.circular(10.0),
                  )
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 175.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain
                    ),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10.0),
                      topRight: Radius.circular(10.0),
                    )
                  ),
                ),
              ),
              Positioned(
                top: 160.0,
                right: 20.0,
                child: Material(
                  elevation: 2.0,
                borderRadius: BorderRadius.circular(15.0),
                  child: Container(
                    height: 30.0,
                    width: 30.0,
                    child: Center(
                    child: Icon(Icons.favorite , color: Colors.red,size: 17.0),
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.0),
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
              Positioned(
              top: 190.0,
                left: 10.0,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 15.0,
                        fontWeight: FontWeight.w600,
                        color: Colors.black
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Container(
                      width: 175.0,
                      child : Row(

                        children: [
                          Text('4.0',
                          style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.green,
                            fontSize: 12.0,
                          ),),
                          SizedBox(width: 3.0),
                          Icon(Icons.star,color: Colors.green,size: 14.0,),
                          Icon(Icons.star,color: Colors.green,size: 14.0,),
                          Icon(Icons.star,color: Colors.green,size: 14.0,),
                          Icon(Icons.star,color: Colors.green,size: 14.0,),
                          Icon(Icons.star,color: Colors.green,size: 14.0,),
                           SizedBox(width: 40.0),
                           Text(price,
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                fontSize: 15.0,
                                fontWeight: FontWeight.bold,
                                color: Colors.black
                            ),)
                        ],),
                    ),

                  ],
                ),
              )
            ],
          ),
        ),
      ),



     );
  }
}
