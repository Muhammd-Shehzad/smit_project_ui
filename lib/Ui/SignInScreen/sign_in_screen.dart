import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:smit_project_ui/Ui/SignInScreen/sign_in_provider.dart';

class SignInScreen extends StatefulWidget {
  const SignInScreen({super.key});

  @override
  State<SignInScreen> createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => SignInProvider(),
      child: Consumer(
        builder: (context, model, child) => Scaffold(
          body: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Image.asset('assets/logo.png')),
              Column(children: [
                Text('')
              ],),
            ],
          ),
        ),
      ),
    );
  }
}
