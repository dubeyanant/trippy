import 'package:flutter/material.dart';
import 'package:trippy/widgets/background_card.dart';

class Dashboard extends StatelessWidget {
  const Dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Trippy'),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: Center(
        child: ListView(children: const [
          BackgroundCard(
            destination: 'Kashmir',
            tagline: 'The ice on the cake',
            imageURL:
                'https://images.unsplash.com/photo-1598091383021-15ddea10925d?q=80&w=2070&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            timeToVisit: 'March to October & December to February',
            idealDuration: '4 to 5 days',
            placesToVisit:
                'Srinagar, Gulmarg, Jammu City, Sonamarg, Leh, Pahalgam, Pulwama',
          ),
          BackgroundCard(
            destination: 'Rajasthan',
            tagline: 'Vibrant history & majestic forts',
            imageURL:
                'https://images.unsplash.com/photo-1587295656906-b06dca8f2340?q=80&w=1932&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D',
            timeToVisit: 'October to March',
            idealDuration: '7 to 8 days',
            placesToVisit:
                'Jaipur, Mount Abu, Udaipur, Pushkar, Jaisalmer, Jodhpur, Ajmer, Bikaner, Chittorgarh, Bharatpur',
          ),
        ]),
      ),
    );
  }
}
