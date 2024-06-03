import 'package:flutter/material.dart';
import 'package:islamic_app/style/app_theme.dart';
import 'package:islamic_app/ui/home/language_sheet.dart';
import 'package:islamic_app/ui/home/theme_sheet.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class SettingsWidget extends StatefulWidget {
  const SettingsWidget({super.key});

  @override
  State<SettingsWidget> createState() => _SettingsWidgetState();
}

class _SettingsWidgetState extends State<SettingsWidget> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(AppLocalizations.of(context)!.language,
              style: Theme.of(context).textTheme.bodyMedium),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showLanguageBottomSheet(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppTheme.isDark
                    ? Theme.of(context).primaryColorDark
                    : Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: AppTheme.isDark
                        ? Theme.of(context).dividerColor
                        : Theme.of(context).primaryColor),
              ),
              child: Text(
                "English",
                style: Theme.of(context).textTheme.bodySmall,
                textAlign: TextAlign.center,
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            AppLocalizations.of(context)!.theme,
            style: Theme.of(context).textTheme.bodyMedium,
          ),
          SizedBox(
            height: 10,
          ),
          InkWell(
            onTap: () {
              showThemeBottomSheet(context);
            },
            child: Container(
              alignment: Alignment.center,
              width: double.infinity,
              padding: EdgeInsets.all(10.0),
              decoration: BoxDecoration(
                color: AppTheme.isDark
                    ? Theme.of(context).primaryColorDark
                    : Colors.white,
                borderRadius: BorderRadius.circular(15),
                border: Border.all(
                    color: AppTheme.isDark
                        ? Theme.of(context).dividerColor
                        : Theme.of(context).primaryColor),
              ),
              child: Text(
                "Light",
                style: Theme.of(context).textTheme.bodySmall,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

void showThemeBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return ThemeSheet();
      });
  //showModalBottomSheet(context: context, builder: builder)
}

void showLanguageBottomSheet(BuildContext context) {
  showModalBottomSheet(
      context: context,
      builder: (context) {
        return LanguageSheet();
      });
}
