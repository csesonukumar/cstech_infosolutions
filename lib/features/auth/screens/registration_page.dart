// // // lib/features/auth/screens/registration_page.dart
// //
// // import 'package:flutter/gestures.dart';
// // import 'package:flutter/material.dart';
// //
// // class RegistrationPage extends StatelessWidget {
// //   const RegistrationPage({super.key});
// //
// //   @override
// //   Widget build(BuildContext context) {
// //     // A helper for text field borders to avoid repetition
// //     final outlineInputBorder = OutlineInputBorder(
// //       borderRadius: BorderRadius.circular(12.0),
// //       borderSide: BorderSide(color: Colors.grey.shade400),
// //     );
// //
// //     return Scaffold(
// //       // 1. Overall Layout: Light gray background
// //       backgroundColor: Colors.grey[200],
// //       body: SingleChildScrollView(
// //         // Makes the page scrollable
// //         child: Center(
// //           child: Padding(
// //             padding: const EdgeInsets.all(24.0),
// //             // 2. Content Card
// //             child: Container(
// //               padding: const EdgeInsets.all(24.0),
// //               decoration: BoxDecoration(
// //                 color: Colors.white,
// //                 borderRadius: BorderRadius.circular(16.0),
// //                 boxShadow: [
// //                   BoxShadow(
// //                     color: Colors.grey.withOpacity(0.1),
// //                     spreadRadius: 2,
// //                     blurRadius: 5,
// //                     offset: const Offset(0, 3),
// //                   ),
// //                 ],
// //               ),
// //               child: Column(
// //                 mainAxisSize: MainAxisSize.min, // Make column wrap content
// //                 crossAxisAlignment: CrossAxisAlignment.stretch,
// //                 children: [
// //                   // 3. Logo Placeholder
// //                   const SizedBox(height: 80.0),
// //
// //                   // 4. Welcome & Subtitle Text
// //                   const Text(
// //                     "Welcome!",
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(
// //                       fontSize: 32.0,
// //                       fontWeight: FontWeight.bold,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 8),
// //                   Text(
// //                     "Please register to continue",
// //                     textAlign: TextAlign.center,
// //                     style: TextStyle(
// //                       fontSize: 16.0,
// //                       color: Colors.grey[600],
// //                     ),
// //                   ),
// //                   const SizedBox(height: 24.0),
// //
// //                   // 5. Text Form Fields
// //                   TextFormField(
// //                     decoration: InputDecoration(
// //                       labelText: 'Name',
// //                       suffixIcon: const Icon(Icons.person_outline),
// //                       border: outlineInputBorder,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 16.0),
// //                   TextFormField(
// //                     decoration: InputDecoration(
// //                       labelText: 'Email address',
// //                       // suffixIcon: const Icon(Icons.email_outline),
// //                       border: outlineInputBorder,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 16.0),
// //                   TextFormField(
// //                     obscureText: true, // Hides the password text
// //                     decoration: InputDecoration(
// //                       labelText: 'Password',
// //                       suffixIcon: const Icon(Icons.lock_outline),
// //                       border: outlineInputBorder,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 16.0),
// //                   TextFormField(
// //                     initialValue: '+91',
// //                     decoration: InputDecoration(
// //                       prefixIcon: const Padding(
// //                         padding: EdgeInsets.symmetric(horizontal: 12.0),
// //                         child: Text('🇮🇳', style: TextStyle(fontSize: 24)),
// //                       ),
// //                       suffixIcon: const Icon(Icons.chat_bubble_outline),
// //                       border: outlineInputBorder,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 16.0),
// //                   TextFormField(
// //                     keyboardType: TextInputType.phone,
// //                     decoration: InputDecoration(
// //                       labelText: 'Mobile number',
// //                       suffixIcon: const Icon(Icons.phone_android_outlined),
// //                       border: outlineInputBorder,
// //                     ),
// //                   ),
// //                   const SizedBox(height: 16.0),
// //
// //                   // 6. Terms and Conditions
// //                   Row(
// //                     children: [
// //                       Checkbox(value: false, onChanged: (bool? value) {}),
// //                       Expanded(
// //                         child: RichText(
// //                           text: TextSpan(
// //                             text: 'I agree to the ',
// //                             style: TextStyle(color: Colors.grey[700]),
// //                             children: <TextSpan>[
// //                               TextSpan(
// //                                 text: 'Terms and Conditions',
// //                                 style: const TextStyle(
// //                                   color: Colors.blue,
// //                                   fontWeight: FontWeight.bold,
// //                                 ),
// //                                 // We can add a gesture recognizer here later
// //                                 recognizer: TapGestureRecognizer()
// //                                   ..onTap = () {},
// //                               ),
// //                             ],
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   const SizedBox(height: 16.0),
// //
// //                   // 7. Sign In Link
// //                   Row(
// //                     mainAxisAlignment: MainAxisAlignment.center,
// //                     children: [
// //                       const Text("Already have an account? "),
// //                       GestureDetector(
// //                         onTap: () {},
// //                         child: const Text(
// //                           "Sign In",
// //                           style: TextStyle(
// //                             color: Colors.blue,
// //                             fontWeight: FontWeight.bold,
// //                           ),
// //                         ),
// //                       ),
// //                     ],
// //                   ),
// //                   const SizedBox(height: 24.0),
// //
// //                   // 8. Sign Up Button
// //                   SizedBox(
// //                     height: 50.0,
// //                     child: ElevatedButton(
// //                       onPressed: () {},
// //                       style: ElevatedButton.styleFrom(
// //                         backgroundColor: Colors.blue,
// //                         foregroundColor: Colors.white,
// //                         shape: RoundedRectangleBorder(
// //                           borderRadius: BorderRadius.circular(12.0),
// //                         ),
// //                       ),
// //                       child: const Text(
// //                         'Sign Up',
// //                         style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
// //                       ),
// //                     ),
// //                   ),
// //                 ],
// //               ),
// //             ),
// //           ),
// //         ),
// //       ),
// //     );
// //   }
// // }
//
//
//
// // lib/features/auth/screens/registration_page.dart
//
// import 'package:c_s_tech_infosolutions/features/auth/screens/otp_verification_page.dart';
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../providers/auth_provider.dart';
//
// // 1. CONVERTED TO A STATEFUL WIDGET
// class RegistrationPage extends StatefulWidget {
//   const RegistrationPage({super.key});
//
//   @override
//   State<RegistrationPage> createState() => _RegistrationPageState();
// }
//
// class _RegistrationPageState extends State<RegistrationPage> {
//   // 2. FORM KEY AND TEXT EDITING CONTROLLERS
//   // A key to uniquely identify our form and for validation
//   final _formKey = GlobalKey<FormState>();
//
//   // Controllers to get the text from the text fields
//   final _nameController = TextEditingController();
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//
//   // 3. DISPOSE CONTROLLERS
//   // It's important to dispose of controllers when the widget is removed
//   @override
//   void dispose() {
//     _nameController.dispose();
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }
//
//   // 4. THE REGISTRATION HANDLER FUNCTION
//   Future<void> _handleRegistration() async {
//     // First, validate the form. If it's not valid, do nothing.
//     if (!_formKey.currentState!.validate()) {
//       return;
//     }
//
//     // Access the AuthProvider
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//
//     try {
//       // Call the register method
//       final successMessage = await authProvider.register(
//         username: _nameController.text,
//         email: _emailController.text,
//         password: _passwordController.text,
//       );
//
//       // Show success message if registration is successful
//       if (mounted) { // Check if the widget is still in the tree
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text(successMessage),
//             backgroundColor: Colors.green,
//           ),
//         );
//         // Optional: Navigate to another page after success
//         // Navigator.of(context).pop();
//       }
//     } catch (e) {
//       // Show error message if registration fails
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(
//             content: Text('Error: ${e.toString()}'),
//             backgroundColor: Colors.red,
//           ),
//         );
//       }
//     }
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     final outlineInputBorder = OutlineInputBorder(
//       borderRadius: BorderRadius.circular(12.0),
//       borderSide: BorderSide(color: Colors.grey.shade400),
//     );
//
//     // 5. CONSUMER WIDGET TO LISTEN FOR CHANGES
//     return Scaffold(
//       backgroundColor: Colors.grey[200],
//       body: SingleChildScrollView(
//         child: Center(
//           child: Padding(
//             padding: const EdgeInsets.all(24.0),
//             child: Form( // 6. WRAP THE COLUMN WITH A FORM WIDGET
//               key: _formKey,
//               child: Container(
//                 // ... (Container decoration is the same)
//                 padding: const EdgeInsets.all(24.0),
//                 decoration: BoxDecoration(
//                   color: Colors.white,
//                   borderRadius: BorderRadius.circular(16.0),
//                   boxShadow: [
//                     BoxShadow(
//                       color: Colors.grey.withOpacity(0.1),
//                       spreadRadius: 2,
//                       blurRadius: 5,
//                       offset: const Offset(0, 3),
//                     ),
//                   ],
//                 ),
//                 child: Column(
//                   mainAxisSize: MainAxisSize.min,
//                   crossAxisAlignment: CrossAxisAlignment.stretch,
//                   children: [
//                     // ... (Logo, Welcome Text are the same)
//                     const SizedBox(height: 80.0),
//
//                     const Text("Welcome!", textAlign: TextAlign.center, style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
//                     const SizedBox(height: 8),
//                     Text("Please register to continue", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, color: Colors.grey[600])),
//                     const SizedBox(height: 24.0),
//
//                     // 7. ATTACH CONTROLLERS AND VALIDATORS
//                     TextFormField(
//                       controller: _nameController,
//                       decoration: InputDecoration(labelText: 'Name', suffixIcon: const Icon(Icons.person_outline), border: outlineInputBorder),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter your name';
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(height: 16.0),
//                     TextFormField(
//                       controller: _emailController,
//                       decoration: InputDecoration(labelText: 'Email address',
//                           // suffixIcon: const Icon(Icons.email_outline),
//                           border: outlineInputBorder),
//                       validator: (value) {
//                         if (value == null || value.isEmpty || !value.contains('@')) {
//                           return 'Please enter a valid email';
//                         }
//                         return null;
//                       },
//                     ),
//                     const SizedBox(height: 16.0),
//                     TextFormField(
//                       controller: _passwordController,
//                       obscureText: true,
//                       decoration: InputDecoration(labelText: 'Password', suffixIcon: const Icon(Icons.lock_outline), border: outlineInputBorder),
//                       validator: (value) {
//                         if (value == null || value.isEmpty) {
//                           return 'Please enter your password';
//                         }
//                         return null;
//                       },
//                     ),
//                     // ... (Other fields are the same, we're not sending them to API for now)
//                     const SizedBox(height: 16.0),
//                     TextFormField(initialValue: '+91', decoration: InputDecoration(prefixIcon: const Padding(padding: EdgeInsets.symmetric(horizontal: 12.0), child: Text('🇮🇳', style: TextStyle(fontSize: 24))), suffixIcon: const Icon(Icons.chat_bubble_outline), border: outlineInputBorder)),
//                     const SizedBox(height: 16.0),
//                     TextFormField(keyboardType: TextInputType.phone, decoration: InputDecoration(labelText: 'Mobile number', suffixIcon: const Icon(Icons.phone_android_outlined), border: outlineInputBorder)),
//
//                     // ... (Terms and Conditions, Sign In Link are the same)
//                     const SizedBox(height: 16.0),
//                     Row(children: [ Checkbox(value: false, onChanged: (bool? value) {}), Expanded(child: RichText(text: TextSpan(text: 'I agree to the ', style: TextStyle(color: Colors.grey[700]), children: <TextSpan>[ TextSpan(text: 'Terms and Conditions', style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold), recognizer: TapGestureRecognizer()..onTap = () {})])))]),
//                     const SizedBox(height: 16.0),
//                     Row(mainAxisAlignment: MainAxisAlignment.center, children: [ const Text("Already have an account? "), GestureDetector(onTap: () {}, child: const Text("Sign In", style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)))]),
//                     const SizedBox(height: 24.0),
//
//                     // 8. UPDATE THE BUTTON
//                     Consumer<AuthProvider>(
//                       builder: (context, provider, child) {
//                         return SizedBox(
//                           height: 50.0,
//                           child: ElevatedButton(
//                             onPressed: (){
//                               // This is the code for navigation
//                               Navigator.push(context,MaterialPageRoute(builder: (context) =>
//                                   // otp_Verification_Page()
//                               OtpVerificationPage()
//                               ));
//                             },
//                             // onPressed: provider.isLoading ? null : _handleRegistration,
//                             style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
//                             child: provider.isLoading
//                                 ? const CircularProgressIndicator(color: Colors.white)
//                                 : const Text('Sign Up', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                           ),
//                         );
//                       },
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
//
//



import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../providers/auth_provider.dart';
import 'otp_verification_page.dart';
import 'login_page.dart';

class RegistrationPage extends StatefulWidget {
  const RegistrationPage({super.key});

  @override
  State<RegistrationPage> createState() => _RegistrationPageState();
}

class _RegistrationPageState extends State<RegistrationPage> {
  // A key to uniquely identify our form for validation
  final _formKey = GlobalKey<FormState>();

  // Controllers to get the text from the text fields
  final _nameController = TextEditingController();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _mobileController = TextEditingController(); // Controller for mobile number

  // It's important to dispose of controllers when the widget is removed
  @override
  void dispose() {
    _nameController.dispose();
    _emailController.dispose();
    _passwordController.dispose();
    _mobileController.dispose();
    super.dispose();
  }

  // **THIS IS THE FINAL, CORRECT LOGIC FOR THE BUTTON**
  Future<void> _handleRegistration() async {
    // 1. Validate the form. If it's not valid, stop here.
    if (!_formKey.currentState!.validate()) {
      return;
    }

    // 2. Access the AuthProvider to call our API logic
    final authProvider = Provider.of<AuthProvider>(context, listen: false);

    try {
      // 3. Call the function that registers the user AND sends the OTP
      await authProvider.registerAndSendOtp(
        username: _nameController.text,
        email: _emailController.text,
        password: _passwordController.text,
      );

      // 4. If successful, show a success message and navigate
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text("Registration successful! Check your email for an OTP."),
            backgroundColor: Colors.green,
          ),
        );

        Navigator.push(
          context,
          MaterialPageRoute(
            // We pass the email to the OTP page so it knows who to verify
            builder: (context) => OtpVerificationPage(email: _emailController.text),
          ),
        );
      }
    } catch (e) {
      // 5. If any error occurs, show an error message
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Error: ${e.toString()}'),
            backgroundColor: Colors.red,
          ),
        );
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    final outlineInputBorder = OutlineInputBorder(
      borderRadius: BorderRadius.circular(12.0),
      borderSide: BorderSide(color: Colors.grey.shade400),
    );

    return Scaffold(
      backgroundColor: Colors.grey[200],
      body: SingleChildScrollView(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(24.0),
            child: Form(
              key: _formKey,
              child: Container(
                padding: const EdgeInsets.all(24.0),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.grey.withOpacity(0.1),
                      spreadRadius: 2,
                      blurRadius: 5,
                    ),
                  ],
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    const SizedBox(height: 80.0),
                    const Text("Welcome!", textAlign: TextAlign.center, style: TextStyle(fontSize: 32.0, fontWeight: FontWeight.bold)),
                    const SizedBox(height: 8),
                    Text("Please register to continue", textAlign: TextAlign.center, style: TextStyle(fontSize: 16.0, color: Colors.grey[600])),
                    const SizedBox(height: 24.0),

                    // Name Field
                    TextFormField(
                      controller: _nameController,
                      decoration: InputDecoration(labelText: 'Name', suffixIcon: const Icon(Icons.person_outline), border: outlineInputBorder),
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Please enter your name';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),

                    // Email Field
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(labelText: 'Email address',
                          // suffixIcon: const Icon(Icons.email_outline),
                          border: outlineInputBorder),
                      validator: (value) {
                        if (value == null || value.isEmpty || !value.contains('@')) return 'Please enter a valid email';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),

                    // Password Field
                    TextFormField(
                      controller: _passwordController,
                      obscureText: true,
                      decoration: InputDecoration(labelText: 'Password', suffixIcon: const Icon(Icons.lock_outline), border: outlineInputBorder),
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Please enter your password';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),

                    // Country Code Field (UI only)
                    TextFormField(
                      initialValue: '+91',
                      readOnly: true, // User cannot edit this
                      decoration: InputDecoration(prefixIcon: const Padding(padding: EdgeInsets.all(12.0), child: Text('🇮🇳', style: TextStyle(fontSize: 24))), border: outlineInputBorder),
                    ),
                    const SizedBox(height: 16.0),

                    // Mobile Number Field
                    TextFormField(
                      controller: _mobileController,
                      keyboardType: TextInputType.phone,
                      decoration: InputDecoration(labelText: 'Mobile number', suffixIcon: const Icon(Icons.phone_android_outlined), border: outlineInputBorder),
                      validator: (value) {
                        if (value == null || value.isEmpty) return 'Please enter your mobile number';
                        return null;
                      },
                    ),
                    const SizedBox(height: 16.0),

                    // Terms and Conditions (UI only)
                    Row(
                      children: [
                        Checkbox(value: true, onChanged: (bool? value) {}), // Defaulted to true for UI
                        Expanded(
                          child: RichText(
                            text: TextSpan(
                              text: 'I agree to the ', style: TextStyle(color: Colors.grey[700]),
                              children: <TextSpan>[
                                TextSpan(text: 'Terms and Conditions', style: const TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                                    recognizer: TapGestureRecognizer()..onTap = () {}),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 16.0),

                    // Sign In Link (UI only)
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text("Already have an account? "),
                        // ...
                        GestureDetector(
                          onTap: () {
                            // Navigate to the LoginPage
                            Navigator.push(
                              context,
                              MaterialPageRoute(builder: (context) => const LoginPage()),
                            );
                          },
                          child: const Text(
                              "Sign In",
                              style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold)
                          ),
                        ),
//...
                      ],
                    ),
                    const SizedBox(height: 24.0),

                    // **THE SIGN UP BUTTON WITH CORRECT LOGIC**
                    Consumer<AuthProvider>(
                      builder: (context, provider, child) {
                        return SizedBox(
                          height: 50.0,
                          child: ElevatedButton(
                            // This connects the button to our logic
                            onPressed: provider.isLoading ? null : _handleRegistration,
                            style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                            child: provider.isLoading
                                ? const CircularProgressIndicator(color: Colors.white)
                                : const Text('Sign Up', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
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
      ),
    );
  }
}