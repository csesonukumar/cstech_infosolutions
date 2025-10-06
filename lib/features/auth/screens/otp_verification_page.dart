// // import 'package:flutter/material.dart';
// // import 'package:flutter/services.dart';
// //
// // class otp_Verification_Page extends StatefulWidget {
// //   const otp_Verification_Page({super.key});
// //
// //   @override
// //   State<otp_Verification_Page> createState() => _otp_Verification_PageState();
// // }
// //
// // class _otp_Verification_PageState extends State<otp_Verification_Page> {
// //   @override
// //   Widget build(BuildContext context) {
// //     return Scaffold(
// //       body: Center(
// //         child: Column(
// //           mainAxisAlignment: MainAxisAlignment.center,
// //           children: [
// //             Text(
// //               "Whatsapp OTP\nVerification",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold),
// //             ),
// //             SizedBox(height: 13),
// //             Text(
// //               "Please ensure that the email id mentioned "
// //               "is valid\n as we have sent an OTP to your email.",
// //               textAlign: TextAlign.center,
// //               style: TextStyle(fontSize: 15.0),
// //             ),
// //             Row(children: [
// //               Form(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       margin: EdgeInsetsGeometry.all(8.0),
// //                       decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(10.0)),
// //                       height: 50.0,
// //                       width: 48.0,
// //                       child: TextFormField(
// //                         onChanged: (value){if(value.length == 1){FocusScope.of(context).nextFocus();}},
// //                         onSaved: (pin1){},
// //                         decoration: const InputDecoration(hintText: "0"),
// //                         style: Theme.of(context).textTheme.headlineMedium,
// //                         keyboardType: TextInputType.number,
// //                         textAlign: TextAlign.center,
// //                         inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),Form(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       margin: EdgeInsetsGeometry.all(8.0),
// //                       decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(10.0)),
// //                       height: 50.0,
// //                       width: 48.0,
// //                       child: TextFormField(
// //                         onChanged: (value){if(value.length == 1){FocusScope.of(context).nextFocus();}},
// //                         onSaved: (pin1){},
// //                         decoration: const InputDecoration(hintText: "0"),
// //                         style: Theme.of(context).textTheme.headlineMedium,
// //                         keyboardType: TextInputType.number,
// //                         textAlign: TextAlign.center,
// //                         inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),Form(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       margin: EdgeInsetsGeometry.all(8.0),
// //                       decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(10.0)),
// //                       height: 50.0,
// //                       width: 48.0,
// //                       child: TextFormField(
// //                         onChanged: (value){if(value.length == 1){FocusScope.of(context).nextFocus();}},
// //                         onSaved: (pin1){},
// //                         decoration: const InputDecoration(hintText: "0"),
// //                         style: Theme.of(context).textTheme.headlineMedium,
// //                         keyboardType: TextInputType.number,
// //                         textAlign: TextAlign.center,
// //                         inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),Form(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       margin: EdgeInsetsGeometry.all(8.0),
// //                       decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(10.0)),
// //                       height: 50.0,
// //                       width: 48.0,
// //                       child: TextFormField(
// //                         onChanged: (value){if(value.length == 1){FocusScope.of(context).nextFocus();}},
// //                         onSaved: (pin1){},
// //                         decoration: const InputDecoration(hintText: "0"),
// //                         style: Theme.of(context).textTheme.headlineMedium,
// //                         keyboardType: TextInputType.number,
// //                         textAlign: TextAlign.center,
// //                         inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),Form(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       margin: EdgeInsetsGeometry.all(8.0),
// //                       decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(10.0)),
// //                       height: 50.0,
// //                       width: 48.0,
// //                       child: TextFormField(
// //                         onChanged: (value){if(value.length == 1){FocusScope.of(context).nextFocus();}},
// //                         onSaved: (pin1){},
// //                         decoration: const InputDecoration(hintText: "0"),
// //                         style: Theme.of(context).textTheme.headlineMedium,
// //                         keyboardType: TextInputType.number,
// //                         textAlign: TextAlign.center,
// //                         inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),Form(
// //                 child: Row(
// //                   mainAxisAlignment: MainAxisAlignment.spaceBetween,
// //                   children: [
// //                     Container(
// //                       margin: EdgeInsetsGeometry.all(8.0),
// //                       decoration: BoxDecoration(border: Border.all(color: Colors.grey,),borderRadius: BorderRadius.circular(10.0)),
// //                       height: 50.0,
// //                       width: 48.0,
// //                       child: TextFormField(
// //                         onChanged: (value){if(value.length == 1){FocusScope.of(context).nextFocus();}},
// //                         onSaved: (pin1){},
// //                         decoration: const InputDecoration(hintText: "0"),
// //                         style: Theme.of(context).textTheme.headlineMedium,
// //                         keyboardType: TextInputType.number,
// //                         textAlign: TextAlign.center,
// //                         inputFormatters: [LengthLimitingTextInputFormatter(1),FilteringTextInputFormatter.digitsOnly,],
// //                       ),
// //                     ),
// //                   ],
// //                 ),
// //               ),
// //             ],)
// //           ],
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
// // lib/features/auth/screens/otp_verification_page.dart
//
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
//
// class OtpVerificationPage extends StatelessWidget {
//   const OtpVerificationPage({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     // Helper InputDecoration for OTP input fields to reduce repetition
//     final otpInputDecoration = InputDecoration(
//       border: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: BorderSide(color: Colors.grey.shade400),
//       ),
//       enabledBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: BorderSide(color: Colors.grey.shade300, width: 1.0),
//       ),
//       focusedBorder: OutlineInputBorder(
//         borderRadius: BorderRadius.circular(8.0),
//         borderSide: const BorderSide(color: Colors.blue, width: 2.0),
//       ),
//       contentPadding: EdgeInsets.zero, // Remove default internal padding
//       counterText: "", // Hide the default maxLength counter
//     );
//
//     // Helper widget for a single OTP TextFormField
//     Widget otpTextField() {
//       return SizedBox(
//         width: 48, // Fixed width
//         height: 50, // Fixed height
//         child: TextFormField(
//           decoration: otpInputDecoration,
//           textAlign: TextAlign.center,
//           keyboardType: TextInputType.number,
//           maxLength: 1, // Allows only one character
//           onChanged: (value) {}, // Empty onChanged for now
//           style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
//           cursorColor: Colors.blue,
//         ),
//       );
//     }
//
//     return Scaffold(
//       backgroundColor: Colors.grey[200], // Overall light gray background
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Container(
//               padding: const EdgeInsets.all(24.0),
//               decoration: BoxDecoration(
//                 color: Colors.white, // White content card background
//                 borderRadius: BorderRadius.circular(16.0),
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.grey.withOpacity(0.1),
//                     spreadRadius: 2,
//                     blurRadius: 5,
//                     offset: const Offset(0, 3),
//                   ),
//                 ],
//               ),
//               child: Column(
//                 mainAxisSize: MainAxisSize.min, // Wrap content vertically
//                 crossAxisAlignment: CrossAxisAlignment.center, // Center children horizontally
//                 children: [
//                   // ... (Logo, Welcome Text are the same)
//                   const SizedBox(height: 80.0),
//
//                   const Text("Welcome!", textAlign: TextAlign.center, style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
//                   const SizedBox(height: 8),
//                   Text("Please register to continue", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, color: Colors.grey[600])),
//                   const SizedBox(height: 24.0),
//
//                   // Main Title
//                   const Text(
//                     "Whatsapp OTP Verification",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 28.0,
//                       fontWeight: FontWeight.bold,
//                     ),
//                   ),
//                   const SizedBox(height: 16.0),
//
//                   // Description Text
//                   Text(
//                     "Please ensure that the email id mentioned is valid as we have sent an OTP to your email.",
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Colors.grey[600],
//                     ),
//                   ),
//                   const SizedBox(height: 32.0),
//
//                   // OTP Input Fields Row
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.spaceEvenly, // Distribute fields with even spacing
//                     children: List.generate(6, (index) => otpTextField()),
//                   ),
//                   const SizedBox(height: 24.0),
//
//                   // Mobile Number Display / Email ID where OTP sent
//                   Text(
//                     "OTP sent to example@email.com?", // Placeholder for email
//                     textAlign: TextAlign.center,
//                     style: TextStyle(
//                       fontSize: 16.0,
//                       color: Colors.grey[800],
//                     ),
//                   ),
//                   const SizedBox(height: 48.0), // Pushes button towards bottom
//
//                   // Resend OTP Link
//                   Row(
//                     mainAxisAlignment: MainAxisAlignment.center,
//                     children: [
//                       Text(
//                         "Didn't receive OTP code? ",
//                         style: TextStyle(color: Colors.grey[700]),
//                       ),
//                       GestureDetector(
//                         onTap: () {}, // Empty for now
//                         child: const Text(
//                           "Resend OTP",
//                           style: TextStyle(
//                             color: Colors.blue,
//                             fontWeight: FontWeight.bold,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                   const SizedBox(height: 24.0),
//
//                   // Verify Button
//                   SizedBox(
//                     height: 50.0,
//                     width: double.infinity, // Full width button
//                     child: ElevatedButton(
//                       onPressed: () {}, // Empty for now
//                       style: ElevatedButton.styleFrom(
//                         backgroundColor: Colors.blue,
//                         foregroundColor: Colors.white,
//                         shape: RoundedRectangleBorder(
//                           borderRadius: BorderRadius.circular(12.0),
//                         ),
//                       ),
//                       child: const Text(
//                         'Verify',
//                         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
//                       ),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }


// lib/features/auth/screens/otp_verification_page.dart

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'login_page.dart';

// 1. MODIFIED to only accept email
class OtpVerificationPage extends StatefulWidget {
  final String email;

  const OtpVerificationPage({super.key, required this.email});

  @override
  State<OtpVerificationPage> createState() => _OtpVerificationPageState();
}

class _OtpVerificationPageState extends State<OtpVerificationPage> {
  final List<TextEditingController> _otpControllers = List.generate(6, (index) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(6, (index) => FocusNode());

  @override
  void dispose() {
    for (var controller in _otpControllers) controller.dispose();
    for (var node in _focusNodes) node.dispose();
    super.dispose();
  }

  // 2. SIMPLIFIED verification handler
  Future<void> _handleVerification() async {
    final otp = _otpControllers.map((c) => c.text).join();
    if (otp.length != 6) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Please enter the complete OTP"), backgroundColor: Colors.orange),
      );
      return;
    }

    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    try {
      // Call the new, simpler verifyOtp function
      final message = await authProvider.verifyOtp(
        email: widget.email,
        otp: otp,
      );

// ...
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(message), backgroundColor: Colors.green),
        );
        // Navigate to LoginPage and clear all previous screens (OTP, Register)
        Navigator.pushAndRemoveUntil(
          context,
          MaterialPageRoute(builder: (context) => const LoginPage()),
              (Route<dynamic> route) => false, // This removes all routes behind it
        );
      }
