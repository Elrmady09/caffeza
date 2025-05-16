import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/app_colors.dart';
import '../../../core/constants/app_images.dart';
import '../../../core/widgets/space.dart';
import '../logic/delivery_tracking_provider.dart';


class DeliveryInfoSection extends StatelessWidget {
  const DeliveryInfoSection({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final deliveryProvider = Provider.of<DeliveryTrackingProvider>(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          deliveryProvider.deliveryTime,
          style: Theme.of(context).textTheme.titleLarge,
        ),
        HeightSpace(space: 0.01),
        Row(
          children: [
            const Icon(Icons.location_on, color: Colors.green, size: 18),
            const SizedBox(width: 6),
            Text(
              'Delivery to ${deliveryProvider.deliveryAddress}',
              style: const TextStyle(color: Colors.black54),
            ),
          ],
        ),
        HeightSpace(space: 0.025),
        Row(
          children: [
            const Icon(Icons.check_circle, color: Colors.green),
            const SizedBox(width: 10),
            Expanded(
              child: Text(
                'Delivered your order\nWe will deliver your goods to you in the shortest possible time.',
                style: TextStyle(
                  color: Colors.grey.shade600,
                  height: 1.4,
                ),
              ),
            ),
          ],
        ),
        HeightSpace(space: 0.025),
        Row(
          children: [
            CircleAvatar(
              radius: 24,
              backgroundImage: AssetImage(AppImages.ImageProfile),
            ),
            const SizedBox(width: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text('Brooklyn Simmons', style: TextStyle(fontWeight: FontWeight.bold)),
                Text('Personal Courier', style: TextStyle(color: Colors.grey)),
              ],
            ),
            const Spacer(),
            CircleAvatar(
              backgroundColor: Colors.green.shade100,
              child: const Icon(Icons.call, color: Colors.green),
            ),
          ],
        ),
      ],
    );
  }
}