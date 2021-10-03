import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
class Home extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
  return HomeState();
  }

}
class HomeState extends State<Home>{
 
  @override
  Widget build(BuildContext context) {
return  DefaultTabController(length: 3, 
child: Scaffold(
  appBar: AppBar(
    backgroundColor: Colors.green.shade800,
    title: Text('Tech Spark'),
    centerTitle: true,
    bottom: TabBar(
    tabs: <Widget>[
      Tab(text: 'الصفحة الرئيسية'),
       Tab(text: 'خدماتنا'),
         Tab(text: 'المدونة'),
    ],
      ),
  ),
  drawer: Drawer(
    child: Column(
    children: <Widget>[
      
    Container(
      child: Padding(padding: EdgeInsets.only(top:50.0),
      child: Column(
     mainAxisAlignment: MainAxisAlignment.center,
     crossAxisAlignment: CrossAxisAlignment.center,
     children: <Widget>[
       CircleAvatar(
         radius: 50.0,
         backgroundImage:AssetImage('img/TechSpark2.png'),
       ),
       SizedBox(height: 5.0,),
       Text('Welcome To Tech Spark',style: TextStyle(fontSize: 22.0,fontWeight: FontWeight.w800),),

     ],
      ),
      ),
    ),
     SizedBox(height: 20.0,),
     ListTile(
       onTap: (){
  
       },
       leading: Icon(Icons.home,color: Colors.black,),
      title: Text('الصفحة الرئيسية'),
     ),
      ListTile(
       onTap: (){},
       leading: Icon(Icons.people,color: Colors.black,),
      title: Text('فريقنا'),
     ),
      ListTile(
       onTap: (){},
       leading: Icon(Icons.public,color: Colors.black,),
      title: Text('المدونة'),
     ),
      ListTile(
       onTap: (){},
       leading: Icon(Icons.video_label,color: Colors.black,),
      title: Text('المركز الإعلامي'),
     ),
      ListTile(
       onTap: (){},
       leading: Icon(Icons.inbox,color: Colors.black,),
      title: Text('اتصل بنا'),
     ),
    ],
    ),
  ),
body: TabBarView(
  children: <Widget>[
    Container(
         padding: EdgeInsets.only(top:12),
    child: Expanded(child: pageviewWidgwt(),),
        ),
        Center(
          child:Text('خدماتنا'),
        ),
        Center(
          child:Text('المدونة'),
        ),
      ],
      physics: NeverScrollableScrollPhysics(),
    
      )
    ),
    );
      }
    
    }
    
 class pageviewWidgwt extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return new pageviewWidgwtState();
  }

 }
 class pageviewWidgwtState extends State<pageviewWidgwt>{
  @override
  Widget build(BuildContext context) {
  return ListView(
    children: <Widget>[
      CarouselSlider(
      options: CarouselOptions(height: 350.0,
      enlargeCenterPage: true,
      autoPlay: true,
      aspectRatio: 16/9,
      autoPlayCurve: Curves.fastOutSlowIn,
      enableInfiniteScroll: true,
      autoPlayAnimationDuration: Duration(milliseconds: 800),
      viewportFraction: 0.7,
      ),
      
      items: [
          Container(
          height: 450.0,width: 650.0,
       
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              
              image: AssetImage( 'img/pexels-photo-270360.jpeg',),
              alignment: Alignment.center,
              ),
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('WebSite',style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold,color: Colors.white)),
            ],
          ),
        ),
          Container(
          height: 450.0,width: 650.0,
       
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              
              image: AssetImage( 'img/istockphoto-1097495506-1024x1024.jpg',),
              alignment: Alignment.center,
              ),
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
    
              Text('Arduino',textAlign: TextAlign.end,style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold,backgroundColor: Colors.white,color: Colors.green.shade800,),),
            ],
          ),
        ),
          Container(
          height: 450.0,width: 650.0,
       
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              
              image: AssetImage( 'img/pexels-photo-177598.jpeg',),
              alignment: Alignment.center,
              ),
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('Application Developer',style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold,color: Colors.white)),
            ],
          ),
        ),
        Container(
          height: 450.0,width: 650.0,
       
          decoration: BoxDecoration(

            borderRadius: BorderRadius.circular(10.0),
            image: DecorationImage(
              fit: BoxFit.cover,
              
              image: AssetImage( 'img/pexels-photo-373543.jpeg',),
              alignment: Alignment.center,
              ),
          ),
          child: Column(
            mainAxisAlignment:MainAxisAlignment.center ,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Text('NetWorks',style: TextStyle(fontSize:25.0,fontWeight: FontWeight.bold,color: Colors.white)),
            ],
          ),
        ),
      ], 
      ),
    ],
  );
  }


 }