//...
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(content: Text(e.toString()), backgroundColor: Colors.red),
        );
      }
    }
  }

  void _onOtpChanged(String value, int index) {
    if (value.length == 1 && index < 5) {
      FocusScope.of(context).requestFocus(_focusNodes[index + 1]);
    }
    if (value.isEmpty && index > 0) {
      FocusScope.of(context).requestFocus(_focusNodes[index - 1]);
    }
  }

  @override
  Widget build(BuildContext context) {
    Widget otpTextField(int index) {
      return SizedBox(
        width: 48,
        height: 50,
        child: TextFormField(
          controller: _otpControllers[index],
          focusNode: _focusNodes[index],
          decoration: InputDecoration(border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)), counterText: ""),
          textAlign: TextAlign.center,
          keyboardType: TextInputType.number,
          maxLength: 1,
          onChanged: (value) => _onOtpChanged(value, index),
          style: const TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
      );
    }

    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(title: const Text("Verify Your Account"), backgroundColor: Colors.transparent, elevation: 0),
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Container(
              padding: const EdgeInsets.all(24.0),
              decoration: BoxDecoration(color: Colors.white, borderRadius: BorderRadius.circular(16.0)),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text("OTP Verification", textAlign: TextAlign.center, style: TextStyle(fontSize: 28.0, fontWeight: FontWeight.bold)),
                  const SizedBox(height: 16.0),
                  Text("An OTP has been sent to\n${widget.email}", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, color: Colors.grey[600])),
                  const SizedBox(height: 32.0),
                  Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: List.generate(6, (index) => otpTextField(index))),
                  const SizedBox(height: 48.0),
                  Consumer<AuthProvider>(
                    builder: (context, provider, child) {
                      return SizedBox(
                        height: 50.0,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: provider.isLoading ? null : _handleVerification,
                          style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                          child: provider.isLoading ? const CircularProgressIndicator(color: Colors.white) : const Text('Verify', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                        ),
                      );
                    },
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}