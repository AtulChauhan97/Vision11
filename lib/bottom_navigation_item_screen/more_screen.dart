import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:vision11/bottom_navigation_item_screen/all_properties_screens/fantasy_point_list.dart';
import 'package:vision11/bottom_navigation_item_screen/all_properties_screens/profile_screen.dart';
import 'package:vision11/bottom_navigation_item_screen/all_properties_screens/refer_and_earn.dart';
import 'package:vision11/bottom_navigation_item_screen/all_properties_screens/refer_list.dart';
import 'package:vision11/bottom_navigation_item_screen/all_properties_screens/verify_account.dart';
class MoreScreen extends StatefulWidget {
  const MoreScreen({Key? key}) : super(key: key);

  @override
  State<MoreScreen> createState() => _MoreScreenState();
}

class _MoreScreenState extends State<MoreScreen> {

  RxList<String> propertyOfVisio11 = [
    'Profile',
    'Refer & Earn',
    'Verify Account',
    'Fantasy Point System',
    'Refer List',
    'Privacy policy',
    'Terms & Conditions',
    'About Us',
    'How to play',
    'Responsible Play',
    'Legality',
    'Contact Us',
    'Promote App',
    'Logout'
  ].obs;
  RxList<IconData> icon = [
    Icons.person,
    Icons.money,
    Icons.verified_user_outlined,
    Icons.graphic_eq,
    Icons.blur_linear_sharp,
    Icons.policy,
    Icons.terminal_sharp,
    Icons.privacy_tip,
    Icons.near_me,
    Icons.leaderboard,
    Icons.shape_line,
    Icons.control_point,
    Icons.school_rounded,
    Icons.logout,
  ].obs;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          systemOverlayStyle: const SystemUiOverlayStyle(
            statusBarColor: Colors.black,
          ),
          backgroundColor: Colors.red.shade700,
          automaticallyImplyLeading: false,
          toolbarHeight: 52,
          title: const Text(
            'More',
            style: TextStyle(color: Colors.white,fontSize: 20,fontWeight: FontWeight.bold),
          ),
          actions: [
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.account_balance_wallet_outlined,
                  color: Colors.white,
                )),
            IconButton(
                onPressed: () {},
                icon: const Icon(
                  Icons.notifications_on_outlined,
                  color: Colors.white,
                )),
          ],
        ),
        body: ListView.builder(
          itemCount: propertyOfVisio11.length,
            itemBuilder: (BuildContext context, int index) {
          return Column(
            children: [
              Obx(() => ListTile(
                onTap: (){

                  switch(index){
                    case 0:{
                      Get.to(const ProfileScreen());
                    }
                    break;
                    case 1:{
                      Get.to(const ReferAndEarn());
                    }
                    break;
                    case 2:{
                      Get.to(const VerifyAccount());
                    }
                    break;
                    case 3:{
                      Get.to(const FantasyPoint());
                    }
                    break;
                    case 4:{
                      Get.to(const ReferScreen());
                    }
                  }
                },
                title: Text(propertyOfVisio11[index],style: const TextStyle(color: Colors.black,fontWeight: FontWeight.bold),),
                leading: Container(
                  height: 30,
                  width: 30,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Icon(icon[index],color: Colors.white,),
                ),
                trailing: const Icon(Icons.arrow_forward_ios,color: Colors.black,size: 16,),
              )),
              const Divider(height: 2,)
            ],
          );
        }));
  }
}
