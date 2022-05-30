import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../theme/app_colors.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          alignment: Alignment.topRight,
          children: [
            Container(
              height: 250,
              width: MediaQuery.of(context).size.width*0.45,
              decoration: const BoxDecoration(
                color: AppColors.grey1,
                borderRadius: BorderRadius.all(Radius.circular(10.0)),
              ),
              child: ClipRRect(
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                  child: Image.network('https://images.lojanike.com.br/1024x1024/produto/tenis-air-jordan-1-mid-554724-411-1-11628865989.jpg',fit: BoxFit.fitHeight,)),
            ),
            Padding(
              padding: const EdgeInsets.all(10.0),
              child: GestureDetector(
                onTap: (){

                },
                child: const CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Center(
                    child: Icon(
                        Icons.favorite_border,
                        color: AppColors.black),
                  ),
                ),
              ),
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text('Air Jordan 1 Mid',
            style: GoogleFonts.didactGothic(
              fontSize: 16
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Text('\$120',
            style: GoogleFonts.didactGothic(
              fontSize: 16,
              fontWeight: FontWeight.bold
            ),
          ),
        ),
      ],
    );
  }
}
