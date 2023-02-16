import 'package:flutter/material.dart';

class Account extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Align(
              alignment: AlignmentDirectional.center,
              child: Stack(
                alignment: AlignmentDirectional.bottomEnd,
                children : [
                CircleAvatar(
                  radius: 65,
                  backgroundImage: NetworkImage(
                    "https://3.bp.blogspot.com/-_oofQiLjaI8/W2mouhPZXkI/AAAAAAABXj0/mRiOedr1bFUIi5MLZfglp53i1cEydHy7QCLcBGAs/s1600/13.jpg.4cbe499c45618f176d5aea2b8d599da2.jpg",
                  ),
                ),
                  IconButton(onPressed: (){}, icon: Icon(Icons.camera_alt,size: 40,color: Colors.blue,))
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: "Ahmed Mohamed",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black
                  ),
                ),
              ),
              leading: Icon(
                Icons.account_circle_outlined,
                color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("edit_name");
                },
                  icon: Icon(Icons.edit,color: Colors.blue,),
              ),
            ),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: "ahmed@gmail.com",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              leading: Icon(
                Icons.email_outlined,
                color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("edit_email");
                },
                icon: Icon(Icons.edit,color: Colors.blue,),
              ),
            ),
            ListTile(
              title: RichText(
                text: TextSpan(
                  text: "01020304102",
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: Colors.black),
                ),
              ),
              leading: Icon(
                Icons.phone,
                color: Colors.black,
              ),
              horizontalTitleGap: 0,
              trailing: IconButton(
                onPressed: (){
                  Navigator.of(context).pushNamed("edit_phone");
                },
                icon: Icon(Icons.edit,color: Colors.blue,),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
