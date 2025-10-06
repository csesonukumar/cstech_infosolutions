// import 'package:fl_chart/fl_chart.dart';
// import 'package:flutter/material.dart';
// import 'package:provider/provider.dart';
// import '../../auth/providers/auth_provider.dart';
//
// // 1. CONVERTED TO A STATEFUL WIDGET
// class StatsDashboardPage extends StatefulWidget {
//   const StatsDashboardPage({super.key});
//
//   @override
//   State<StatsDashboardPage> createState() => _StatsDashboardPageState();
// }
//
// class _StatsDashboardPageState extends State<StatsDashboardPage> {
//   // 2. FETCH DATA WHEN THE PAGE LOADS
//   @override
//   void initState() {
//     super.initState();
//     WidgetsBinding.instance.addPostFrameCallback((_) {
//       _fetchData();
//     });
//   }
//
//   Future<void> _fetchData() async {
//     final authProvider = Provider.of<AuthProvider>(context, listen: false);
//     try {
//       await authProvider.fetchStatsDashboardData();
//     } catch (e) {
//       if (mounted) {
//         ScaffoldMessenger.of(context).showSnackBar(
//           SnackBar(content: Text('Error fetching stats: ${e.toString()}')),
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
//         elevation: 0,
//         leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
//         title: const Text("Dashboard"),
//         actions: [
//           IconButton(icon: const Icon(Icons.headset_mic_outlined), onPressed: () {}),
//           IconButton(icon: const Icon(Icons.notifications_outlined), onPressed: () {}),
//         ],
//       ),
//       body: Consumer<AuthProvider>(
//         builder: (context, authProvider, child) {
//           // If loading, show a spinner
//           if (authProvider.isLoading) {
//             return const Center(child: CircularProgressIndicator());
//           }
//
//           // If data is not available, show a retry button
//           if (authProvider.callStats == null || authProvider.callingList == null) {
//             return Center(
//               child: Column(
//                 mainAxisAlignment: MainAxisAlignment.center,
//                 children: [
//                   const Text("Could not load dashboard data."),
//                   const SizedBox(height: 10),
//                   ElevatedButton(onPressed: _fetchData, child: const Text("Retry")),
//                 ],
//               ),
//             );
//           }
//
//           final stats = authProvider.callStats!;
//           final callingList = authProvider.callingList!;
//           final totalCalls = stats.pending + stats.called + stats.rescheduled;
//
//           return SingleChildScrollView(
//             child: Padding(
//               padding: const EdgeInsets.all(16.0),
//               child: Column(
//                 crossAxisAlignment: CrossAxisAlignment.stretch,
//                 children: [
//                   // Top Summary Card with dynamic data
//                   Card(
//                     color: Colors.white,
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
//                     elevation: 2,
//                     child: Padding(
//                       padding: const EdgeInsets.symmetric(vertical: 16.0),
//                       child: ListTile(
//                         leading: Column(
//                           crossAxisAlignment: CrossAxisAlignment.start,
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text(callingList.name, style: const TextStyle(fontSize: 16, fontWeight: FontWeight.w500)), // <-- DYNAMIC
//                             const SizedBox(height: 4),
//                             Row(
//                               crossAxisAlignment: CrossAxisAlignment.baseline,
//                               textBaseline: TextBaseline.alphabetic,
//                               children: [
//                                 Text(totalCalls.toString(), style: const TextStyle(fontSize: 32, color: Colors.blue, fontWeight: FontWeight.bold)), // <-- DYNAMIC
//                                 const SizedBox(width: 4),
//                                 const Text("CALLS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
//                               ],
//                             ),
//                           ],
//                         ),
//                         trailing: Container(
//                           width: 56, height: 56,
//                           decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12.0)),
//                           child: Center(child: Text(callingList.name.isNotEmpty ? callingList.name[0].toUpperCase() : 'L', style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white))), // <-- DYNAMIC
//                         ),
//                       ),
//                     ),
//                   ),
//                   const SizedBox(height: 24.0),
//
//                   // Donut Chart with dynamic data
//                   SizedBox(
//                     height: 250.0,
//                     child: PieChart(
//                       PieChartData(
//                         sections: [
//                           PieChartSectionData(color: Colors.orange, value: stats.pending.toDouble(), title: '', radius: 30), // <-- DYNAMIC
//                           PieChartSectionData(color: Colors.green, value: stats.called.toDouble(), title: '', radius: 30), // <-- DYNAMIC
//                           PieChartSectionData(color: Colors.purple, value: stats.rescheduled.toDouble(), title: '', radius: 30), // <-- DYNAMIC
//                         ],
//                         pieTouchData: PieTouchData(touchCallback: (event, pieTouchResponse) {}),
//                         centerSpaceRadius: 80,
//                         sectionsSpace: 4,
//                       ),
//                     ),
//                   ),
//
//                   // Detailed Stats Cards with dynamic data
//                   Row(
//                     children: [
//                       Expanded(child: _buildStatCard(color: Colors.orange, title: "Pending", count: stats.pending.toString())), // <-- DYNAMIC
//                       const SizedBox(width: 12),
//                       Expanded(child: _buildStatCard(color: Colors.green, title: "Done", count: stats.called.toString())), // <-- DYNAMIC
//                       const SizedBox(width: 12),
//                       Expanded(child: _buildStatCard(color: Colors.purple, title: "Schedule", count: stats.rescheduled.toString())), // <-- DYNAMIC
//                     ],
//                   ),
//                   const SizedBox(height: 24.0),
//
//                   // Action Button
//                   SizedBox(
//                     height: 50.0,
//                     child: ElevatedButton(
//                       onPressed: () {},
//                       style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
//                       child: const Text('Start Calling Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
//                     ),
//                   ),
//                 ],
//               ),
//             ),
//           );
//         },
//       ),
//     );
//   }
//
//   Widget _buildStatCard({required Color color, required String title, required String count}) {
//     return Card(
//       color: color.withOpacity(0.1),
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
//       elevation: 0,
//       child: Padding(
//         padding: const EdgeInsets.all(12.0),
//         child: Row(
//           children: [
//             Container(width: 4.0, height: 40, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(2.0))),
//             const SizedBox(width: 12.0),
//             Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Text(title, style: TextStyle(color: Colors.grey[700])),
//                 const SizedBox(height: 4.0),
//                 Row(
//                   crossAxisAlignment: CrossAxisAlignment.baseline,
//                   textBaseline: TextBaseline.alphabetic,
//                   children: [
//                     Text(count, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
//                     const SizedBox(width: 4),
//                     Text("Calls", style: TextStyle(color: Colors.grey[700])),
//                   ],
//                 ),
//               ],
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }


