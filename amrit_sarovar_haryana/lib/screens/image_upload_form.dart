import 'package:flutter/material.dart';

class ImageUploadForm extends StatefulWidget {
  final String mobileNumber;

  const ImageUploadForm({Key? key, required this.mobileNumber})
      : super(key: key);

  @override
  State<StatefulWidget> createState() {
    return _ImageUploadFormState();
  }
}

class _ImageUploadFormState extends State<ImageUploadForm> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        title: const Text(
          'Image',
          style: TextStyle(color: Colors.blue, fontSize: 24),
        ),
        leading: TextButton(
          onPressed: () => Navigator.of(context).pop(),
          child: const Icon(
            Icons.arrow_back,
            color: Colors.grey,
            size: 24,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: ListView(
          children: [
            Container(
              decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(4.0)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      color: Colors.grey.withOpacity(0.2),
                      height: 50.0,
                      child: Row(
                        children: const [
                          Padding(
                            padding: EdgeInsets.all(8.0),
                            child: Text(
                              'Upload Image',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )),
                  Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        getSelectButtonWidget('Select'),
                        getButtonWidget('Date'),
                        getFileUploadWidget(
                            'Image (Max 4 images at a time & each image Max size 1MB)'),
                        const SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          height: 50.0,
                          width: MediaQuery.of(context).size.width - 50,
                          child: ElevatedButton(
                            style:
                                ElevatedButton.styleFrom(primary: Colors.green),
                            child: const Text(
                              'Upload Image',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 18.0),
                            ),
                            onPressed: () {},
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget getReasonForDelayWidget() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text(
          'Add Reason for Delay in Work',
          style: TextStyle(fontSize: 24, color: Colors.blue),
        ),
        const SizedBox(
          height: 20.0,
        ),
        const Text(
          'Work Type',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10.0,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Select',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        const Text(
          'Remarks',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        const SizedBox(
          height: 10,
        ),
        TextFormField(
          minLines: 6,
          // any number you need (It works as the rows for the textarea)
          keyboardType: TextInputType.multiline,
          maxLines: null,
          decoration: const InputDecoration(
            focusedBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderSide: BorderSide(
                color: Colors.grey,
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          height: 50.0,
          width: MediaQuery.of(context).size.width - 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(primary: Colors.green),
            child: const Text(
              'Submit',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18.0),
            ),
            onPressed: () {},
          ),
        ),
        const SizedBox(
          height: 20,
        ),
      ],
    );
  }

  Widget getSelectButtonWidget(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18.0),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text(
                'Select',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
              Icon(
                Icons.keyboard_arrow_down_outlined,
                color: Colors.grey,
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget getButtonWidget(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18.0),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4.0)),
          child: Row(
            children: [
              Container(
                  height: 40,
                  width: 40,
                  color: Colors.black12,
                  child: const Icon(
                    Icons.calendar_today_outlined,
                    color: Colors.grey,
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'dd/mm/yyyy',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }

  Widget getFileUploadWidget(String title) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 10,
        ),
        Text(
          title,
          style: const TextStyle(fontSize: 18.0),
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          height: 50,
          padding: const EdgeInsets.all(8.0),
          decoration: BoxDecoration(
              border: Border.all(color: Colors.grey),
              borderRadius: BorderRadius.circular(4.0)),
          child: Row(
            children: [
              Container(
                  height: 40,
                  width: 100,
                  decoration: BoxDecoration(
                      color: Colors.black12,
                      border: Border.all(color: Colors.grey),
                      borderRadius: BorderRadius.circular(4.0)),
                  child: const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Text('Choose File'),
                  )),
              const SizedBox(
                width: 20,
              ),
              const Text(
                'no file choosen',
                style: TextStyle(color: Colors.grey, fontSize: 16),
              ),
            ],
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}
