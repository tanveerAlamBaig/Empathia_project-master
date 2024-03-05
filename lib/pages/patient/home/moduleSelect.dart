import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fyp_project/common/widgets/commonModule.dart';
import 'package:fyp_project/common/widgets/customButton.dart';
import 'package:fyp_project/common/widgets/customTextField.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../Services/auth_service.dart';

class SelectModule extends StatefulWidget {
  const SelectModule({super.key});

  @override
  State<SelectModule> createState() => _SelectModuleState();
}

class _SelectModuleState extends State<SelectModule> {
  int selectedModulesCount = 0;

  Set<String> selectedModules = {};

  void handleModuleSelection(bool isSelected, String moduleId) {
    setState(() {
      if (isSelected) {
        if (selectedModules.length < 4) {
          selectedModulesCount++;
          selectedModules.add(moduleId);
        }
      } else {
        selectedModulesCount--;
        selectedModules.remove(moduleId);
      }
    });
  }

  void sendSelectedModules() async {
    try {
      SharedPreferences prefs = await SharedPreferences.getInstance();
      String userId = prefs.getString('userId') ?? '';

      if (userId.isEmpty) {
        return;
      }

      // Convert the Set to a List
      List<String> selectedModulesList = selectedModules.toList();

      AuthService().saveSelectedModules(
        selectedModules: selectedModulesList,
        userId: userId,
        context: context,
      );
    } catch (e) {}
  }

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: DecoratedBox(
        decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage("assets/hope.jpg"), fit: BoxFit.cover),
        ),
        child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, bottom: 30, right: 20, top: 50),
                child: CustomText(
                    text: 'Select Your Modules',
                    fontSize: 24,
                    weight: FontWeight.w200,
                    textColor: Colors.black87),
              ),
              const Padding(
                padding:
                    EdgeInsets.only(left: 20, bottom: 30, right: 20, top: 40),
                child: CustomText(
                    text:
                        'Browse and select topics relevant to you.\nYou can change your selection later',
                    fontSize: 16,
                    weight: FontWeight.normal,
                    textColor: Colors.black87),
              ),
              Expanded(
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: screenWidth >= 600 ? 100 : 20),
                  child: GridView.count(
                    crossAxisCount: 2,
                    children: [
                      CommonModule(
                        imagePath: 'assets/module.jpg',
                        text: "Anxiety",
                        text2: "Reduce worries & \ncatastrophe",
                        onSelect: (bool isSelected) {
                          handleModuleSelection(isSelected, 'Anxiety');
                        },
                      ),
                      CommonModule(
                        imagePath: 'assets/module.jpg',
                        text: "Depression",
                        text2: "Cultivate a brighter\nmindset",
                        onSelect: (bool isSelected) {
                          handleModuleSelection(isSelected, 'Depression');
                        },
                      ),
                      CommonModule(
                        imagePath: 'assets/module.jpg',
                        text: "Stress",
                        text2: "Manage stress for a\nbalanced life",
                        onSelect: (bool isSelected) {
                          handleModuleSelection(isSelected, 'Stress');
                        },
                      ),
                      CommonModule(
                        imagePath: 'assets/module.jpg',
                        text: "Sleep",
                        text2: "Decrease sleep related\nworries",
                        onSelect: (bool isSelected) {
                          handleModuleSelection(isSelected, 'Sleep');
                        },
                      ),
                      CommonModule(
                        imagePath: 'assets/module.jpg',
                        text: "Panic disorder",
                        text2: "Calm your mind &\nbody",
                        onSelect: (bool isSelected) {
                          handleModuleSelection(isSelected, 'Panic disorder');
                        },
                      ),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(
                    left: 20, right: 20, bottom: 20, top: 20),
                child: CustomButton(
                  onTap: () {
                    if (selectedModulesCount == 3) {
                      sendSelectedModules();
                      Navigator.pushNamed(context, '/homePatient');
                    } else {
                      showCupertinoDialog(
                        context: context,
                        builder: (context) {
                          return CupertinoAlertDialog(
                            title: const Text('Try Again'),
                            content: const Text('Please select any 3 modules.'),
                            actions: [
                              CupertinoDialogAction(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: const Text(
                                  'OK',
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ],
                          );
                        },
                      );
                    }
                  },
                  text: 'Continue',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
