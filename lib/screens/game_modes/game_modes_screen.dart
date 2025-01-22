import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../blocs/game/game_bloc.dart';
import '../../config/dependency_injection.dart';
import 'vocabulary_quest_setup_screen.dart';

class GameModesScreen extends StatelessWidget {
  const GameModesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar.large(
            floating: true,
            backgroundColor: theme.colorScheme.secondary,
            flexibleSpace: const FlexibleSpaceBar(
              title: Text(
                'Game Modes',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                ),
              ),
              titlePadding: EdgeInsets.only(left: 16, bottom: 16),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.all(16),
            sliver: SliverGrid(
              delegate: SliverChildListDelegate([
                _GameModeCard(
                  title: 'Vocabulary Quest',
                  description: 'Master new words through interactive challenges',
                  icon: Icons.book,
                  color: theme.colorScheme.primary,
                  onTap: () => Navigator.of(context).push(
                    MaterialPageRoute(
                      builder: (context) => const VocabularyQuestSetupScreen(),
                    ),
                  ),
                ),
                _GameModeCard(
                  title: 'Grammar Master',
                  description: 'Perfect your language structure with fun exercises',
                  icon: Icons.school,
                  color: theme.colorScheme.secondary,
                  onTap: () {},
                ),
                _GameModeCard(
                  title: 'PvP Battle',
                  description: 'Challenge other learners in real-time matches',
                  icon: Icons.people,
                  color: theme.colorScheme.tertiary,
                  onTap: () {},
                ),
                _GameModeCard(
                  title: 'Daily Challenge',
                  description: 'Complete special tasks for bonus rewards',
                  icon: Icons.calendar_today,
                  color: theme.colorScheme.error,
                  onTap: () {},
                ),
                _GameModeCard(
                  title: 'Speed Round',
                  description: 'Test your quick thinking abilities',
                  icon: Icons.timer,
                  color: Colors.orange,
                  onTap: () {},
                ),
                _GameModeCard(
                  title: 'Story Mode',
                  description: 'Learn through interactive storytelling',
                  icon: Icons.auto_stories,
                  color: Colors.purple,
                  onTap: () {},
                ),
              ]),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 16,
                crossAxisSpacing: 16,
                childAspectRatio: 0.85,
              ),
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () {},
        icon: const Icon(Icons.emoji_events),
        label: const Text('Leaderboard'),
        backgroundColor: theme.colorScheme.primary,
      ),
    );
  }
}

class _GameModeCard extends StatelessWidget {
  final String title;
  final String description;
  final IconData icon;
  final Color color;
  final VoidCallback onTap;

  const _GameModeCard({
    required this.title,
    required this.description,
    required this.icon,
    required this.color,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);
    
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(12),
        child: Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [
                color.withOpacity(0.8),
                color,
              ],
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                icon,
                size: 48,
                color: Colors.white,
              ),
              const SizedBox(height: 12),
              Text(
                title,
                textAlign: TextAlign.center,
                style: theme.textTheme.titleMedium?.copyWith(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(height: 8),
              Text(
                description,
                textAlign: TextAlign.center,
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                style: theme.textTheme.bodySmall?.copyWith(
                  color: Colors.white.withOpacity(0.9),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
