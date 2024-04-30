import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:slash/presentation/controllers/search_food.dart';

class SearchScreen extends HookConsumerWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final searchController = useTextEditingController();
    useListenable(searchController);
    final foods =
        ref.watch(searchFoodControllerProvider(keyword: searchController.text));

    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.black,
        body: Column(
          children: [
            SizedBox(
              height: 70,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: SearchBar(
                  padding: MaterialStateProperty.all(const EdgeInsets.all(16)),
                  controller: searchController,
                ),
              ),
            ),
            Expanded(
              child: foods.when(
                  data: (foods) => foods.isEmpty
                      ? const Center(
                          child: Text('No Items Founded!'),
                        )
                      : ListView.builder(
                          itemCount: foods.length,
                          itemBuilder: (context, index) {
                            return Container(
                                height: 40,
                                margin: const EdgeInsets.symmetric(
                                    horizontal: 8, vertical: 4),
                                decoration: BoxDecoration(
                                    color: Colors.cyan,
                                    borderRadius: BorderRadius.circular(16)),
                                child: Center(
                                    child: Text(
                                  foods[index],
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 17,
                                      fontWeight: FontWeight.bold),
                                )));
                          }),
                  error: (e, s) => const Center(child: Text('error')),
                  loading: () =>
                      const Center(child: CircularProgressIndicator())),
            ),
          ],
        ),
      ),
    );
  }
}
