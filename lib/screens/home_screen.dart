import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vision11/bottom_navigation_item_screen/more_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  RxInt changedValue = 0.obs;

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 6,
      child: Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
          ),
          automaticallyImplyLeading: false,
          backgroundColor: Colors.red.shade700,
          toolbarHeight: 48,
          titleSpacing: 0,
          leading: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.asset('assets/Vision11.png'),
          ),
          title: const Column(children: [ Text(
            'VISION11',
            style: TextStyle(color: Colors.white,fontWeight: FontWeight.w900,fontSize: 20),
          ),Text('SAPNO KA VISION',style: TextStyle(color: Colors.white,fontSize: 10),)],),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                ))
          ],
          bottom: PreferredSize(preferredSize: const Size.fromHeight(55),child: Material(color: Colors.white,child:TabBar(
            isScrollable: true,
            indicatorColor: Colors.red.shade700,
            labelColor: Colors.red.shade700,
            splashBorderRadius: BorderRadius.zero,
            tabs: const [
              Tab(child: Text('Cricket'),),
              Tab(child: Text('Football'),),
              Tab(child: Text('Basketball'),),
              Tab(child: Text('kabaddi'),),
              Tab(child: Text('Baseball'),),
              Tab(child: Text('Hockey'),),
            ],
          ) ,),)
        ),
        bottomNavigationBar: Obx(() => BottomNavigationBar(
          unselectedItemColor: Colors.grey.shade700,
          selectedItemColor: Colors.red.shade700,
          backgroundColor: Colors.yellow,
          onTap: (value){
            changedValue.value = value;
            if(changedValue.value==3){
              Get.to(MoreScreen());
            }
          },
          currentIndex: changedValue.value,
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.control_point), label: 'My Contest'),
            BottomNavigationBarItem(icon: Icon(Icons.person), label: 'My Profile'),
            BottomNavigationBarItem(icon: Icon(Icons.more_horiz), label: 'More'),
          ],
        ),)
      ),
    );
  }
}
