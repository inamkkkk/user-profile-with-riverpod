import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:user_profile_riverpod/models/user.dart';
import 'package:user_profile_riverpod/services/api_service.dart';

final userProvider = FutureProvider<User>((ref) async {
  return ApiService().fetchUser();
});

class ProfileScreen extends ConsumerWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(userProvider);

    return Scaffold(
      appBar: AppBar(
        title: const Text('User Profile'),
      ),
      body: Center(
        child: user.when(
          data: (user) {
            return Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name: ${user.name}', style: const TextStyle(fontSize: 18)),
                  const SizedBox(height: 8),
                  Text('Email: ${user.email}', style: const TextStyle(fontSize: 18)),
                  const SizedBox(height: 8),
                  Text('Phone: ${user.phone}', style: const TextStyle(fontSize: 18)),
                  const SizedBox(height: 8),
                  Text('Website: ${user.website}', style: const TextStyle(fontSize: 18)),
                ],
              ),
            );
          },
          loading: () => const CircularProgressIndicator(),
          error: (error, stack) => Text('Error: $error'),
        ),
      ),
    );
  }
}