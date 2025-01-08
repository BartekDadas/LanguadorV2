import 'package:flutter/material.dart';
import '../../services/deck_service.dart';

class DeckSelectionDialog<T> extends StatefulWidget {
  final DeckService deckService;
  final T Function(String) onDeckSelected;
  final String? currentDeckName;

  const DeckSelectionDialog({
    super.key,
    required this.deckService,
    required this.onDeckSelected,
    this.currentDeckName,
  });

  @override
  State<DeckSelectionDialog> createState() => _DeckSelectionDialogState();
}

class _DeckSelectionDialogState extends State<DeckSelectionDialog> {
  final TextEditingController _newDeckController = TextEditingController();
  List<String> _deckNames = [];

  @override
  void initState() {
    super.initState();
    _loadDecks();
  }

  Future<void> _loadDecks() async {
    final deckNames = await widget.deckService.getDeckNames();
    setState(() {
      print(deckNames);
      _deckNames = deckNames;
    });
  }

  Future<void> _createNewDeck() async {
    final deckName = _newDeckController.text.trim();
    if (deckName.isEmpty) return;

    await widget.deckService.createDeck(deckName);
    _newDeckController.clear();
    await _loadDecks();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'Select Deck',
              style: Theme.of(context).textTheme.titleLarge,
            ),
            const SizedBox(height: 16),
            ListView.builder(
              shrinkWrap: true,
              itemCount: _deckNames.length,
              itemBuilder: (context, index) {
                final deckName = _deckNames[index];
                final isCurrentDeck = widget.currentDeckName == deckName;
                
                return ListTile(
                  leading: isCurrentDeck 
                    ? Icon(Icons.check_circle, 
                        color: Theme.of(context).colorScheme.primary)
                    : const SizedBox(width: 24), // maintain consistent spacing
                  title: Text(
                    deckName,
                    style: TextStyle(
                      color: isCurrentDeck ? Theme.of(context).colorScheme.primary : null,
                      fontWeight: isCurrentDeck ? FontWeight.bold : null,
                    ),
                  ),
                  onTap: () {
                    widget.onDeckSelected(deckName);
                    Navigator.of(context).pop<String?>(deckName);
                  },
                );
              },
            ),
            const Divider(),
            Row(
              children: [
                Expanded(
                  child: TextField(
                    controller: _newDeckController,
                    decoration: const InputDecoration(
                      hintText: 'New deck name',
                    ),
                  ),
                ),
                IconButton(
                  icon: const Icon(Icons.add),
                  onPressed: _createNewDeck,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
