import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';
import 'package:smit_project_ui/Ui/EditScreen/edit_provider.dart';
import 'package:smit_project_ui/Ui/SignInScreen/sign_in_screen.dart';

class EditScreen extends StatefulWidget {
  const EditScreen({super.key});

  @override
  State<EditScreen> createState() => _EditScreenState();
}

class _EditScreenState extends State<EditScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => EditProvider(),
      child: Consumer<EditProvider>(
        builder: (context, model, child) => Scaffold(
          appBar: AppBar(
            leading: InkWell(
                onTap: () {
                  Get.back();
                },
                child: Icon(Icons.arrow_back_ios_new)),
          ),
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: CircleAvatar(
                  radius: 60,
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  child: CircleAvatar(
                    radius: 40.r,
                    backgroundImage: AssetImage('assets/s.PNG'),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Your Name'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Your Email'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Your Password'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Text('Enter Phone Number'),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              SizedBox(
                height: 30.h,
              ),
              Center(
                child: InkWell(
                  onTap: () {
                    Get.to(SignInScreen());
                  },
                  child: Container(
                    height: 50.h,
                    width: 300.w,
                    decoration: BoxDecoration(
                      color: Color(0xFF263238),
                      borderRadius: BorderRadius.circular(35),
                    ),
                    child: Center(
                      child: Text(
                        'Next',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 20.sp,
                            fontWeight: FontWeight.w400),
                      ),
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
