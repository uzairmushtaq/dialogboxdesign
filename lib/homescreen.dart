import 'package:flutter/material.dart';
class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dialog Box Design"),),
      body: Column(
        children: [
          SizedBox(
            height: 200,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.send),
                     
              ),
              onTap: (){
                  showDialog(context: context, builder: (context){
                    return simpleDialogBox();
                  });
              },
            ),
           
            
          ),
           Padding(
            padding: const EdgeInsets.only(left: 10),
            child: InkWell(
              child: Container(
                        height: 100,
                        width: 100,
                        decoration: BoxDecoration(
                        color: Colors.amber,
                        borderRadius: BorderRadius.circular(10)
                        ),
                        child: Icon(Icons.send),
                     
              ),
              onTap: (){
                  showDialog(context: context, builder: (context){
                    return alertDialogBox();
                  });
              },
            ),
           
            
          ),
        ],
      ),
    );
  }
}

Widget simpleDialogBox()   // function crete Dialogbox
{
  return Dialog(
    child: Container(
      width: 300,
      height: 400,
      
      ),
       backgroundColor: Colors.amberAccent,
       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10))),
       alignment: Alignment.bottomCenter,
    );

  
}
Widget alertDialogBox()
{
  return AlertDialog(
    title: Text("Exit the App", textAlign: TextAlign.center,),
    icon: Icon(Icons.exit_to_app, size: 50,),
    actions: [
      TextButton(onPressed: (){}, child: Text("Yes")),
       TextButton(onPressed: (){}, child: Text("No")),
    ],
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(10))
    ),
  );
}