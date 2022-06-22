import 'package:amrit_sarovar_haryana/models/process_model.dart';
import 'package:amrit_sarovar_haryana/screens/image_upload_form.dart';
import 'package:amrit_sarovar_haryana/screens/planning_stage_form.dart';
import 'package:amrit_sarovar_haryana/screens/update_form_screen.dart';
import 'package:flutter/material.dart';

class ChooseProcessScreen extends StatefulWidget {
  final String mobileNumber;

  const ChooseProcessScreen({Key? key, required this.mobileNumber})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ChooseProcessScreenState();
  }
}

class _ChooseProcessScreenState extends State<ChooseProcessScreen> {
  ProcessModel processModel = ProcessModel(isSelected: false, processName: '');

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
            getProcessButtonWidget(
                ProcessModel(isSelected: false, processName: 'Planning Stage')),
            const SizedBox(
              height: 20.0,
            ),
            getProcessButtonWidget(ProcessModel(
                isSelected: false, processName: 'Physical Progress')),
            const SizedBox(
              height: 20.0,
            ),
            getProcessButtonWidget(ProcessModel(
                isSelected: false, processName: 'Water Test Report')),
            const SizedBox(
              height: 20.0,
            ),
            getProcessButtonWidget(ProcessModel(
                isSelected: false, processName: 'Financial Status')),
            const SizedBox(
              height: 20.0,
            ),
            getProcessButtonWidget(
                ProcessModel(isSelected: false, processName: 'Image')),
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

  Widget getProcessButtonWidget(ProcessModel process) {
    return SizedBox(
      height: 50.0,
      width: MediaQuery.of(context).size.width - 50,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            primary: process.isSelected ? Colors.green : Colors.blue),
        child: Text(
          process.processName,
          style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
        ),
        onPressed: () {
          switch (process.processName) {
            case 'Planning Stage':
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const PlanningStageForm(
                        mobileNumber: '9017773644',
                      )),
                );
              }
              break;

            case 'Physical Progress':
              {
//statements;
              }
              break;
            case 'Water Test Report':
              {
// statements;
              }
              break;

            case 'Financial Status':
              {
//statements;
              }
              break;
            case 'Image':
              {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => const ImageUploadForm(
                        mobileNumber: '9017773644',
                      )),
                );
              }
              break;

            default:
              {
//statements;
              }
              break;
          }
          setState(() {
            process.isSelected = !process.isSelected;
          });
        },
      ),
    );
  }
}
