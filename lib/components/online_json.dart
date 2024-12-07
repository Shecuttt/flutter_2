import 'package:flutter/material.dart';
import 'package:flutter_2/components/person/online_service.dart';
import 'package:flutter_2/components/person/person.dart';

class OnlineJson extends StatelessWidget {
  const OnlineJson({super.key});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: OnlineService().loadPerson(),
      builder: (context, snapshot) {
        if (snapshot.hasData) {
          Person person = snapshot.data as Person;
          return Center(
            child: Padding(
              padding: const EdgeInsets.all(16.0),
              child: Card(
                elevation: 4.0,
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CircleAvatar(
                        radius: 50.0,
                        backgroundImage: NetworkImage(person.image),
                        child: ClipOval(
                          child: Image.network(
                            person.image,
                            fit: BoxFit.cover,
                            width: 100.0,
                            height: 100.0,
                            errorBuilder: (BuildContext context, Object error,
                                StackTrace? stackTrace) {
                              return const Icon(Icons.error,
                                  size:
                                      50.0); // Fallback widget when image fails to load
                            },
                          ),
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        person.name,
                        style: const TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        person.address,
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[600],
                        ),
                      ),
                      const SizedBox(height: 5),
                      Text(
                        'Age: ${person.age}',
                        style: TextStyle(
                          fontSize: 16,
                          color: Colors.grey[800],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Text(
                        person.description,
                        textAlign: TextAlign.center,
                        style: const TextStyle(
                          fontSize: 16,
                          fontStyle: FontStyle.italic,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
