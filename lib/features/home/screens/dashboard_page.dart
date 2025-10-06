import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../widgets/calling_lists_bottom_sheet.dart';

class DashboardPage extends StatelessWidget {
  const DashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100], // Light gray background

      // AppBar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 1,
        leading: IconButton(
          icon: const Icon(Icons.menu, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          "Dashboard",
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            icon: const Icon(Icons.headset_mic_outlined, color: Colors.black),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications_outlined, color: Colors.black),
            onPressed: () {},
          ),
        ],
      ),

      // Body with ScrollView
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            // Top User Card
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
              decoration: BoxDecoration(
                color: Colors.blue[700],
                borderRadius: BorderRadius.circular(16.0),
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 28,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 30, color: Colors.blue),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Swati",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Welcome to Calley!",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 14.0,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // Main Content Card ("Load Number to Call")
            Card(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              elevation: 2,
              margin: EdgeInsets.zero,
              child: Column(
                children: [
                  // Card Header
                  Container(
                    padding: const EdgeInsets.all(12.0),
                    decoration: BoxDecoration(
                      color: Colors.blue[900], // Dark blue background
                      borderRadius: const BorderRadius.only(
                        topLeft: Radius.circular(12.0),
                        topRight: Radius.circular(12.0),
                      ),
                    ),
                    child: const Center(
                      child: Text(
                        "LOAD NUMBER TO CALL",
                        style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          letterSpacing: 1.2,
                        ),
                      ),
                    ),
                  ),
                  // Card Body
                  Container(
                    padding: const EdgeInsets.all(16.0),
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(12.0),
                        bottomRight: Radius.circular(12.0),
                      ),
                    ),
                    child: Column(
                      children: [
                        // Instruction Text with RichText
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: TextStyle(
                              color: Colors.grey[700],
                              fontSize: 15.0,
                              height: 1.5,
                            ),
                            children: [
                              const TextSpan(
                                text: "Visit ",
                              ),
                              TextSpan(
                                text: "https://app.getcalley.com",
                                style: const TextStyle(
                                  color: Colors.blue,
                                  decoration: TextDecoration.underline,
                                ),
                                recognizer: TapGestureRecognizer()..onTap = () {},
                              ),
                              const TextSpan(
                                text: " to upload numbers that you wish to call using Calley Mobile App.",
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 20.0),

                        // Illustration Placeholder
                        Container(
                          height: 150,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.grey[200],
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.laptop_mac_outlined,
                              size: 80,
                              color: Colors.grey[400],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20.0),

            // Action Buttons
            Row(
              children: [
                // WhatsApp Button
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    borderRadius: BorderRadius.circular(12.0),
                    border: Border.all(color: Colors.white, width: 2),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.15),
                        blurRadius: 5,
                        offset: const Offset(0, 3),
                      ),
                    ],
                  ),
                  child: IconButton(
                    icon: const Icon(Icons.chat_bubble_outline, color: Colors.white),
                    onPressed: () {},
                  ),
                ),
                const SizedBox(width: 12.0),

                // Start Calling Button
                Expanded(
                  child: SizedBox(
                    height: 60,
                    child: ElevatedButton(
                      onPressed: () {
                        // This function displays the bottom sheet
                        showModalBottomSheet(
                          context: context,
                          // This makes the background transparent so the widget's rounded corners are visible
                          backgroundColor: Colors.transparent,
                          builder: (BuildContext context) {
                            return const CallingListsBottomSheet();
                          },
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.blue[700],
                        foregroundColor: Colors.white,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12.0),
                        ),
                      ),
                      child: const Text(
                        "Start Calling Now",
                        style: TextStyle(
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),

      // Floating Action Button
      floatingActionButton: FloatingActionButton(
        onPressed: () {


        },
        backgroundColor: Colors.blue[700],
        child: const Icon(Icons.play_arrow, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,

      // Bottom Navigation Bar
      bottomNavigationBar: BottomAppBar(
        shape: const CircularNotchedRectangle(), // Creates the notch for the FAB
        notchMargin: 8.0,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: const Icon(Icons.home_outlined), onPressed: () {}),
            IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
            const SizedBox(width: 48), // The space for the notch
            IconButton(icon: const Icon(Icons.call_outlined), onPressed: () {}),
            IconButton(icon: const Icon(Icons.calendar_today_outlined), onPressed: () {}),
          ],
        ),
      ),
    );
  }
}


