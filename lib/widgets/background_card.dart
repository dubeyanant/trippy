import 'package:flutter/material.dart';

class BackgroundCard extends StatelessWidget {
  const BackgroundCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(horizontal: 18, vertical: 12),
      color: Theme.of(context).colorScheme.secondaryContainer,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(7)),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
        child: Row(
          children: [
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(15),
                child: Image.network(
                  "https://images.unsplash.com/photo-1598091383021-15ddea10925d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D",
                  width: 150,
                  height: 150,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(height: 16),
              Text(
                'Kashmir',
                style: Theme.of(context).textTheme.titleLarge!.copyWith(
                      fontWeight: FontWeight.bold,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
              ),
              Text(
                'The ice on the cake',
                style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                      fontStyle: FontStyle.italic,
                      color: Theme.of(context).colorScheme.onSecondaryContainer,
                    ),
              ),
            ]),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Best time to visit:',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                    ),
                    Text(
                      'March to October & from December to February',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Ideal duration:',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                    ),
                    Text(
                      '4 to 5 days',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                    ),
                    const SizedBox(height: 16),
                    Text(
                      'Places to visit:',
                      style: Theme.of(context).textTheme.bodyMedium!.copyWith(
                            fontWeight: FontWeight.w500,
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                    ),
                    Text(
                      'Srinagar, Gulmarg, Jammu City, Sonamarg, Leh, Pahalgam, Pulwama',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            color: Theme.of(context)
                                .colorScheme
                                .onSecondaryContainer,
                          ),
                    ),
                  ]),
            ),
          ],
        ),
      ),
    );
  }
}