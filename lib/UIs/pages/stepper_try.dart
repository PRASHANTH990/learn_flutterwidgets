import 'package:flutter/material.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagefour.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pageone.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagethree.dart';
import 'package:try_widgets_1/UIs/pages/demo_pages/pagetwo.dart';
import 'package:try_widgets_1/drawer.dart';
import 'package:image_picker/image_picker.dart';

class StepperTry extends StatefulWidget {
  const StepperTry({super.key});

  @override
  State<StepperTry> createState() => _StepperTryState();
}

class _StepperTryState extends State<StepperTry> {
  TextEditingController textEditingCtrl = TextEditingController();
  int _index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: const MyDrawer(),
      appBar: AppBar(
        title: const Text('Stepper'),
      ),
      body: Column(
        children: [
          Expanded(
            flex: 0,
            child: Text(
              'Register Casual ',
            ),
          ),
          Expanded(
            flex: 1,
            child: Stepper(
              type: StepperType.horizontal,
              // type: StepperType.vertical,
              physics: const ClampingScrollPhysics(),
              elevation: 0,
              currentStep: _index,
              // connectorColor: MaterialStatePropertyAll(Colors.red),
              // connectorThickness: 4,
              controlsBuilder: (BuildContext context, ControlsDetails details) {
                print(details.stepIndex);
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    OutlinedButton(
                      onPressed: details.onStepCancel,
                      // child: Text('Back to Step ${details.stepIndex - 1}'),
                      child: Text('Back'),
                    ),
                    FilledButton(
                      onPressed: details.onStepContinue,
                      // child: Text('Continue to Step ${details.stepIndex + 1}'),
                      child: Text('Next'),
                    ),
                  ],
                );
              },

              onStepCancel: () {
                print(_index);
                if (_index > 0) {
                  setState(() {
                    _index -= 1;
                  });
                }
              },
              onStepContinue: () {
                print(_index);
                if (_index < 4) {
                  setState(() {
                    _index += 1;
                  });
                }
              },
              onStepTapped: (int index) {
                print(_index);
                setState(() {
                  _index = index;
                });
              },
              steps: [
                Step(
                  isActive: _index == 0,
                  state: _index == 0 ? StepState.editing : StepState.indexed,
                  title: SizedBox(
                    width: 0,
                  ),
                  // title: const Text('step 1'),
                  // subtitle: const Text('step one'),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 300,
                    child: ListView(
                      children: [
                        Center(
                          child: Text(
                            'Enter Personal Details',
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Expanded(
                          child: SizedBox(
                            height: 200,
                            child: CircleAvatar(),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        ElevatedButton(
                          child: const Text('upload Profile image'),
                          onPressed: () => {},
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          controller: textEditingCtrl,
                          cursorColor: Colors.green,
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.account_circle_outlined,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(16),

                            // helperText: 'enter the password Da',
                            // hintText: 'Enter Password',
                            labelText: 'Name',
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          controller: textEditingCtrl,
                          cursorColor: Colors.green,
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.email_outlined,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(16),

                            // helperText: 'enter the password Da',
                            // hintText: 'Enter Password',
                            labelText: 'Email',
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        TextField(
                          controller: textEditingCtrl,
                          cursorColor: Colors.green,
                          obscureText: true,
                          decoration: const InputDecoration(
                            prefixIcon: Padding(
                              padding: EdgeInsets.all(0.0),
                              child: Icon(
                                Icons.phone_android_outlined,
                              ),
                            ),
                            border: OutlineInputBorder(),
                            contentPadding: EdgeInsets.all(16),

                            // helperText: 'enter the password Da',
                            // hintText: 'Enter Password',
                            labelText: 'Phone no',
                            floatingLabelBehavior: FloatingLabelBehavior.auto,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Step(
                  isActive: _index == 1,
                  state: _index == 1 ? StepState.editing : StepState.indexed,
                  title: SizedBox(
                    width: 0,
                  ),
                  // title: Text('step 2'),
                  // subtitle: Text('step Two'),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 300,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text('step 2'),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ),
                Step(
                  isActive: _index == 2,
                  state: _index == 2 ? StepState.editing : StepState.indexed,
                  title: SizedBox(
                    width: 0,
                  ),
                  // title: Text('step 3'),
                  // subtitle: Text('step Three'),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 300,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text('step 3'),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ),
                Step(
                  isActive: _index == 3,
                  state: _index == 3 ? StepState.editing : StepState.indexed,
                  title: SizedBox(
                    width: 0,
                  ),
                  // title: Text('step 4'),
                  // subtitle: Text('step Four'),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 300,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text('step 4'),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ),
                Step(
                  isActive: _index == 4,
                  state: _index == 4 ? StepState.editing : StepState.indexed,
                  title: SizedBox(
                    width: 0,
                  ),
                  // title: Text('step 5'),
                  // subtitle: Text('step Five'),
                  content: SizedBox(
                    height: MediaQuery.of(context).size.height - 300,
                    child: Center(
                      child: ElevatedButton(
                        child: const Text('step 5'),
                        onPressed: () => {},
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
