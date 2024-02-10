import 'package:flutter/material.dart';
import 'package:skyguard_adss/pages/sos_pages/sos_slider_screen.dart';
import 'package:skyguard_adss/widgets/custom_text_field_widget.dart';
// import 'package:sos_adss/pages/profile_pages/edit_profile_screen.dart';
// import 'package:sos_adss/widgets/custom_text_field_widget.dart';
// import 'package:sos_adss/pages/sos_pages/sos_slider_screen.dart';

import 'edit_profile_screen.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF0a1119),
      body: SingleChildScrollView(
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 50,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(left: 12.0),
                    child: Text(
                      "Welcome",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 30,
                        // fontWeight: FontWeight.bold
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  const Icon(Icons.waving_hand_outlined,
                      color: Color.fromARGB(255, 240, 171, 23), size: 34),
                  const SizedBox(width: 80),
                  GestureDetector(
                    onTap: () => Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const EditProfile(),
                        )),
                    child: const Padding(
                      padding: EdgeInsets.only(right: 2.0),
                      child: Row(
                        children: [
                          Text(
                            "Edit Your Info ",
                            style: TextStyle(
                              color: Colors.white60,
                              fontSize: 14,
                              // fontWeight: FontWeight.bold
                            ),
                          ),
                          Icon(
                            Icons.edit_square,
                            color: Colors.white54,
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
                  "Name",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomTextField(
                // textEditingController: nameTextEditingController,
                iconData: Icons.person,
                hintText: "Sanidhya",
                // labelText: "Name is one ",
                isObscure: false,
                enabled: false,
              ),
              const SizedBox(height: 10),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
                  "Aadhar Number",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomTextField(
                //textEditingController: nameTextEditingController,
                iconData: Icons.contact_page_rounded,
                hintText: "1234 5678 1292",
                // labelText: "Name is one ",
                isObscure: false,
                enabled: false,
              ),
              const SizedBox(height: 10),
              Row(
                children: [
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "DOB",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        CustomTextField(
                          //textEditingController: nameTextEditingController,
                          iconData: Icons.calendar_month_outlined,
                          hintText: "31/05/2002",
                          // labelText: "Name is one ",
                          isObscure: false,
                          enabled: false,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    flex: 3,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Padding(
                          padding: EdgeInsets.fromLTRB(10, 0, 0, 5),
                          child: Padding(
                            padding: EdgeInsets.only(left: 16.0),
                            child: Text(
                              "Gender",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                              textAlign: TextAlign.justify,
                            ),
                          ),
                        ),
                        CustomTextField(
                          //textEditingController: nameTextEditingController,
                          //iconData: Icons.person,
                          hintText: "Male",
                          // labelText: "Name is one ",
                          isObscure: false,
                          enabled: false,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
                  "Mobile Number",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomTextField(
                //textEditingController: nameTextEditingController,
                iconData: Icons.phone_rounded,
                hintText: "5678934560",
                // labelText: "Name is one ",
                isObscure: false,
                enabled: false,
              ),
              const SizedBox(height: 20),
              const Padding(
                padding: EdgeInsets.only(left: 28.0),
                child: Text(
                  "Photo",
                  style: TextStyle(color: Colors.grey, fontSize: 18),
                  textAlign: TextAlign.justify,
                ),
              ),
              CustomTextField(
                //textEditingController: nameTextEditingController,
                iconData: Icons.photo_camera_back_rounded,
                hintText: "Sanidhya.jpeg",
                // labelText: "Name is one ",
                isObscure: false,
                enabled: false,
              ),
              const SizedBox(
                height: 60,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 100.0),
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => const SOSSlider(),
                        ));
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color.fromARGB(255, 220, 11, 11),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20),
                    ),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 50,
                      vertical: 15,
                    ),
                  ),
                  child: const Text(
                    'Raise SOS',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Widget buildTextField(String labelText,String placeholder){
//   return Padding(
//     padding: EdgeInsets.only(bottom:15),
//     child: TextField(
//       decoration:InputDecoration(
//         labelText: labelText,
//         floatingLabelBehavior: FloatingLabelBehavior.always,
//         hintText: placeholder,
//         hintStyle: TextStyle(
//           fontSize:16,
//           fontWeight: FontWeight.bold,
//           color: Colors.grey
//         )
//       ) ,
//     ),
//   )
// }
