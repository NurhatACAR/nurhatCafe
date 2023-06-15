import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:meyve_kokteyli/util/kokteyl.dart';
import 'package:meyve_kokteyli/util/kokteyl_tipi.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 final List kokteylTipi = [
  [
    'Mojito',
    true,
    ],
    [
      'Frozen',
      false,
    ],
    [
      'Buzlu Kokteyl',
      false,
    ],
    [
      'Meyve Parçacıklı',
      false,
    ]


 ];
 
  void kokteylTipiSecilirse(int index){
    setState(() {
      for (int i = 0; i < kokteylTipi.length; i++) {
        kokteylTipi[i][1] = false;
      }
      kokteylTipi[index][1] = true;
    });

  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Icon(Icons.menu),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 20.0),
            child: Icon(Icons.person),
            ),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        items:[
          BottomNavigationBarItem(icon: 
          Icon(Icons.home),
          label: '',
          ),
          BottomNavigationBarItem(icon: 
          Icon(Icons.favorite),
          label: '',
          ),
          BottomNavigationBarItem(icon: 
          Icon(Icons.notifications),
          label: '',
          )
        ] 
        ),
        body: Column(
          children: 
          [
            Padding(
              padding:const EdgeInsets.symmetric(horizontal: 25.0),
              child: Text(
                "En İyi Kokteyl Çeşitleri",
                style: GoogleFonts.bebasNeue(
                  fontSize: 60,
                ),
                ),
              ),
              SizedBox(height: 25,),

              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 25.0),
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Kokteyl Arayınız.',
                    focusedBorder: OutlineInputBorder(),
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey.shade600)
                    ),
                  ),
                ),
              ),

              SizedBox(height: 25,),

              Container(
                height: 50,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: kokteylTipi.length,
                  itemBuilder: (context,index) {
                  return KokteylTipi(
                    kokteylTipi:kokteylTipi[index][0],
                    isSelected: kokteylTipi[index][1],
                    onTap: () {
                      kokteylTipiSecilirse(index);
                    },
                    );
                },
                ),
              ),

              Expanded(
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                  Kokteyl(
                    kokteylFotograf: 'lib/images/1.jpg',
                    kokteylIsim: 'Meyveli kokteyl',
                    kokteylFiyat: '35',
                  ),
                  Kokteyl(
                    kokteylFotograf: 'lib/images/2.jpg',
                    kokteylIsim: 'Buzlu Kokteyl',
                    kokteylFiyat: '35',
                  ),
                  Kokteyl(
                    kokteylFotograf: 'lib/images/3.jpg',
                    kokteylIsim: 'Mojito',
                    kokteylFiyat: '35',
                  ),
                  
                ],),),
            

        ],),
    );
  }
}