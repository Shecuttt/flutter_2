import 'package:flutter/material.dart';

class Quotes extends StatefulWidget {
  const Quotes({super.key});

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {
  final List<String> _quotes = []; // List to store quotes
  final TextEditingController _quoteController = TextEditingController();

  @override
  void dispose() {
    _quoteController.dispose();
    super.dispose();
  }

  // Add a new quote
  void _addQuote() {
    final newQuote = _quoteController.text.trim();
    if (newQuote.isNotEmpty) {
      setState(() {
        _quotes.add(newQuote);
      });
      _quoteController.clear();
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text('Please enter a quote')),
      );
    }
  }

  // Delete a quote
  void _deleteQuote(int index) {
    setState(() {
      _quotes.removeAt(index);
    });
  }

  // View a quote
  void _viewQuote(String quote) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Quote'),
        content: Text(quote),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: const Text('Close'),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        // Input field and Add button
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Expanded(
                child: TextField(
                  controller: _quoteController,
                  decoration: const InputDecoration(
                    hintText: 'Enter a new quote',
                    border: OutlineInputBorder(),
                  ),
                ),
              ),
              const SizedBox(width: 8),
              ElevatedButton(
                onPressed: _addQuote,
                child: const Text('Add'),
              ),
            ],
          ),
        ),
        const Divider(),
        // List of quotes
        Expanded(
          child: _quotes.isEmpty
              ? const Center(child: Text('No quotes added yet'))
              : ListView.builder(
                  itemCount: _quotes.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(_quotes[index]),
                      trailing: Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          IconButton(
                            icon: const Icon(Icons.visibility),
                            onPressed: () => _viewQuote(_quotes[index]),
                          ),
                          IconButton(
                            icon: const Icon(Icons.delete),
                            onPressed: () => _deleteQuote(index),
                          ),
                        ],
                      ),
                    );
                  },
                ),
        ),
      ],
    );
  }
}
