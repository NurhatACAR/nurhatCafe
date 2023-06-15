import 'package:flutter/material.dart';

class KokteylTipi extends StatelessWidget {
final String kokteylTipi;
final bool isSelected;
final VoidCallback onTap;
KokteylTipi({required this.kokteylTipi, required this.isSelected, required this.onTap});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(left: 25.0),
        child: Text(
          kokteylTipi,
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color:isSelected? Colors.orange:Colors.white,
          ),
          ),
      ),
    );
  }
}