import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

// This is now a StatelessWidget with no API calls.
class StatsDashboardPage extends StatelessWidget {
  const StatsDashboardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(icon: const Icon(Icons.menu), onPressed: () {}),
        title: const Text("Dashboard"),
        actions: [
          IconButton(icon: const Icon(Icons.headset_mic_outlined), onPressed: () {}),
          IconButton(icon: const Icon(Icons.notifications_outlined), onPressed: () {}),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              // Top Summary Card with static data
              Card(
                color: Colors.white,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16.0)),
                elevation: 2,
                child: Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ListTile(
                    leading: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("Test List", style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500)), // <-- STATIC
                        SizedBox(height: 4),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.baseline,
                          textBaseline: TextBaseline.alphabetic,
                          children: [
                            Text("50", style: TextStyle(fontSize: 32, color: Colors.blue, fontWeight: FontWeight.bold)), // <-- STATIC
                            SizedBox(width: 4),
                            Text("CALLS", style: TextStyle(color: Colors.grey, fontWeight: FontWeight.w600)),
                          ],
                        ),
                      ],
                    ),
                    trailing: Container(
                      width: 56, height: 56,
                      decoration: BoxDecoration(color: Colors.blue, borderRadius: BorderRadius.circular(12.0)),
                      child: const Center(child: Text("S", style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold, color: Colors.white))), // <-- STATIC
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 24.0),

              // Donut Chart with static data
              SizedBox(
                height: 250.0,
                child: PieChart(
                  PieChartData(
                    sections: [
                      PieChartSectionData(color: Colors.orange, value: 28, title: '', radius: 30), // <-- STATIC
                      PieChartSectionData(color: Colors.green, value: 22, title: '', radius: 30), // <-- STATIC
                      PieChartSectionData(color: Colors.purple, value: 9, title: '', radius: 30), // <-- STATIC
                    ],
                    pieTouchData: PieTouchData(touchCallback: (event, pieTouchResponse) {}),
                    centerSpaceRadius: 80,
                    sectionsSpace: 4,
                  ),
                ),
              ),

              // Detailed Stats Cards with static data
              Row(
                children: [
                  Expanded(child: _buildStatCard(color: Colors.orange, title: "Pending", count: "28")), // <-- STATIC
                  const SizedBox(width: 12),
                  Expanded(child: _buildStatCard(color: Colors.green, title: "Done", count: "22")), // <-- STATIC
                  const SizedBox(width: 12),
                  Expanded(child: _buildStatCard(color: Colors.purple, title: "Schedule", count: "09")), // <-- STATIC
                ],
              ),
              const SizedBox(height: 24.0),

              // Action Button
              SizedBox(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(backgroundColor: Colors.blue, foregroundColor: Colors.white, shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0))),
                  child: const Text('Start Calling Now', style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold)),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildStatCard({required Color color, required String title, required String count}) {
    return Card(
      color: color.withOpacity(0.1),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Container(width: 4.0, height: 40, decoration: BoxDecoration(color: color, borderRadius: BorderRadius.circular(2.0))),
            const SizedBox(width: 12.0),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title, style: TextStyle(color: Colors.grey[700])),
                const SizedBox(height: 4.0),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.baseline,
                  textBaseline: TextBaseline.alphabetic,
                  children: [
                    Text(count, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                    const SizedBox(width: 4),
                    Text("Calls", style: TextStyle(color: Colors.grey[700])),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}