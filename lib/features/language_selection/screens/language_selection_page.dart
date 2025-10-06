// lib/features/language_selection/screens/language_selection_page.dart

import 'package:flutter/material.dart';

import '../../auth/screens/registration_page.dart';

// First, we create a simple class to hold our language data.
// This is better than just using strings, as it keeps the data organized.
class Language {
  final String name;
  final String greeting;

  Language(this.name, this.greeting);
}

class LanguageSelectionPage extends StatefulWidget {
  const LanguageSelectionPage({super.key});

  @override
  State<LanguageSelectionPage> createState() => _LanguageSelectionPageState();
}

class _LanguageSelectionPageState extends State<LanguageSelectionPage> {
  // This is our list of supported languages. We define it here.
  final List<Language> languages = [
    Language('English', 'Hi'),
    Language('Hindi', 'नमस्ते'),
    Language('Bengali', 'হ্যালো'),
    Language('Kannada', 'ನಮಸ್ಕಾರ'),
    Language('Punjabi', 'ਸਤ ਸ੍ਰੀ ਅਕਾਲ'),
    Language('Tamil', 'வணக்கம்'),
    Language('Telugu', 'హలో'),
    Language('French', 'Bonjour'),
    Language('Spanish', 'Hola'),
  ];

  // This is the STATE VARIABLE. It holds the currently selected language.
  // We use `late` because we will initialize it in `initState`.
  late Language _selectedLanguage;

  @override
  void initState() {
    super.initState();
    // When the widget is first created, we set the default selected language.
    // Here, we default to the first language in our list, which is English.
    _selectedLanguage = languages.first;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // 1. AppBar as required
      appBar: AppBar(
        title: const Text('Choose Your Language'),
        backgroundColor: Colors.white,
        elevation: 1,
      ),
      body: Column(
        children: [
          // We use Expanded to make the ListView fill the available space.
          Expanded(
            // 2. ListView for our language options
            child: ListView.builder(
              itemCount: languages.length,
              itemBuilder: (BuildContext context, int index) {
                final language = languages[index];
                // 3. RadioListTile for each language
                return RadioListTile<Language>(
                  // <<< ADD THIS LINE
                  controlAffinity: ListTileControlAffinity.trailing,
                  title: Text(language.name),
                  subtitle: Text(language.greeting),
                  // The `value` is the unique identifier for this radio button.
                  value: language,
                  // The `groupValue` is the currently selected value for the entire group.
                  groupValue: _selectedLanguage,
                  // This function is called when the user taps on a radio button.
                  onChanged: (Language? value) {
                    if (value != null) {
                      // We call setState to update our state variable.
                      // This tells Flutter to rebuild the widget and show the new selection.
                      setState(() {
                        _selectedLanguage = value;
                      });
                    }
                  },
                );
              },
            ),
          ),
          // A small padding to give the button some space
          const SizedBox(height: 16),
          // 4. The prominent "Select" button at the bottom
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 20.0),
            child: SizedBox(
              width: double.infinity, // Makes the button stretch full-width
              child: ElevatedButton(
                // 5. Styling the button as required
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue, // Blue background
                  foregroundColor: Colors.white, // White text
                  padding: const EdgeInsets.symmetric(vertical: 16),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                ),
                // 6. The action to perform when pressed
                onPressed: () {
                  // // Currently, it just prints the name of the selected language.
                  // print('Selected language: ${_selectedLanguage.name}');
                  // // Later, we can add navigation logic here.

                  // This is the code for navigation
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const RegistrationPage()),
                  );
                },
                child: const Text(
                  'Select',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}