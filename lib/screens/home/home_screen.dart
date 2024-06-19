import 'package:flutter/material.dart';
import 'package:sayeer/common/widgets/gridenant_color/gradient_color.dart';
import 'package:sayeer/common/appbar/Drawer/DrawerMenu.dart';
import 'package:sayeer/controllers/homeController.dart';
import 'package:sayeer/screens/home/widgets/Categories.dart';
import 'package:sayeer/utils/constants/sizes.dart';
import 'widgets/search.dart';
import 'widgets/slider.dart';
import 'package:iconsax/iconsax.dart';
import 'package:sayeer/utils/constants/image_strings.dart';
import 'package:sayeer/common/NavBar/CustomeNav.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = HomeController.Instance;

    return Scaffold(
      drawer: DrawerMenu(),
      body: Stack(
        children: [
          TGradientColor(
            child: SingleChildScrollView(
              child: Column(
                children: [
                  HomeSearch(),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      horizontal: TSizes.defaultSpace,
                    ),
                    child: TPromoSlider(
                      banners: [
                        TImages.promoBannerMahtar,
                        TImages.promoBannerSayerOffer,
                      ],
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                      vertical: TSizes.defaultSpace,
                    ),
                    child: CustomSection(),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
      bottomNavigationBar: Bar(
        destinations: const [
          NavigationDestination(icon: Icon(Iconsax.home), label: 'الرئيسية'),
          NavigationDestination(icon: Icon(Iconsax.car), label: 'السيارات'),
          NavigationDestination(icon: Icon(Iconsax.heart), label: 'المفضلة'),
          NavigationDestination(icon: Icon(Iconsax.award4), label: 'العروض'),
        ],
        onDestinationSelected: (index) {
          controller.handleBottomNavigation(index);
        },
      ),
    );
  }
}
