import 'package:amrit_sarovar_haryana/screens/choose_process_screen.dart';
import 'package:flutter/material.dart';

class UpdateFormScreen extends StatefulWidget {
  final String mobileNumber;

  const UpdateFormScreen({Key? key, required this.mobileNumber})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _UpdateFormScreenState();
  }
}

class _UpdateFormScreenState extends State<UpdateFormScreen> {
  List<String> departments = ['sample', 'sample2', 'sample3', 'sample4', 'sample5'];
  String departmentDropdownValue = 'sample';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: ListView(
          children: [
            const SizedBox(
              height: 50.0,
            ),
            const Text(
              'Update Amrit-Sarovar',
              style: TextStyle(fontSize: 30.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Region',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'District',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Block',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Village',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Name of Pond',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'UID',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Activity',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDropdownMenu(),
            const SizedBox(
              height: 40.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.grey,
                    fixedSize: const Size(50, 50),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(Icons.arrow_back_ios),
                ),
                ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const ChooseProcessScreen(mobileNumber: '9017773644',)),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.green,
                    fixedSize: const Size(50, 50),
                    shape: const CircleBorder(),
                  ),
                  child: const Icon(Icons.arrow_forward_ios),
                ),
              ],
            ),
            const SizedBox(
              height: 10.0,
            ),
          ],
        ),
      ),
    );
  }

  Widget getDropdownMenu() {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0)),
      child: DropdownButton<String>(
        value: departmentDropdownValue,
        isExpanded: true,
        icon: const Icon(Icons.keyboard_arrow_down_outlined),
        elevation: 16,
        hint: const Text('Select'),
        // style: const TextStyle(color: Colors.deepPurple),
        underline: Container(
          height: 2,
          color: Colors.transparent,
        ),
        onChanged: (String? newValue) {
          setState(() {
            departmentDropdownValue = newValue!;
          });
        },
        items: departments
            .map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
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
