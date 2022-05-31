import 'package:smooth_star_rating_nsafe/smooth_star_rating.dart';
import 'package:like_button/like_button.dart';


import 'package:flutter/material.dart';
double rating = 0.0;
int adet = 0;
int like = 0;


class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body:
      Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,

        child: Column(

          children: [
            Container(


                child: Stack(
                  alignment: AlignmentDirectional.topCenter,
                  fit: StackFit.loose,
                  children: <Widget>[
                    Container(
                      height:435.4,


                      decoration: BoxDecoration(

                          image: DecorationImage(image: AssetImage("assets/images/istockphoto-1309395759-612x612@2x.png"),fit: BoxFit.cover),

                      ),
                    ),
                    Positioned(
                      height:40,
                      left: 0,
                      top: 35,
                      child: Image.asset("assets/images/NoPath_-_Kopya_4.png"),
                    ),
                    Positioned(
                      right: 5,
                      top: 35,
                    child: LikeButton(
                        size: 25,
                        likeCount: like,
                        likeCountPadding: const EdgeInsets.all(4.0),
                        likeBuilder: (bool like) {

                    return Icon(
                    Icons.heart_broken,
                    color: Colors.red,

                    );
                    },
                    ),
                    /*child:TextButton.icon(
                      icon: Icon(Icons.heart_broken,color: Colors.red),

                      label: Text(''),
                      onPressed: (){
                        debugPrint("Butona tıklandı");

                      },
                    ),
                      */
                    )
                  ],
                ),
              /*decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/images/istockphoto-1309395759-612x612@2x.png",
              ),
                fit: BoxFit.cover,),
              ),
              */

            ),

            Column(
children: [


                    Padding(
                      padding: const EdgeInsets.only(right: 60),
                      child: Text("Shiseido Synchro Skin Radiant Lifting \nSPF Foundation 30ml",style: TextStyle(fontSize: 17,fontWeight: FontWeight.bold,color: Colors.brown.shade200),textAlign: TextAlign.left,),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(right: 205),
                      child: Text("Ürün Numarası:FLS1587",style: TextStyle(fontSize: 13,fontWeight: FontWeight.bold,color: Colors.brown.shade100),textAlign: TextAlign.left,),
                    ),

                    Padding(
    padding: const EdgeInsets.only(right: 250,top: 0),
                              child: SmoothStarRating(

        allowHalfRating: true,
        onRatingChanged: (v) {
          setState(() {
            rating = v;

          });
        },

        starCount: 5,
        rating: rating,
        size: 17.0,



        color: Colors.orange,
        borderColor: Colors.orange,
        spacing:3.0,

    ),

  ),
                    Padding(
    padding: const EdgeInsets.only(right: 230,bottom: 2),
    child: Text("Ürün Açıklaması",style: TextStyle(fontSize: 16,fontWeight: FontWeight.bold,color: Colors.brown.shade300),textAlign: TextAlign.left,),
  ),
                     Column(children: [

    Text("• Koyu lekeler,renk eşitsizliğine karşı etkilidir"),
    Text("• 24 saat nem sunar",textAlign: TextAlign.left,),
    Text("• SPF30 güneş korumasına sahiptir"),
    Text("• Yoğun kapatıcılık sağlar"),],




  ),
  Padding(

    padding: const EdgeInsets.only(right: 288.0,left: 35.0,top: 0),
    child: Container(

      padding: EdgeInsets.all(4),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          color: Colors.brown.shade200),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5.0),
            child: InkWell(
                onTap: () {
                  setState(() {

                    adet--;


                  });
                },
                child: Icon(
                  Icons.remove,
                  color: Colors.white,
                  size: 16,
                )),
          ),
          Container(

            margin: EdgeInsets.symmetric(horizontal:3),
            padding:
            EdgeInsets.symmetric(horizontal: 4, vertical: 3),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(3),
                color: Colors.white),
            child: Text(
              '$adet',
              style: TextStyle(color: Colors.black, fontSize: 16,),
            ),
          ),

          InkWell(
              onTap: () {
                setState(() {
adet++;
                });
              },
              child: Icon(
                Icons.add,
                color: Colors.white,
                size: 16,
              )),
        ],
      ),

    ),

  ),
  Padding(
    padding: const EdgeInsets.only(bottom: 10),
    child: ElevatedButton(


        child: Text("Satın Al", style: TextStyle(color: Colors.white.withOpacity(0.7),fontSize: 22
        ),
        ),

        onPressed: (){
          debugPrint("Butona tıklandı");
          AlertDialog(
              title: Text('Sepete Eklendi'),
          );
          },
        style: ElevatedButton.styleFrom(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(7),
            // <-- Radius
          ),
          primary: Colors.red.shade400,
        )



    ),
  )



                    ],
            ),
          ],
        ),

    ),



    );

  }
}
Column buildColumn3(String baslik,urunNo,urunAciklama) {
  return Column(
      children: [
        Text(baslik,style: TextStyle(decoration: TextDecoration.underline,color:Colors.blueAccent.withOpacity(0.7),fontSize: 18),),
        Text(urunNo,style: TextStyle(decoration: TextDecoration.underline,color:Colors.blueAccent.withOpacity(0.7),fontSize: 18),),
        Text(urunAciklama,style: TextStyle(decoration: TextDecoration.underline,color:Colors.blueAccent.withOpacity(0.7),fontSize: 18),),
      ]
  );
}


