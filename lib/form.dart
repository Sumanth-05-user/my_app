import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:intl/intl.dart';

// Create Enum for Gender
enum Gender { male, female, other }

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  String message = "";
  Gender? selectedGender;

  bool isMusic = false;
  bool isDance = false;
  bool isGame = false;

  final TextEditingController _dobController = TextEditingController();

  void _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(1900),
      lastDate: DateTime.now(),
    );

    if (pickedDate != null) {
      String formattedDate =
          DateFormat('dd/MM/yyyy').format(pickedDate);
      setState(() {
        _dobController.text = formattedDate;
      });
    }
  }

  String getSelectedGender() {
    switch (selectedGender) {
      case Gender.male:
        return "Male";
      case Gender.female:
        return "Female";
      case Gender.other:
        return "Other";
      default:
        return "Not Selected";
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
     
      appBar: AppBar(
        title: const Text("Registration Form"),
        backgroundColor: Colors.amber,
        titleTextStyle:
            const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),

            // Name
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
              ],
              decoration: const InputDecoration(
                labelText: "Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            // DOB
            TextField(
              controller: _dobController,
              readOnly: true,
              onTap: () => _selectDate(context),
              decoration: InputDecoration(
                labelText: "DOB",
                hintText: "DD/MM/YYYY",
                border: const OutlineInputBorder(),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.calendar_today),
                  onPressed: () => _selectDate(context),
                ),
              ),
            ),

            const SizedBox(height: 10),

            // Mobile
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.digitsOnly,
              ],
              decoration: const InputDecoration(
                labelText: "Mobile Number",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            // Father Name
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
              ],
              decoration: const InputDecoration(
                labelText: "Father Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 10),

            // Mother Name
            TextField(
              inputFormatters: [
                FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z ]')),
              ],
              decoration: const InputDecoration(
                labelText: "Mother Name",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 15),
            const Text(
              "Gender:",
              style: TextStyle(fontSize: 20),
            ),

            Row(
              children: [
                Expanded(
                  child: RadioListTile<Gender>(
                    title: const Text("Male"),
                    value: Gender.male,
                    groupValue: selectedGender,
                    onChanged: (Gender? value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Gender>(
                    title: const Text("Female"),
                    value: Gender.female,
                    groupValue: selectedGender,
                    onChanged: (Gender? value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
                Expanded(
                  child: RadioListTile<Gender>(
                    title: const Text("Other"),
                    value: Gender.other,
                    groupValue: selectedGender,
                    onChanged: (Gender? value) {
                      setState(() {
                        selectedGender = value;
                      });
                    },
                  ),
                ),
              ],
            ),

            const SizedBox(height: 20),
            const Text(
              "Hobbies:",
              style: TextStyle(fontSize: 20),
            ),

            CheckboxListTile(
              title: const Text("Music"),
              value: isMusic,
              onChanged: (value) {
                setState(() {
                  isMusic = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Dance"),
              value: isDance,
              onChanged: (value) {
                setState(() {
                  isDance = value!;
                });
              },
            ),

            CheckboxListTile(
              title: const Text("Game"),
              value: isGame,
              onChanged: (value) {
                setState(() {
                  isGame = value!;
                });
              },
            ),

            const SizedBox(height: 20),

            // Address
             TextFormField(
              decoration: InputDecoration(
                labelText: "Address",
                border: OutlineInputBorder(),
              ),
            ),

            const SizedBox(height: 30),

            if (message.isNotEmpty)
              Center(
                child: Text(
                  message,
                  style: const TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.green,
                  ),
                ),
              ),
          ],
        ),
      ),

      // Submit Button
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SizedBox(
          width: double.infinity,
          height: 50,
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.green,
            ),
            onPressed: () {

              Navigator.pop(context);
            
          // Navigator 
              setState(() {
                message =
                    "Form Submitted Successfully\nGender: ${getSelectedGender()}";
              });
            },
            child: const Text(
              "SUBMIT",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ),
      ),
    );
  }
}