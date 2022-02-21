part of '../theme_screen.dart';

class ThemeContent extends StatefulWidget {
  const ThemeContent({Key? key}) : super(key: key);

  @override
  State<ThemeContent> createState() => _ThemeContentState();
}

class _ThemeContentState extends State<ThemeContent> {
  String? isDarkMode = 'Enable';

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Expanded(
          child: Padding(
            padding: SetPadding.symetricVerticalMedium,
            child: Container(
              width: double.infinity,
              padding: SetPadding.allSmall,
              decoration: BoxDecoration(
                color: SetColor.secondary,
                borderRadius: SetBorder.radiusAllTiny,
              ),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.fromLTRB(
                      0,
                      SetSize.small / 1.5,
                      0,
                      SetSize.medium / 1.5,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          'Dark Mode',
                          style: kThioAlli.textTheme.bodyText1!.copyWith(
                            color: SetColor.accent,
                            fontWeight: SetFontWeight.semibold,
                          ),
                        ),
                        DropdownButton(
                          value: isDarkMode,
                          style: kThioAlli.textTheme.bodyText2!.copyWith(
                            color: SetColor.grey_400,
                            fontSize: SetFontSize.small,
                            fontWeight: SetFontWeight.light,
                          ),
                          isDense: true,
                          underline: const SizedBox(),
                          borderRadius: SetBorder.radiusAllTiny,
                          dropdownColor: SetColor.secondary,
                          hint: Text(
                            'Enable',
                            style: kThioAlli.textTheme.bodyText2!.copyWith(
                              color: SetColor.grey_400,
                              fontSize: SetFontSize.small,
                              fontWeight: SetFontWeight.light,
                            ),
                          ),
                          // Encryption type
                          items: <String>[
                            'Disable',
                            'Enable',
                          ].map<DropdownMenuItem<String>>((String value) {
                            return DropdownMenuItem<String>(
                              value: value,
                              child: Text(
                                value,
                                style: kThioAlli.textTheme.bodyText2!.copyWith(
                                  color: SetColor.grey_400,
                                  fontSize: SetFontSize.small,
                                  fontWeight: SetFontWeight.light,
                                ),
                              ),
                            );
                          }).toList(),
                          onChanged: (String? isDarkMode) {
                            setState(() {
                              this.isDarkMode = isDarkMode!;
                            });
                          },
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      decoration: BoxDecoration(
                        color: SetColor.primary,
                        borderRadius: SetBorder.radiusAllTiny,
                      ),
                      child: isDarkMode == 'Enable'
                          ? Center(
                              child: Text(
                                'Yeay.. Dark Mode is enabled',
                                style: kThioAlli.textTheme.bodyText2!.copyWith(
                                  color: SetColor.grey_400,
                                  fontSize: SetFontSize.small,
                                  fontWeight: SetFontWeight.light,
                                ),
                              ),
                            )
                          : Center(
                              child: Text(
                                'Dark Mode is disabled',
                                style: kThioAlli.textTheme.bodyText2!.copyWith(
                                  color: SetColor.grey_400,
                                  fontSize: SetFontSize.small,
                                  fontWeight: SetFontWeight.light,
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
        SetSizeBox.verticalSmall,
        Padding(
          padding: SetPadding.onlyBottomMedium,
          child: Container(
            width: double.infinity,
            height: 60,
            decoration: BoxDecoration(
              color: SetColor.transparent,
              borderRadius: SetBorder.radiusAllTiny,
              border: Border.all(
                color: SetColor.accent,
                width: 0.8,
              ),
            ),
            child: TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                'Back',
                style: kThioAlli.textTheme.button!.copyWith(
                  color: SetColor.accent,
                  fontWeight: SetFontWeight.light,
                ),
              ),
            ),
          ),
        )
      ],
    );
  }
}
