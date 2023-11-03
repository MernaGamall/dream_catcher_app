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
              topRight:  Radius.circular(15),
            )
          ),
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(Radius.circular(40))
          )
        ),
        child: SizedBox(
          width: double.infinity,
          height: 60,
        ),
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
