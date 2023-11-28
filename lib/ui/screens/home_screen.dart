import 'package:baiust/ui/utils/utils.dart';
import 'package:flutter/material.dart';

import '../widgets/home/home_carousal_widget.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Image.asset(baiustLogo,scale: 3,),
        elevation: 10,
        title: const Text('BAIUST'),
        automaticallyImplyLeading: false,
        centerTitle: true,
        actions: [
          Builder(
              builder: (context) {
                return IconButton(
                  onPressed: (){
                    Scaffold.of(context).openEndDrawer();
                  },
                  icon: const Icon(Icons.menu_sharp,color: Colors.black,),
                );
              }
          ),
        ],
      ),
      endDrawer: Drawer(
        backgroundColor: primaryColor.withOpacity(0.22),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 5,
            ),
            HomeCaruosalWidget(),
            const SizedBox(height: 10,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child:  Card(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(topLeft: Radius.circular(15.0),topRight: Radius.circular(15.0),bottomLeft: Radius.circular(15.0))
                ),
                color: primaryColor.withOpacity(0.7),
                child: Padding(
                  padding: const EdgeInsets.only(top: 8,bottom: 8,left: 8,right: 30),
                  child: Text('Notice',style: Theme.of(context).textTheme.titleSmall,),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
