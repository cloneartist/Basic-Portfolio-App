import 'package:flutter/material.dart';


class Profile extends StatefulWidget {
  const Profile({ Key? key }) : super(key: key);

  @override
  _ProfileState createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {

     double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return SafeArea(
      child: SingleChildScrollView(
        child: Material(
          child: Container(
           color: Colors.grey[900],
            // backgroundColor: Colors.grey[900],
            child: Padding(
              padding: EdgeInsets.fromLTRB(20, 60, 20, 0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Center(
                    child: CircleAvatar(
                      backgroundImage:NetworkImage('https://www.pandasecurity.com/en/mediacenter/src/uploads/2019/07/pandasecurity-How-do-hackers-pick-their-targets.jpg') ,
                      radius: 80.0,
                
                    ),
                  ),
                  Divider(
                    height: height*.012,
                    color: Colors.grey[800],
                  ),
                                  Text(
                    'Adith P. Anandhan',
                    style: TextStyle(
                      color: Colors.white,
                      letterSpacing: 2.0,
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Flutter Developer',
                    style: TextStyle(
                      color: Colors.amber[800],
                      letterSpacing: 2.0,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
             
                   Divider(
                    height: height*.03,
                    color: Colors.grey[800],
                  ),
                  Row(
                
                    children: <Widget>[
              
                      SizedBox(width: 10),
                      Expanded(
                        child: Text(
                          'Hi, I am Adith, Currently Second year student at Christ College of Engineering,Irinjalakuda. I am intersted in App development and cybersecurity.',
                          style: TextStyle(
                          color: Colors.grey[400],
                          letterSpacing: 1,
                          fontSize: 15,
                          ),
                        ),
                      ),
                    
                    ],
                  ),
                SizedBox(height: 20,),
                
                  Align(
                    alignment: Alignment.centerRight,
                    child: RaisedButton(
                    shape: StadiumBorder(),
                    child: Text("Contact"),
                    color:  Colors.amber[800],
                    onPressed: () {
                 
                    },
                    padding: EdgeInsets.all(10),
                                ),
                  ),
                  SizedBox(height: 20,),
                       SingleChildScrollView (
                    scrollDirection: Axis.horizontal,
                    physics: BouncingScrollPhysics(),
                    child: Row(
               children: [
                boxbuild("About me", context),
                boxbuild("Social Media",context),
                boxbuild( "Hobbies",context),
                boxbuild("Experience",context),
              
               ],
                     ),
                   ),
               
               
                ],
                
              ),
            ),
            
          ),
        ),
      ),
    );
  }
}


 GestureDetector boxbuild(String name, BuildContext context) {
    return GestureDetector(
      onTap: (){
              //  Navigator.of(context).push(MaterialPageRoute(builder: (context){
              //    return DetailPages(img: img,title: title,context: context,price: price,);

              //  }
              //  )
              //  );
             },
          child: Padding(
            padding: const EdgeInsets.all(4.0),
            child: Column(
                                       children: [
                                         
                                         Container(
                                           decoration: BoxDecoration(
                                             color: Colors.amber[800],
                                                  borderRadius: BorderRadius.circular(20.0),
                                                  // border: Border.all(
                                                  //   color: Colors.white,
                                                  //   width: 3.0
                                                  // )
                                                ),
                                          //  color: Colors.white,
                                           height: 170,
                                           width: 170,
                                           child :Center(child: Text("$name",style: TextStyle(fontSize: 25),))
                                           
                                          //  ClipRRect(
                                          //    borderRadius:BorderRadius.circular(25),
                                          //    child: Image.asset(img),
                                          //    ),

                                          ),
                                          SizedBox(height:10,),
                                          // Text("hi",style: TextStyle(color: Colors.white),),
                                          // Text("hi",style: TextStyle(color: Colors.white),),
                                       ],
                                     ),
      ),
    );
  }