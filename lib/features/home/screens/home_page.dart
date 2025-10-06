import 'package:flutter/material.dart';

import '../../auth/screens/registration_page.dart';
import 'dashboard_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    // A common OutlineInputBorder style for consistency
    final BorderRadius _cardBorderRadius = BorderRadius.circular(16.0);
    final String youtubeVideoId = 'bP4U-L4EHcg'; // Extracted from the provided URL
    final String youtubeThumbnailUrl = 'https://img.youtube.com/vi/$youtubeVideoId/hqdefault.jpg'; // High quality thumbnail

    return Scaffold(
      backgroundColor: Colors.grey[100], // Light gray/off-white background
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 25.0),
            // Top User Card
            Container(
              padding: const EdgeInsets.all(16.0),
              decoration: BoxDecoration(
                color: Colors.blue, // Solid blue background
                borderRadius: _cardBorderRadius,
              ),
              child: const Row(
                children: [
                  CircleAvatar(
                    radius: 28.0,
                    backgroundColor: Colors.white,
                    child: Icon(Icons.person, size: 30, color: Colors.blue),
                  ),
                  SizedBox(width: 16.0),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Hello Swati", // Placeholder name
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        "Calley Personal",
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
            const SizedBox(height: 24.0), // Spacing between cards

            // Instruction & Video Card
            Card(
              color: Colors.grey[900], // Very dark background
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12.0)),
              elevation: 4,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  // Instruction Text
                  const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      "If you are here for the first time then ensure that you have uploaded the list to call from calley Web Panel hosted on https://app.getcalley.com",
                      style: TextStyle(color: Colors.white, fontSize: 15.0),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 8.0),

                  // Video Placeholder
                  Stack(
                    alignment: Alignment.center,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.only(
                          bottomLeft: _cardBorderRadius.bottomLeft,
                          bottomRight: _cardBorderRadius.bottomRight,
                        ),
                        child: Image.network(
                          youtubeThumbnailUrl, // YouTube video thumbnail
                          fit: BoxFit.cover,
                          height: 200, // Fixed height for the video thumbnail
                          width: double.infinity,
                          errorBuilder: (context, error, stackTrace) => Container(
                            height: 200,
                            color: Colors.blue[100],
                            child: const Center(
                              child: Text(
                                "2 MINUTE CHALLENGE (Video Placeholder)",
                                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.bold),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                        ),
                      ),
                      // Play Button
                      IconButton(
                        icon: const Icon(Icons.play_circle_filled, size: 60.0, color: Colors.red),
                        onPressed: () {
                          // TODO: Implement actual video playback
                          print('Play video: https://www.youtube.com/watch?v=$youtubeVideoId');
                        },
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      // Bottom Action Bar
      bottomNavigationBar: Container(
        color: Colors.white, // Or Colors.transparent based on desired look
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        child: Row(
          children: [
            // WhatsApp Button
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.green, // WhatsApp green
                shape: BoxShape.circle,
                border: Border.all(color: Colors.white, width: 2),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    spreadRadius: 1,
                    blurRadius: 3,
                    offset: const Offset(0, 2),
                  ),
                ],
              ),
              child: IconButton(
                icon: const Icon(Icons.chat, color: Colors.white, size: 28), // Placeholder for WhatsApp icon
                onPressed: () {},
              ),
            ),
            const SizedBox(width: 16.0),

            // Start Calling Button
            Expanded(
              child: SizedBox(
                height: 50.0,
                child: ElevatedButton(
                  onPressed: () {
                    // This is the code for navigation
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => const DashboardPage()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blue,
                    foregroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12.0),
                    ),
                  ),
                  child: const Text(
                    'Start Calling Now',
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}