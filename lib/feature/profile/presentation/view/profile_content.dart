import 'package:banx/core/designsystem/widgets/button/fill/full_fill_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ProfileContent extends StatelessWidget {
  final String userProfile;
  final String fullName;
  final String userName;
  final VoidCallback onExitClick;

  const ProfileContent({
    super.key,
    required this.userProfile,
    required this.fullName,
    required this.userName,
    required this.onExitClick,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        surfaceTintColor: Colors.transparent,
        title: const Text('تنظیمات'),
        titleTextStyle: Theme.of(context).textTheme.headlineSmall?.copyWith(
              color: Theme.of(context).colorScheme.primary,
              fontWeight: FontWeight.bold,
            ),
        centerTitle: false,
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset(
              width: 32,
              height: 32,
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
              width: 32,
              height: 32,
              'assets/icons/help-circle.svg',
              colorFilter: ColorFilter.mode(
                Theme.of(context).colorScheme.primary,
                BlendMode.srcIn,
              ),
            ),
          ),
        ],
      ),
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 16),
            ProfileHeader(
              userProfile: userProfile,
              fullName: fullName,
              userName: userName,
            ),
            const SizedBox(height: 16),
            const Divider(),
            const SizedBox(height: 30),
            MenuList(onExitClick: onExitClick),
            // Use the new MenuList widget
          ],
        ),
      )),
    );
  }
}

class ProfileHeader extends StatelessWidget {
  final String userProfile;
  final String fullName;
  final String userName;

  const ProfileHeader(
      {super.key,
      required this.userProfile,
      required this.fullName,
      required this.userName});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        children: [
          CircleAvatar(radius: 32, backgroundImage: NetworkImage(userProfile)),
          const SizedBox(width: 16),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                fullName,
                style: Theme.of(context)
                    .textTheme
                    .labelLarge
                    ?.copyWith(color: Theme.of(context).colorScheme.primary),
              ),
              const SizedBox(height: 8),
              Text(
                userName,
                style: Theme.of(context).textTheme.bodySmall?.copyWith(
                      color: Theme.of(context).colorScheme.onSurfaceVariant,
                    ),
              ),
            ],
          ),
          const Spacer(),
          PrimaryFillButton(
            onPressed: () {},
            fillWidth: false,
            buttonHeight: ButtonHeight.small,
            label: 'ویرایش',
          ),
        ],
      ),
    );
  }
}

class MenuList extends StatelessWidget {
  final VoidCallback onExitClick;

  const MenuList({super.key, required this.onExitClick});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MenuItem(
          iconPath: 'assets/icons/user-01.svg',
          label: 'حساب کاربری',
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/lock.svg',
          label: 'امنیت و حریم خصوصی',
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/bell.svg',
          label: 'اطلاع رسانی',
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/download.svg',
          label: 'به‌روزرسانی',
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/trello.svg',
          label: 'قراردادها',
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/invoice.svg',
          label: 'شرایط و قوانین استفاده',
          textColor: Theme.of(context).colorScheme.primary, // Special style
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/star.svg',
          label: 'شرکت در نظرسنجی',
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/info-circle.svg',
          label: 'درباره ما',
          onTap: () {},
        ),
        MenuItem(
          iconPath: 'assets/icons/logout.svg',
          label: 'خروج از حساب کاربری',
          onTap: onExitClick,
        ),
      ],
    );
  }
}

class MenuItem extends StatelessWidget {
  final String iconPath;
  final String label;
  final VoidCallback onTap;
  final Color? textColor;

  const MenuItem({
    super.key,
    required this.iconPath,
    required this.label,
    required this.onTap,
    this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: SvgPicture.asset(
        iconPath,
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(
          textColor ?? Theme.of(context).colorScheme.onSurface,
          BlendMode.srcIn,
        ),
      ),
      title: Text(
        label,
        style: Theme.of(context).textTheme.bodyLarge?.copyWith(
              color: textColor ?? Theme.of(context).colorScheme.onSurface,
            ),
      ),
      titleTextStyle: Theme.of(context).textTheme.labelLarge?.copyWith(
            color: textColor ?? Theme.of(context).colorScheme.primary,
          ),
      trailing: SvgPicture.asset(
        'assets/icons/chevron-left.svg',
        width: 24,
        height: 24,
        colorFilter: ColorFilter.mode(
          textColor ?? Theme.of(context).colorScheme.onSurface,
          BlendMode.srcIn,
        ),
      ),
      onTap: onTap,
    );
  }
}
