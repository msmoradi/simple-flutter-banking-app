import 'package:banx/core/designsystem/widgets/components/glass_morphism.dart';
import 'package:banx/feature/home/presentation/view/gold_page.dart';
import 'package:banx/feature/home/presentation/view/normal_page.dart';
import 'package:banx/feature/home/presentation/view/saffron_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeContent extends StatefulWidget {
  const HomeContent({super.key});

  @override
  State<HomeContent> createState() => _HomeContentState();
}

class _HomeContentState extends State<HomeContent> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text(
          'روز بخیر مهرداد!',
        ),
        titleTextStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
              color: Theme.of(context).colorScheme.onSurface,
            ),
        centerTitle: false,
        leadingWidth: 48.0,
        titleSpacing: 6.0,
        leading: Padding(
          padding: const EdgeInsets.only(right: 16.0),
          child: Image.asset(
            'assets/images/circle_avatar.png',
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/bell.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              'assets/icons/help-circle.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: PageView.custom(
        childrenDelegate: SliverChildListDelegate(
          [
            NormalPage(),
            GoldPage(),
            SaffronPage(),
          ],
        ),
      ),
    );
  }
}

class GlassRow extends StatelessWidget {
  final int currentPageIndex;
  final String title;
  final String subtitle;

  GlassRow(
      {super.key,
      required this.currentPageIndex,
      required this.title,
      required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return GlassMorphism(
      blur: 20,
      color: Theme.of(context).colorScheme.surface,
      opacity: 0.2,
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                title,
                style: Theme.of(context)
                    .textTheme
                    .titleMedium
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Text(
                subtitle,
                style: Theme.of(context).textTheme.headlineSmall?.copyWith(
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: List.generate(3, (index) {
                    return _indicator(currentPageIndex == index, context);
                  }),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _indicator(bool isActive, BuildContext context) {
    return Container(
      height: 10,
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 150),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        height: 8.0,
        width: 8.0,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isActive
              ? Theme.of(context).colorScheme.primary
              : Theme.of(context).colorScheme.onPrimaryContainer,
        ),
      ),
    );
  }
}
