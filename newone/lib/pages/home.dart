import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';


class HomePage extends StatelessWidget{
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:const Text('Hellow world'),
        centerTitle: true,
        elevation: 4,

      ),
     body: Column(

      children: [
        const Align(
          alignment: Alignment.topCenter,
          child: Padding(
            padding: EdgeInsets.only(top: 10),
            child: Text(
              "Mendis Group",
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
        ),
       CarouselSlider(
        items: [
          Image.asset("assets/R(1).jpg"),
          Image.asset("assets/R(2).jpg"),
          Image.asset("assets/R.jpg"),
        ], 
        options: CarouselOptions(
          height: 200,
          aspectRatio: 16/9,
          viewportFraction: 0.8,
          initialPage: 0,
          enableInfiniteScroll: true,
          reverse: false,
          autoPlay: true,
          autoPlayInterval: const Duration(seconds: 3),
          autoPlayAnimationDuration: const Duration(milliseconds: 800),
          autoPlayCurve: Curves.fastOutSlowIn,
          enlargeCenterPage: true,
          scrollDirection: Axis.horizontal,

          
        ),
       ),
       Image.asset("assets/R(1).jpg"),
          ElevatedButton(
            style: TextButton.styleFrom(
              foregroundColor: const Color.fromARGB(255, 0, 0, 0), 
              backgroundColor: Colors.green[200],
            ),
            onPressed: () {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(
                  content: Text('Button pressed!'),
                ),
              );
            },
            child: const Text('Button'),
          )
        
      ],
     )


      
    );
  }

}

