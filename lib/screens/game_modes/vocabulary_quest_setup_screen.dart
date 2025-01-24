import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';
import 'package:go_router/go_router.dart';
import 'package:shared_preferences/shared_preferences.dart';
import '../../services/deck_service.dart';
import '../../blocs/game/game_bloc.dart';
import '../../blocs/flashcard/flashcard_bloc.dart';
import 'vocabulary_quest_screen.dart';

class VocabularyQuestSetupScreen extends StatefulWidget {
  const VocabularyQuestSetupScreen({super.key});

  @override
  State<VocabularyQuestSetupScreen> createState() => _VocabularyQuestSetupScreenState();
}

class _VocabularyQuestSetupScreenState extends State<VocabularyQuestSetupScreen> {
  List<String> _deckNames = [];
  String? _selectedDeck;
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadDecks();
  }

  Future<void> _loadDecks() async {
    try {
      final prefs = await GetIt.I.getAsync<SharedPreferences>();
      final deckService = DeckService(prefs);
      final deckNames = await deckService.getDeckNames();
      
      setState(() {
        _deckNames = deckNames;
        _isLoading = false;
      });
    } catch (e) {
      if (mounted) {
        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(
            content: Text('Failed to load decks. Please try again.'),
            backgroundColor: Colors.red,
          ),
        );
      }
      setState(() {
        _isLoading = false;
      });
    }
  }

  void _startGame() {
    if (_selectedDeck == null) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('Please select a deck first'),
          backgroundColor: Colors.orange,
        ),
      );
      return;
    }

    // Initialize blocs before navigation
    
    // Navigate to the game screen
    context.go('/vocabulary-quest/play/$_selectedDeck');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Vocabulary Quest Setup'),
      ),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Text(
                    'Select a Deck',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  const SizedBox(height: 16),
                  if (_deckNames.isEmpty)
                    const Center(
                      child: Text(
                        'No decks available. Please create a deck in the Flashcards section first.',
                        textAlign: TextAlign.center,
                      ),
                    )
                  else
                    Expanded(
                      child: ListView.builder(
                        itemCount: _deckNames.length,
                        itemBuilder: (context, index) {
                          final deckName = _deckNames[index];
                          return Card(
                            child: ListTile(
                              title: Text(deckName),
                              leading: Radio<String>(
                                value: deckName,
                                groupValue: _selectedDeck,
                                onChanged: (value) {
                                  setState(() {
                                    _selectedDeck = value;
                                  });
                                },
                              ),
                              onTap: () {
                                setState(() {
                                  _selectedDeck = deckName;
                                });
                              },
                            ),
                          );
                        },
                      ),
                    ),
                  const SizedBox(height: 16),
                  ElevatedButton(
                    onPressed: _deckNames.isEmpty ? null : _startGame,
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.all(16),
                      textStyle: const TextStyle(fontSize: 18),
                    ),
                    child: const Text('Start Game'),
                  ),
                ],
              ),
            ),
    );
  }
}
