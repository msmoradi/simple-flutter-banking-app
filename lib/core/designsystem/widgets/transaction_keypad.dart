import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TransactionKeypad extends StatelessWidget {
  final Function(String) onKeyTapped;
  final VoidCallback onBackspace;
  final VoidCallback onPrimaryTapped;
  final bool isEnabled;
  final IconData? primaryIcon;

  const TransactionKeypad({
    super.key,
    required this.onKeyTapped,
    required this.onBackspace,
    required this.onPrimaryTapped,
    required this.isEnabled,
    this.primaryIcon,
  });

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _buildKeypadRow(['1', '2', '3'], context),
          _buildKeypadRow(['4', '5', '6'], context),
          _buildKeypadRow(['7', '8', '9'], context),
          _buildKeypadRow(['', '0', 'backspace'], context),
        ],
      ),
    );
  }

  Widget _buildKeypadRow(List<String> keys, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: keys.map((key) {
        if (key == 'backspace') {
          return _buildBackspaceKey(context);
        } else if (key == '' && primaryIcon != null) {
          return _buildKey('.', context);
        } else {
          return _buildKey(key, context);
        }
      }).toList(),
    );
  }

  Widget _buildKey(String key, BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: isEnabled
          ? () {
              HapticFeedback.mediumImpact();
              onKeyTapped(key);
            }
          : null,
      child: Container(
        alignment: Alignment.center,
        margin: EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.surfaceContainerLow,
        ),
        width: 70.0,
        height: 70.0,
        child: Text(
          key,
          style: Theme.of(context)
              .textTheme
              .headlineMedium
              ?.copyWith(fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  Widget _buildBackspaceKey(BuildContext context) {
    return InkWell(
      customBorder: const CircleBorder(),
      onTap: () {
        HapticFeedback.mediumImpact();
        onBackspace();
      },
      child: Container(
        alignment: Alignment.center,
        margin: const EdgeInsets.symmetric(vertical: 12.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Theme.of(context).colorScheme.surfaceContainerLow,
        ),
        width: 70.0,
        height: 70.0,
        child: Icon(
          Icons.backspace_rounded,
          size: 24.0,
        ),
      ),
    );
  }
}
