import 'package:flutter/material.dart';

import '../utils/utils.dart';

class BaiustAppBar extends StatelessWidget {
  const BaiustAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
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
    );
  }
}