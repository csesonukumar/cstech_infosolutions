import 'package:flutter/material.dart';

import '../screens/stats_dashboard_page.dart';

class CallingListsBottomSheet extends StatelessWidget {
  const CallingListsBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    // A helper widget for the list items to avoid code repetition
    Widget _buildListItem({
      required String title,
      required Widget actionWidget,
    }) {
      return Container(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        decoration: BoxDecoration(
          color: Colors.blue[50], // Very light blue background
          borderRadius: BorderRadius.circular(12.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16.0,
                fontWeight: FontWeight.w500,
                color: Colors.black87,
              ),
            ),
            actionWidget,
          ],
        ),
      );
    }

    return Container(
      // This decoration creates the rounded top corners
      decoration: const BoxDecoration(
        color: Colors.white, // The main background of the content area
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(16.0),
          topRight: Radius.circular(16.0),
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min, // Make the sheet only as tall as its content
        children: [
          // Header Bar
          Container(
            padding: const EdgeInsets.symmetric(vertical: 16.0),
            decoration: BoxDecoration(
              color: Colors.blue[800], // Dark blue background
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
              ),
            ),
            child: const Center(
              child: Text(
                "CALLING LISTS",
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18.0,
                ),
              ),
            ),
          ),

          // Content Area
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Column(
              children: [
                // First List Item ("Select Calling List")
                _buildListItem(
                  title: "Select Calling List",
                  actionWidget: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.refresh, size: 20),
                    label: const Text("Refresh"),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      foregroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                ),

                const SizedBox(height: 16.0), // Spacing

// Second List Item ("Test List")
                _buildListItem(
                  title: "Test List",
                  actionWidget: InkWell( // Wrap with InkWell to make it tappable
                    onTap: () {
                      // First, close the bottom sheet
                      Navigator.pop(context);
                      // Then, navigate to the new dashboard page
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => const StatsDashboardPage()),
                      );
                    },
                    borderRadius: BorderRadius.circular(8.0),
                    child: Container(
                      padding: const EdgeInsets.all(8.0),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.grey.shade400),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      child: const Icon(
                        Icons.arrow_forward,
                        color: Colors.black54,
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