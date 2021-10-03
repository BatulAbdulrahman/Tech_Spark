import 'package:flutter/material.dart';
import 'package:TechSpark/UI/Home.dart';
class FirstScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
   return new FirstScreenState();
  }

}
class FirstScreenState extends State<FirstScreen>{
  final int _numPage=3;
  final PageController _pageController = PageController(initialPage: 0);
  int _currentPage = 0;
  List<Widget> _buildpageIndicator(){
     List<Widget> list =[];
     for(int i=0;i<_numPage;i++)
     {
       list.add(i==_currentPage ? _indicator(true): _indicator(false));
     }
     return list;
  }
  Widget _indicator(bool isActiv)
  {
    return AnimatedContainer(duration: Duration(milliseconds: 150),
    margin: EdgeInsets.symmetric(horizontal: 8.0),
   height: 10.0,
   width: isActiv ? 24.0: 16.0,
   decoration: BoxDecoration(
     color: isActiv ? Colors.white : Colors.green,
     borderRadius: BorderRadius.all(Radius.circular(500)),
   ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor:Colors.blueGrey.shade900,
      body:new Container(
      padding: EdgeInsets.symmetric(vertical: 40.0),
      
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Container(
            alignment: Alignment.centerRight,
            child: FlatButton(
              onPressed:() {
                 Navigator.of(context).pushNamedAndRemoveUntil('/Home',(Route<dynamic>route)=>false);
              },
              child: Text('Skip',
              style: TextStyle(color: Colors.white,fontSize:20.0),),
            ),
          ),
        Container(
          height: 700.0,
          child : PageView(
            physics: ClampingScrollPhysics(),
            controller: _pageController,
          onPageChanged: (int page){
            setState((){
              _currentPage = page;
            });
        
          },
          children: <Widget>[
            Column(
               children: <Widget>[
                 Padding(padding: EdgeInsets.only(top:100.0)),
                  Center(
              child:Image(image: AssetImage('img/TechSpark.png'),height: 300.0,width: 300.0,),
            ),
            SizedBox(height: 30.0),
            Text('تسريع الأثر التقني نحو مجتمع ',style:TextStyle(color:Colors.white,fontSize: 25.0,),),
              Text('يدعم الإبتكار والإبداع ',style:TextStyle(color:Colors.white,fontSize: 25.0,),),


             
               ]
            ),
             Column(
               children: <Widget>[
                  Padding(padding: EdgeInsets.only(top:100.0)),
             Center(
              child:Image(image: AssetImage('img/TechSpark.png'),height: 300.0,width: 300.0,),
            ),
            SizedBox(height: 30.0),
            Text('تطوير الجانب التقني ونشر ثقافة',style:TextStyle(color:Colors.white,fontSize: 25.0,),),
            Text('التكنولوجيا',style:TextStyle(color:Colors.white,fontSize: 25.0,),),
               ]
             ),
    SingleChildScrollView(
       child:Column(
               children: <Widget>[
                Padding(padding: EdgeInsets.only(top:30.0)),
            Image(image: AssetImage('img/TechSpark.png'),height: 350.0,width: 500.0,),
              new Padding(
              padding: EdgeInsets.only(top: 150.0),
               child:new RaisedButton(
              onPressed: () {
                Navigator.of(context).pushNamedAndRemoveUntil('/Home',(Route<dynamic>route)=>false);
              },
              child: new Text(
                'Get Started',
                style: TextStyle(fontSize: 25.0, color: Colors.green.shade800),
              ),
              shape: StadiumBorder(),
              padding: EdgeInsets.symmetric(vertical: 20.0, horizontal: 90.0),
              color: Colors.grey[100],
            ),
            ),
           
               ]
              ),
    ),
            
        
          ],
          )
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _buildpageIndicator(),
        ),
      
        
        ],
      ),
      
      ),
    );
  }

}