import 'package:amrit_sarovar_haryana/screens/update_form_screen.dart';
import 'package:flutter/material.dart';

class RoleSelectionScreen extends StatefulWidget {
  final String mobileNumber;

  const RoleSelectionScreen({Key? key, required this.mobileNumber})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _RoleSelectionScreenState();
  }
}

class _RoleSelectionScreenState extends State<RoleSelectionScreen> {
  List<String> departments = ['CADA', 'IWRD', 'PR-PW', 'ULBD', 'HPA', 'OTHER'];
  List<String> divisions = [
    'AMBALA',
    'Bhiwani',
    'CharkhiDadri',
    'FARIDABAD',
    'Fatehabad',
    'Gurugram',
    'Hisar',
    'JHAJJAR',
    'Jind',
    'Kaithal',
    'Karnal',
    'Kurukshetra',
    'Mahendergarh',
    'Nuh',
    'Palwal',
    'Panchkula',
    'Panipat',
    'Rewari',
    'Rohtak',
    'Sirsa',
    'Sonipat',
    'Yamunanagar'
  ];
  List<String> roles = ['CE', 'EE', 'SDO', 'JE', 'DEO', 'ADMIN', 'OTHER'];
  String departmentDropdownValue = 'CADA';
  String divisionDropdownValue = 'AMBALA';
  String roleDropdownValue = 'CE';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 100.0,
            ),
            const Text(
              'Choose your Role',
              style: TextStyle(fontSize: 30.0),
            ),
            const SizedBox(
              height: 20.0,
            ),
            const Text(
              'Department',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDepartmentDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Division',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getDivisionDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            const Text(
              'Role',
              style: TextStyle(fontSize: 18.0),
            ),
            const SizedBox(
              height: 10.0,
            ),
            getRoleDropdownMenu(),
            const SizedBox(
              height: 10.0,
            ),
            Expanded(child: Container()),
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
                      MaterialPageRoute(
                          builder: (context) => const UpdateFormScreen(
                                mobileNumber: '9017773644',
                              )),
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
            )
          ],
        ),
      ),
    );
  }

  Widget getDepartmentDropdownMenu() {
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
        items: departments.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget getDivisionDropdownMenu() {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0)),
      child: DropdownButton<String>(
        value: divisionDropdownValue,
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
            divisionDropdownValue = newValue!;
          });
        },
        items: divisions.map<DropdownMenuItem<String>>((String value) {
          return DropdownMenuItem<String>(
            value: value,
            child: Text(value),
          );
        }).toList(),
      ),
    );
  }

  Widget getRoleDropdownMenu() {
    return Container(
      height: 50,
      padding: const EdgeInsets.all(8.0),
      decoration: BoxDecoration(
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(4.0)),
      child: DropdownButton<String>(
        value: roleDropdownValue,
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
            roleDropdownValue = newValue!;
          });
        },
        items: roles.map<DropdownMenuItem<String>>((String value) {
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
