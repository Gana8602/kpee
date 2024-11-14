import 'package:flutter/material.dart';

class OTPInput extends StatefulWidget {
  @override
  _OTPInputState createState() => _OTPInputState();
}

class _OTPInputState extends State<OTPInput> {
  // Controllers for each input box
  final TextEditingController _firstController = TextEditingController();
  final TextEditingController _secondController = TextEditingController();
  final TextEditingController _thirdController = TextEditingController();
  final TextEditingController _fourthController = TextEditingController();

  // Focus nodes to move focus to the next input box
  final FocusNode _firstFocus = FocusNode();
  final FocusNode _secondFocus = FocusNode();
  final FocusNode _thirdFocus = FocusNode();
  final FocusNode _fourthFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        _otpBox(_firstController, _firstFocus, _secondFocus),
        _otpBox(_secondController, _secondFocus, _thirdFocus),
        _otpBox(_thirdController, _thirdFocus, _fourthFocus),
        _otpBox(_fourthController, _fourthFocus, null),
      ],
    );
  }

  Widget _otpBox(TextEditingController controller, FocusNode currentFocus,
      FocusNode? nextFocus) {
    return Container(
      width: 50,
      decoration: BoxDecoration(
          color: Colors.white,
          // border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.all(Radius.circular(10))),
      child: TextFormField(
        controller: controller,
        focusNode: currentFocus,
        maxLength: 1,
        keyboardType: TextInputType.number,
        textAlign: TextAlign.center,
        decoration: InputDecoration(border: InputBorder.none, counterText: ''),
        onChanged: (value) {
          if (value.isNotEmpty) {
            nextFocus != null
                ? FocusScope.of(context).requestFocus(nextFocus)
                : currentFocus.unfocus();
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _firstController.dispose();
    _secondController.dispose();
    _thirdController.dispose();
    _fourthController.dispose();
    _firstFocus.dispose();
    _secondFocus.dispose();
    _thirdFocus.dispose();
    _fourthFocus.dispose();
    super.dispose();
  }
}