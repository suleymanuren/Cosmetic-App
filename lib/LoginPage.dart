import 'package:flutter/material.dart';
import 'package:kozmetik/Kozmetik.dart';

class GirisSayfasi extends StatelessWidget {
  const GirisSayfasi({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(

        image: DecorationImage(
          colorFilter: new ColorFilter.mode(Colors.black.withOpacity(0.5), BlendMode.dstATop),
            fit: BoxFit.cover,
          image: AssetImage(
              "assets/images/lipstick-1172661_1280.png"
          ),

        ),
      ),
      child: Container(
        height: 200,
        width: 200,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                    "assets/images/NoPath_-_Kopya_4.png",
                ),
            )
        ),
        child: Padding(
          padding: const EdgeInsets.only(top: 450),
          child: Column(
            children: [
              Container(
                  child: SizedBox(
                    width: 275.0,
                    height: 55.0,
                    child: ElevatedButton(
                        child: Text("Giriş Yap", style: TextStyle(fontSize: 30,color: Colors.black.withOpacity(0.7)
                        ),
                        ),
                        onPressed: (){
                          debugPrint("Butona tıklandı");
                          Navigator.of(context).push(MaterialPageRoute(builder: (context) => Kozmetik()));
                        },
                        style: ElevatedButton.styleFrom(
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(13),
                            // <-- Radius
                          ),
                          primary: Colors.pink.shade200,
                        )
                    ),
                  )
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Container(
                    child: SizedBox(
                      width: 275.0,
                      height: 55.0,
                      child: ElevatedButton(
                          child: Text("Üye Ol", style: TextStyle(fontSize: 30,color: Colors.black.withOpacity(0.8)
                          ),
                          ),
                          onPressed: (){
                            debugPrint("Butona tıklandı");
                          },
                          style: ElevatedButton.styleFrom(
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(13),
                              // <-- Radius
                            ),
                            primary: Colors.pink.shade50.withOpacity(0.9),
                          )
                      ),
                    )
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
