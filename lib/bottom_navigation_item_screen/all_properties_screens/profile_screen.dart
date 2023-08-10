import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:vision11/bottom_navigation_item_screen/all_properties_screens/profile_detailes/change_password.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  RxString gender = "Male".obs;
  DateTime? getDate;
  String? selectState;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      appBar: AppBar(
        titleSpacing: 0,
        backgroundColor: Colors.grey.shade100,
        title: const Text(
          'Update Profile',
          style: TextStyle(color: Colors.black, fontSize: 20),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(left: 16.0, right: 16, top: 1),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'Name',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              nameTextArea(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'Team Name',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              teamNameArea(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'Email',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              emailArea(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'Mobile',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              mobileArea(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'Change Password',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              password(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 0),
                child: Text(
                  'Gender',
                  style: TextStyle(fontSize: 16, fontWeight: FontWeight.w400),
                ),
              ),
              Row(
                children: [
                  Obx(
                    () => Expanded(
                      child: RadioListTile(
                          activeColor: Colors.black,
                          title: const Text(
                            'Male',
                            style: TextStyle(fontSize: 12),
                          ),
                          value: "Male",
                          groupValue: gender.value,
                          onChanged: (value) {
                            gender.value = value.toString();
                          }),
                    ),
                  ),
                  Obx(() => Expanded(
                        child: RadioListTile(
                            activeColor: Colors.black,
                            title: const Text(
                              'Female',
                              style: TextStyle(fontSize: 12),
                            ),
                            value: "Female",
                            groupValue: gender.value,
                            onChanged: (value) {
                              gender.value = value.toString();
                            }),
                      ))
                ],
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'Date of Birth',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              InkWell(
                onTap: () {
                  birthDatePicker();
                },
                child: Container(
                  alignment: Alignment.centerLeft,
                  height: 40,
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(4),
                    border: Border.all(color: Colors.grey.shade300, width: 1),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 8.0),
                    child: Text(
                      getDate != null
                          ? "${getDate!.day}/${getDate!.month}/${getDate!.year}"
                          : "select birth",
                      style:
                          TextStyle(fontSize: 18, color: Colors.grey.shade700),
                    ),
                  ),
                ),
              ),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'City',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              city(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'Pin',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              pin(),
              const Padding(
                padding: EdgeInsets.only(top: 8.0, bottom: 8),
                child: Text(
                  'State',
                  style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                ),
              ),
              stateName(),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 20),
                child: SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.green,
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(8))),
                        onPressed: () {},
                        child: const Text(
                          'Update Profile',
                          style: TextStyle(color: Colors.white),
                        ))),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget nameTextArea() {
    return SizedBox(
      height: 40,
      child: TextField(
        style: const TextStyle(fontSize: 14),
        textInputAction: TextInputAction.next,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: 'Name',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
        ),
      ),
    );
  }

  Widget teamNameArea() {
    return SizedBox(
      height: 40,
      child: TextField(
        style: const TextStyle(fontSize: 14),
        textInputAction: TextInputAction.next,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: 'Team Name',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
        ),
      ),
    );
  }

  Widget emailArea() {
    return SizedBox(
      height: 40,
      child: TextField(
        style: const TextStyle(fontSize: 14),
        textInputAction: TextInputAction.next,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: 'Email',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
        ),
      ),
    );
  }

  Widget mobileArea() {
    return SizedBox(
      height: 40,
      child: TextField(
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.next,
        style: const TextStyle(fontSize: 14),
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: 'Mobile',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
        ),
      ),
    );
  }

  Widget password() {
    return Container(
      height: 40,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(4),
        border: Border.all(color: Colors.grey.shade300, width: 1),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
           Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text("**********",style: TextStyle(color: Colors.grey.shade700),),
          ),
          TextButton(onPressed: (){
            Get.to(const ChangePassword());
          }, child: Text('change password',style: TextStyle(color: Colors.grey.shade700),))
        ],
      ),
    );
  }

  void birthDatePicker() async {
    DateTime? pickedDate = await showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2000),
        lastDate: DateTime(2030));
    if (pickedDate != null) {
      getDate = pickedDate;
      setState(() {});
    }
  }

  Widget city() {
    return SizedBox(
      height: 40,
      child: TextField(
        style: const TextStyle(fontSize: 14),
        textInputAction: TextInputAction.next,
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: 'City',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
        ),
      ),
    );
  }

  Widget pin() {
    return SizedBox(
      height: 40,
      child: TextField(
        keyboardType: TextInputType.number,
        textInputAction: TextInputAction.done,
        style: const TextStyle(fontSize: 14),
        cursorColor: Colors.blue,
        decoration: InputDecoration(
          contentPadding:
              const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          hintText: 'Pin',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(4),
              borderSide: const BorderSide(color: Colors.white)),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
          ),
        ),
      ),
    );
  }

  Widget stateName() {
    return DropdownButtonFormField<String>(
      style: TextStyle(color: Colors.grey.shade700, fontSize: 17),
      isExpanded: true,
      hint: const Text('state'),
      value: selectState,
      icon: const Icon(Icons.arrow_drop_down_outlined),
      decoration: InputDecoration(
          contentPadding: const EdgeInsets.all(10),
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
          enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300)),
          focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(color: Colors.grey.shade300))),
      onChanged: (String? value) {
        selectState = value!;
        setState(() {});
      },
      items: const [
        DropdownMenuItem(
            value: "Andaman & Nicobar Islands",
            child: Text('Andaman & Nicobar Islands')),
        DropdownMenuItem(
            value: "Arunachal Pradesh", child: Text('Arunachal Pradesh')),
        DropdownMenuItem(value: "Bihar", child: Text('Bihar')),
        DropdownMenuItem(value: "Chandigarh", child: Text('Chandigarh')),
        DropdownMenuItem(value: "Chhattisgarh", child: Text('Chhattisgarh')),
        DropdownMenuItem(
            value: "Dadra & Nagar Haveli", child: Text('Dadra & Nagar Haveli')),
        DropdownMenuItem(value: "Daman & Diu", child: Text('Daman & Diu')),
        DropdownMenuItem(value: "Delhi", child: Text('Delhi')),
        DropdownMenuItem(value: "Goa", child: Text('Goa')),
        DropdownMenuItem(value: "Gujarat", child: Text('Gujarat')),
        DropdownMenuItem(value: "Haryana", child: Text('Haryana')),
        DropdownMenuItem(value: "Himachal Pradesh", child: Text('imachal Pradesh')),
        DropdownMenuItem(value: "Jammu & Kashmir", child: Text('ammu & Kashmir')),
        DropdownMenuItem(value: "Jharkhand", child: Text('Jharkhand')),
        DropdownMenuItem(value: "Karnataka", child: Text('Karnataka')),
        DropdownMenuItem(value: "Kerala", child: Text('Kerala')),
        DropdownMenuItem(value: "Lakshadweep", child: Text('Lakshadweep')),
        DropdownMenuItem(value: "Madhya Pradesh", child: Text('Madhya Pradesh')),
        DropdownMenuItem(value: "Maharashtra", child: Text('Maharashtra')),
        DropdownMenuItem(value: "Manipur", child: Text('Manipur')),
        DropdownMenuItem(value: "Meghalaya", child: Text('Meghalaya')),
        DropdownMenuItem(value: "Mizoram", child: Text('Mizoram')),
        DropdownMenuItem(value: "Pondicherry", child: Text('Pondicherry')),
        DropdownMenuItem(value: "Punjab", child: Text('Punjab')),
        DropdownMenuItem(value: "Rajasthan", child: Text('Rajasthan')),
        DropdownMenuItem(value: "Tamil Nadu", child: Text('Tamil')),
        DropdownMenuItem(value: "Tripura", child: Text('Tripura')),
        DropdownMenuItem(value: "Uttaranchal", child: Text('Uttaranchal')),
        DropdownMenuItem(value: "Uttar Pradesh", child: Text('Uttar Pradesh')),
        DropdownMenuItem(value: "West Bengal", child: Text('West Bengal')),
      ],
    );
  }
}
