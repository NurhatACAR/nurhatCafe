import 'package:flutter/material.dart';

class Kokteyl extends StatelessWidget {
final String kokteylFotograf;
final String kokteylIsim;
final String kokteylFiyat;

Kokteyl({
  required this.kokteylFotograf,
  required this.kokteylIsim,
  required this.kokteylFiyat,
});
  @override
  Widget build(BuildContext context) {
    return Padding(
                    padding: const EdgeInsets.only(left: 25.0,bottom: 25),
                    child: Container(
                      padding: EdgeInsets.all(12),
                      width: 200,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(12),
                      color: Colors.black54,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(12),
                            child: Image.asset(kokteylFotograf)),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical:12.0, horizontal: 8.0),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                   Text(kokteylIsim,style: TextStyle(fontSize: 20),),
                                  const SizedBox(height: 4,),
                                   Text('Alkolsüz Kokteyl',style: TextStyle(color: Colors.grey[700]),),
                                ],
                              ),
                            ),

                            Padding(
                              padding: const EdgeInsets.symmetric(horizontal: 10.0),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('\₺' + kokteylFiyat),
                                  Container(
                                    padding: EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                      color: Colors.orange,
                                      borderRadius: BorderRadius.circular(6)
                                    ),
                                    child: Icon(Icons.add),
                                  ),
                                ],
                              ),
                              )
                        ],
                      ),
                    ),
                    
                  );
  }
} 