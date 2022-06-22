import 'package:amrit_sarovar_haryana/screens/role_selection_screen.dart';
import 'package:flutter/material.dart';

class OtpVerificationScreen extends StatefulWidget {
  final String mobileNumber;
  const OtpVerificationScreen({Key? key, required this.mobileNumber}) : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _OtpVerificationScreenState();
  }
}

class _OtpVerificationScreenState extends State<OtpVerificationScreen> {
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
              'OTP Verification',
              style: TextStyle(fontSize: 30.0),
            ),
            const SizedBox(height: 20.0,),
            RichText(
              text: TextSpan(
                text: 'Enter the OTP sent to  ',
                style: const TextStyle(fontSize: 18.0, color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(
                      text: widget.mobileNumber,
                      style: const TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.black)),
                ],
              ),
            ),
            const SizedBox(height: 60.0,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  getOtpInputField(),
                  getOtpInputField(),
                  getOtpInputField(),
                  getOtpInputField(),
                ],
              ),
            ),
            const SizedBox(height: 10.0,),
            RichText(
              text: const TextSpan(
                text: 'Didn\'t receive an OTP? ',
                style: TextStyle(fontSize: 18.0, color: Colors.grey),
                children: <TextSpan>[
                  TextSpan(
                      text: 'Resend OTP',
                      style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold, color: Colors.red)),
                ],
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
                child: const Text('Verify & Proceed', style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RoleSelectionScreen(mobileNumber: '9017773644',)),
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

  Widget getOtpInputField() {
    return SizedBox(
      height: 40,
      width: 35,
      child: TextField(
        // autofocus: autoFocus,
        textAlign: TextAlign.center,
        keyboardType: TextInputType.number,
        // controller: controller,
        maxLength: 1,
        cursorColor: Theme.of(context).primaryColor,
        decoration: const InputDecoration(
            border: OutlineInputBorder(),
            counterText: '',
            hintStyle: TextStyle(color: Colors.black, fontSize: 20.0)),
        onChanged: (value) {
          if (value.length == 1) {
            FocusScope.of(context).nextFocus();
          }
        },
      ),
    );
  }

}
