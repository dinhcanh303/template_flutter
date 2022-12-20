import 'package:flutter/cupertino.dart';
import 'package:flutter_food/themes/app_themes.dart';
import 'package:provider/provider.dart';

class SwitchChangeTheme extends StatelessWidget {
  const SwitchChangeTheme({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
        value: Provider.of<ThemeProvider>(context).isLightModeOrSystem,
        activeColor: CupertinoColors.activeBlue,
        onChanged: (value) {
          final provider = Provider.of<ThemeProvider>(context, listen: false);
          provider.toggleTheme(value);
        });
  }
}