//
// // lib/features/home/screens/dashboard_page.dart
//
// import 'package:flutter/gestures.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../auth/providers/auth_provider.dart';
// import '../widgets/calling_lists_bottom_sheet.dart';
//
// // 1. CONVERTED TO A STATEFUL WIDGET
// class DashboardPage extends StatefulWidget {
//   const DashboardPage({super.key});
//
//   @override
//   State<DashboardPage> createState() => _DashboardPageState();
// }
//
// class _DashboardPageState extends State<DashboardPage> {
//   // 2. FETCH DATA WHEN THE PAGE LOADS
//   @override
//   void initState() {
//     super.initState();
//     // Use addPostFrameCallback to ensure the context is available
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _fetchData();
//     });
//   }
//
//   Future<void> _fetchData() async {
//     // We use listen: false here because we're not rebuilding the widget,
//     // just triggering an action.
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//     try {
//       await authProvider.fetchDashboardData();
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error fetching data: ${e.toString()}')),
//         );
//       }
//     }
//   }
//
//   // 3. BUILD THE DYNAMIC UI
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: Colors.grey[100],
//       appBar: AppBar(
//         backgroundColor: Colors.white,
//         elevation: 1,
//         leading: IconButton(
//           icon: const Icon(Icons.menu, color: Colors.black),
//           onPressed: () {},
//         ),
//         title: const Text("Dashboard", style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold)),
//         actions: [
//           IconButton(icon: const Icon(Icons.headset_mic_outlined, color: Colors.black), onPressed: () {}),
//           IconButton(icon: const Icon(Icons.notifications_outlined, color: Colors.black), onPressed: () {}),
//         ],
//       ),
//
//       // Use a Consumer to listen for changes in AuthProvider
//       body: Consumer<AuthProvider>(
//         builder: (context, authProvider, child) {
//           // If loading, show a spinner
//           if (authProvider.isLoading) {
//             return const Center(child: CircularProgressIndicator());
//           }
//
//           // If there's no user or list data, show a message
//           if (authProvider.user == null || authProvider.callingList == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Could not load data. Please try again."),
//                   const SizedBox(height: 10),
//                   ElevatedButton(onPressed: _fetchData, child: const Text("Retry"))
//                 ],
//               ),
//             );
//           }
//
//           // If data is available, build the main UI
//           final user = authProvider.user!;
//           final callingList = authProvider.callingList!;
//
//           return SingleChildScrollView(
//             padding: const EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.stretch,
//               children: [
//                 // Top User Card with dynamic data
//                 Container(
//                   padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 20.0),
//                   decoration: BoxDecoration(color: Colors.blue[700], borderRadius: BorderRadius.circular(16.0)),
//                   child: Row(
//                     children: [
//                       const CircleAvatar(radius: 28, backgroundColor: Colors.white, child: Icon(Icons.person, size: 30, color: Colors.blue)),
//                       const SizedBox(width: 16.0),
//                       Column(
//                         crossAxisAlignment: CrossAxisAlignment.start,
//                         children: [
//                           Text(
//                             "Hello ${user.username}", // <-- DYNAMIC USERNAME
//                             style: const TextStyle(color: Colors.white, fontSize: 18.0, fontWeight: FontWeight.bold),
//                           ),
//                           const Text("Welcome to Calley!", style: TextStyle(color: Colors.white, fontSize: 14.0)),
//                         ],
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20.0),
//
//                 // Main Content Card with dynamic data
//                 Card(
//                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//                   elevation: 2,
//                   margin: EdgeInsets.zero,
//                   child: Column(
//                     children: [
//                       Container(
//                         padding: const EdgeInsets.all(12.0),
//                         decoration: BoxDecoration(color: Colors.blue[900], borderRadius: const BorderRadius.only(topLeft: Radius.circular(12.0), topRight: Radius.circular(12.0))),
//                         child: Center(
//                           child: Text(
//                             callingList.name.toUpperCase(), // <-- DYNAMIC LIST NAME
//                             style: const TextStyle(color: Colors.white, fontWeight: FontWeight.bold, letterSpacing: 1.2),
//                           ),
//                         ),
//                       ),
//                       Container(
//                         padding: const EdgeInsets.all(16.0),
//                         decoration: const BoxDecoration(color: Colors.white, borderRadius: BorderRadius.only(bottomLeft: Radius.circular(12.0), bottomRight: Radius.circular(12.0))),
//                         child: Column(
//                           children: [
//                             RichText(
//                               textAlign: TextAlign.center,
//                               text: TextSpan(
//                                 style: TextStyle(color: Colors.grey[700], fontSize: 15.0, height: 1.5),
//                                 children: [
//                                   const TextSpan(text: "Visit "),
//                                   TextSpan(text: "https://app.getcalley.com", style: const TextStyle(color: Colors.blue, decoration: TextDecoration.underline), recognizer: TapGestureRecognizer()..onTap = () {}),
//                                   const TextSpan(text: " to upload numbers that you wish to call using Calley Mobile App."),
//                                 ],
//                               ),
//                             ),
//                             const SizedBox(height: 20.0),
//                             Container(
//                               height: 150,
//                               width: double.infinity,
//                               decoration: BoxDecoration(color: Colors.grey[200], borderRadius: BorderRadius.circular(8.0)),
//                               child: Center(child: Icon(Icons.laptop_mac_outlined, size: 80, color: Colors.grey[400])),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 const SizedBox(height: 20.0),
//
//                 // ... (Action buttons remain the same)
//               ],
//             ),
//           );
//         },
//       ),
//
//       // Floating Action Button and Bottom Nav Bar remain the same
//       floatingActionButton: FloatingActionButton(
//         onPressed: () {
//           showModalBottomSheet(
//             context: context,
//             backgroundColor: Colors.transparent,
//             builder: (BuildContext context) {
//               return const CallingListsBottomSheet();
//             },
//           );
//         },
//         backgroundColor: Colors.blue[700],
//         child: const Icon(Icons.play_arrow, color: Colors.white),
//       ),
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
//       bottomNavigationBar: BottomAppBar(
//         shape: const CircularNotchedRectangle(),
//         notchMargin: 8.0,
//         child: Row(
//           mainAxisAlignment: MainAxisAlignment.spaceAround,
//           children: <Widget>[
//             IconButton(icon: const Icon(Icons.home_outlined), onPressed: () {}),
//             IconButton(icon: const Icon(Icons.person_outline), onPressed: () {}),
//             const SizedBox(width: 48),
//             IconButton(icon: const Icon(Icons.call_outlined), onPressed: () {}),
//             IconButton(icon: const Icon(Icons.calendar_today_outlined), onPressed: () {}),
//           ],
//         ),
//       ),
//     );
//   }
// }