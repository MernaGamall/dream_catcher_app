import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      bottomNavigationBar: BottomAppBar(


        notchMargin: 7,
        color: Colors.white,
        clipBehavior: Clip.antiAlias,
        shape: AutomaticNotchedShape(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(50),
              topRight:  Radius.circular(50),
              bottomLeft: Radius.circular(50),
              bottomRight: Radius.circular(50),
            )
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
          )
        ),
        child: Row(
          children: [
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Search',
              icon: const Icon(Icons.event_note),
              onPressed: () {},
            ),
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.note_alt_outlined),
              onPressed: () {},
            ),
          Expanded(child: SizedBox()),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.home),
              onPressed: () {},
            ),
            SizedBox(width: 20,),
            IconButton(
              tooltip: 'Favorite',
              icon: const Icon(Icons.ondemand_video_outlined),
              onPressed: () {},
            ),
            SizedBox(width: 20,),
          ],
        )

      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(40)),

        ),
        onPressed: (){},
        child: Icon(Icons.add),
      ),
    );
  }
}
