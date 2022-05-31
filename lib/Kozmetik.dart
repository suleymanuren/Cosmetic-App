import 'dart:ui';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/tap_bounce_container.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:flutter/material.dart';
import 'package:kozmetik/DetailPage.dart';
import 'LoginPage.dart';

class Kozmetik extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  static const snackBar = SnackBar(
    content: Text('Ürün Sepete Eklendi'),
  );
   Kozmetik({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Column buildColumn(String img,yazi,baslik) {
      return Column(
          children: [
            SizedBox(height: 30,),
            Text(baslik,style: TextStyle(decoration: TextDecoration.underline,color:Colors.blueAccent.withOpacity(0.7),fontSize: 18),),
            SizedBox(height: 15,),
            Container(
              height: 140,
              width: 140,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(img),),
              ),
            ),

            OutlinedButton(
              onPressed: () {},
              style: ButtonStyle(
                shape: MaterialStateProperty.all(RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0))),
              ),

              child: Text(yazi,style: TextStyle(color: Colors.blueAccent.withOpacity(0.7),fontWeight: FontWeight.bold)
              ),
            )
          ]
      );
    }
    Column buildColumn2(String img,aciklama,fiyat) {
      return Column(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(.0,0.0,20.0,0.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [

                  Padding(

                    padding: const EdgeInsets.symmetric(vertical:4, horizontal: 25),

                    child: Column(

                      children: [
                        GestureDetector(
                            child: InkWell(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        DetailPage(),
                                  ),
                                );
                              },// Image tapped
                              splashColor: Colors.white10, // Splash color over image
                              child: Ink.image(
                                fit: BoxFit.cover, // Fixes border issues
                                width: 60,
                                height: 60,

                                image: AssetImage(
                                  img,

                                ),
                              ),
                            )


                        )],
                    ),

                  ),

                  Padding(
                    padding: const EdgeInsets.fromLTRB(.0,0.0,128.0,0.0),
                    child: Column(
                      children: [
                        Text(aciklama),
                        ElevatedButton(


                            child: Text("Sepete Ekle", style: TextStyle(color: Colors.black.withOpacity(0.7),fontWeight: FontWeight.bold,
                            ),
                            ),

                            onPressed: (){
                              debugPrint("Butona tıklandı");

                              showTopSnackBar(
                                context,
                                CustomSnackBar.success(
                                  message:
                                  "Ürün Sepete Eklendi!!",
                                ),
                              );

                            },
                            style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10),
                                // <-- Radius
                              ),
                              primary: Colors.purple.shade200,
                            )



                        )
                      ],
                    ),
                  ),

                  Text(fiyat,textAlign: TextAlign.left,),

                ],


              ),
            ),



          ]
      );
    }
    return Scaffold(

      key: _scaffoldKey,
      drawer: SizedBox(
        width: MediaQuery.of(context).size.width * 0.4,
        child: Drawer(

          backgroundColor: Colors.red.shade100,
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.only(topRight:Radius.circular(20),bottomRight: Radius.circular(20))
          ),
          child: ListView(
            padding: EdgeInsets.zero,
            children: [

              const DrawerHeader(

                child: Text("Menü",textAlign: TextAlign.center,style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold)),
              ),
              TextButton.icon(
                icon: Icon(Icons.logout,color: Colors.black,),
                label: Text('Çıkış Yap',textAlign: TextAlign.center,style: TextStyle(fontSize: 15,fontWeight: FontWeight.bold,color: Colors.black)),
                onPressed: (){

                  debugPrint("Butona tıklandı");
                  Navigator.of(context).push(MaterialPageRoute(builder: (context) => GirisSayfasi()));
                },
              ),

            ],
          ),
        ),
      ),

      appBar: AppBar(

        centerTitle: true,
        elevation: 0,
        leading: new IconButton(
          icon: new Icon(Icons.menu),

          onPressed: () => _scaffoldKey.currentState?.openDrawer(),
        ),
        title: Image.asset("assets/images/NoPath_-_Kopya_4.png",
          fit: BoxFit.cover,
          height: MediaQuery.of(context).size.height*.06,
          width: MediaQuery.of(context).size.width*.50,
        ),
        backgroundColor: Colors.red.shade100,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.vertical(bottom: Radius.circular(25))
        ),
        actions: <Widget>[

      GestureDetector(
      onTap: () {
print("butona tıklandı");
//Navigator.push(context, MaterialPageRoute(builder: (context) => KULLANICI PROFILE YONLENDİRME(),),);
      },
          child: Container(
              height: MediaQuery.of(context).size.height*.1,
              width: MediaQuery.of(context).size.width*.1,
            decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/icons8-female-profile-48.png"),),)
          ),
      ),
],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),

        child: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,

          backgroundColor: Colors.red.shade100,
          selectedItemColor: Colors.grey,

          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(

              icon: Icon(Icons.home),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite_border),
              label: '',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_cart),
              label: '',
            ),
          ],

        ),

      ),
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(height: 40,),
              Container(
                //margin:  EdgeInsets.all(70.0),
                height: 50.0,
                width: 250.0,
                decoration: BoxDecoration(
                  color: Colors.grey.shade50,
                  borderRadius:  BorderRadius.circular(14),
                ),
                child: TextField(
                  decoration: InputDecoration(
                    border:  OutlineInputBorder(
                        borderRadius:  BorderRadius.circular(14),
                        borderSide:  BorderSide(color: Colors.red)
                    ),
                    focusedBorder:OutlineInputBorder(
                      borderSide:  BorderSide(color: Colors.red.shade50, width: 1.5),
                      borderRadius: BorderRadius.circular(14),
                    ),
                    hintStyle: TextStyle(fontSize: 15),
                    hintText: 'Search your trips',
                    prefixIcon: Icon(Icons.search,color: Colors.red.shade100,),
                    contentPadding: EdgeInsets.all(20),
                  ),
                ),
              ),
              SizedBox(
                height: 260,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    physics: NeverScrollableScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                  children: [
                    buildColumn("assets/images/1.png","Makyaj","Kategori",),
                    buildColumn("assets/images/2.png","Cilt Bakımı",""),
                    buildColumn("assets/images/1.png","Cilt Temizliği",""),
                  ]
                ),
              ),
              SizedBox(
                height: 197.4,
                width: MediaQuery.of(context).size.width,
                child: ListView(
                    children: [
                      Padding(
                        padding: EdgeInsets.fromLTRB(0.0, 0.0, 17.0, 0.0),
                        child: Text("Hepsini Gör",style: TextStyle(color:Colors.grey.withOpacity(0.7),fontSize: 13),textAlign: TextAlign.end),
                      ),
                      Padding(
                padding: EdgeInsets.fromLTRB(25.0, 0.0, 55.0, 10.0),
                        child: Text("En Çok Tercih Edilenler",style: TextStyle(decoration: TextDecoration.underline,color:Colors.blueAccent.shade100.withOpacity(0.7),fontSize: 18),textAlign: TextAlign.start,),
                      ),
                      buildColumn2("assets/images/n_13rYVWdxL_AC_SY1000_.png","Harika bir ürün","50\$"),
                      buildColumn2("assets/images/cosmetics-1063134_1920.png","Harika bir ürün","50\$"),
                      buildColumn2("assets/images/Garnier_ift_Fazl_Micellar_Kusu.png","Harika bir ürün","50\$"),
                    ]
                ),
              ),
            ],
          ),
        ),
      ),

    );

  }


}



