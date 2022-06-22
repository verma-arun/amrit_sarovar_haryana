import 'package:amrit_sarovar_haryana/screens/otp_verification_screen.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _WelcomeScreenState();
  }
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  String mobileNumber = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Welcome to HPWWMA',
              style: TextStyle(fontSize: 30.0),
            ),
            const SizedBox(height: 20.0,),
            RichText(
              text: const TextSpan(
                text: 'We will send you an ',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(
                      text: 'One Time Password ',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black)),
                  TextSpan(text: 'on this mobile number'),
                ],
              ),
            ),
            const SizedBox(height: 20.0,),

            const Text(
              'Mobile No.',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0)
            ),
            const SizedBox(height: 10.0,),
            Container(
              height: 50,
              width: MediaQuery.of(context).size.width - 50,
              child: const TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter Mobile Number',
                ),
              ),
            ),
            const SizedBox(height: 15.0,),
            SizedBox(
              height: 50.0,
              width: MediaQuery.of(context).size.width - 50,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green
                ),
                child: const Text('Get OTP', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const OtpVerificationScreen(mobileNumber: '9017773644',)),
                  );
                  setState((){
                    // mobileNumber = ;
                  });
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
