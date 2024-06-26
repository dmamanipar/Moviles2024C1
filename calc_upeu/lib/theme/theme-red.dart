import "package:calc_upeu/theme/theme-base.dart";
import "package:flutter/material.dart";

class MaterialThemeRed {
  final TextTheme textTheme;

  const MaterialThemeRed(this.textTheme);

  static MaterialScheme lightScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4287514966),
      surfaceTint: Color(4287514966),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4294957533),
      onPrimaryContainer: Color(4282058517),
      secondary: Color(4285945435),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4294957533),
      onSecondaryContainer: Color(4281079065),
      tertiary: Color(4286142513),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4294958522),
      onTertiaryContainer: Color(4281014016),
      error: Color(4290386458),
      onError: Color(4294967295),
      errorContainer: Color(4294957782),
      onErrorContainer: Color(4282449922),
      background: Color(4294965495),
      onBackground: Color(4280424730),
      surface: Color(4294965495),
      onSurface: Color(4280424730),
      surfaceVariant: Color(4294172127),
      onSurfaceVariant: Color(4283581253),
      outline: Color(4286870389),
      outlineVariant: Color(4292264643),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871919),
      inverseOnSurface: Color(4294897134),
      inversePrimary: Color(4294947517),
      primaryFixed: Color(4294957533),
      onPrimaryFixed: Color(4282058517),
      primaryFixedDim: Color(4294947517),
      onPrimaryFixedVariant: Color(4285674303),
      secondaryFixed: Color(4294957533),
      onSecondaryFixed: Color(4281079065),
      secondaryFixedDim: Color(4293246401),
      onSecondaryFixedVariant: Color(4284235587),
      tertiaryFixed: Color(4294958522),
      onTertiaryFixed: Color(4281014016),
      tertiaryFixedDim: Color(4293574543),
      onTertiaryFixedVariant: Color(4284432668),
      surfaceDim: Color(4293383895),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963441),
      surfaceContainer: Color(4294699755),
      surfaceContainerHigh: Color(4294304997),
      surfaceContainerHighest: Color(4293975776),
    );
  }

  ThemeData light() {
    return theme(lightScheme().toColorScheme());
  }

  static MaterialScheme lightMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4285345595),
      surfaceTint: Color(4287514966),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4289224556),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4283972415),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4287458416),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4284103961),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4287721029),
      onTertiaryContainer: Color(4294967295),
      error: Color(4287365129),
      onError: Color(4294967295),
      errorContainer: Color(4292490286),
      onErrorContainer: Color(4294967295),
      background: Color(4294965495),
      onBackground: Color(4280424730),
      surface: Color(4294965495),
      onSurface: Color(4280424730),
      surfaceVariant: Color(4294172127),
      onSurfaceVariant: Color(4283318081),
      outline: Color(4285225821),
      outlineVariant: Color(4287133304),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871919),
      inverseOnSurface: Color(4294897134),
      inversePrimary: Color(4294947517),
      primaryFixed: Color(4289224556),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4287317844),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4287458416),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4285748312),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4287721029),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4285945391),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293383895),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963441),
      surfaceContainer: Color(4294699755),
      surfaceContainerHigh: Color(4294304997),
      surfaceContainerHighest: Color(4293975776),
    );
  }

  ThemeData lightMediumContrast() {
    return theme(lightMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme lightHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.light,
      primary: Color(4282584604),
      surfaceTint: Color(4287514966),
      onPrimary: Color(4294967295),
      primaryContainer: Color(4285345595),
      onPrimaryContainer: Color(4294967295),
      secondary: Color(4281539359),
      onSecondary: Color(4294967295),
      secondaryContainer: Color(4283972415),
      onSecondaryContainer: Color(4294967295),
      tertiary: Color(4281605376),
      onTertiary: Color(4294967295),
      tertiaryContainer: Color(4284103961),
      onTertiaryContainer: Color(4294967295),
      error: Color(4283301890),
      onError: Color(4294967295),
      errorContainer: Color(4287365129),
      onErrorContainer: Color(4294967295),
      background: Color(4294965495),
      onBackground: Color(4280424730),
      surface: Color(4294965495),
      onSurface: Color(4278190080),
      surfaceVariant: Color(4294172127),
      onSurfaceVariant: Color(4281147682),
      outline: Color(4283318081),
      outlineVariant: Color(4283318081),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4281871919),
      inverseOnSurface: Color(4294967295),
      inversePrimary: Color(4294960872),
      primaryFixed: Color(4285345595),
      onPrimaryFixed: Color(4294967295),
      primaryFixedDim: Color(4283504934),
      onPrimaryFixedVariant: Color(4294967295),
      secondaryFixed: Color(4283972415),
      onSecondaryFixed: Color(4294967295),
      secondaryFixedDim: Color(4282328618),
      onSecondaryFixedVariant: Color(4294967295),
      tertiaryFixed: Color(4284103961),
      onTertiaryFixed: Color(4294967295),
      tertiaryFixedDim: Color(4282459909),
      onTertiaryFixedVariant: Color(4294967295),
      surfaceDim: Color(4293383895),
      surfaceBright: Color(4294965495),
      surfaceContainerLowest: Color(4294967295),
      surfaceContainerLow: Color(4294963441),
      surfaceContainer: Color(4294699755),
      surfaceContainerHigh: Color(4294304997),
      surfaceContainerHighest: Color(4293975776),
    );
  }

  ThemeData lightHighContrast() {
    return theme(lightHighContrastScheme().toColorScheme());
  }

  static MaterialScheme darkScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294947517),
      surfaceTint: Color(4294947517),
      onPrimary: Color(4283833641),
      primaryContainer: Color(4285674303),
      onPrimaryContainer: Color(4294957533),
      secondary: Color(4293246401),
      onSecondary: Color(4282591533),
      secondaryContainer: Color(4284235587),
      onSecondaryContainer: Color(4294957533),
      tertiary: Color(4293574543),
      onTertiary: Color(4282723079),
      tertiaryContainer: Color(4284432668),
      onTertiaryContainer: Color(4294958522),
      error: Color(4294948011),
      onError: Color(4285071365),
      errorContainer: Color(4287823882),
      onErrorContainer: Color(4294957782),
      background: Color(4279832850),
      onBackground: Color(4293975776),
      surface: Color(4279832850),
      onSurface: Color(4293975776),
      surfaceVariant: Color(4283581253),
      onSurfaceVariant: Color(4292264643),
      outline: Color(4288646286),
      outlineVariant: Color(4283581253),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293975776),
      inverseOnSurface: Color(4281871919),
      inversePrimary: Color(4287514966),
      primaryFixed: Color(4294957533),
      onPrimaryFixed: Color(4282058517),
      primaryFixedDim: Color(4294947517),
      onPrimaryFixedVariant: Color(4285674303),
      secondaryFixed: Color(4294957533),
      onSecondaryFixed: Color(4281079065),
      secondaryFixedDim: Color(4293246401),
      onSecondaryFixedVariant: Color(4284235587),
      tertiaryFixed: Color(4294958522),
      onTertiaryFixed: Color(4281014016),
      tertiaryFixedDim: Color(4293574543),
      onTertiaryFixedVariant: Color(4284432668),
      surfaceDim: Color(4279832850),
      surfaceBright: Color(4282464056),
      surfaceContainerLowest: Color(4279503885),
      surfaceContainerLow: Color(4280424730),
      surfaceContainer: Color(4280687902),
      surfaceContainerHigh: Color(4281411625),
      surfaceContainerHighest: Color(4282200627),
    );
  }

  ThemeData dark() {
    return theme(darkScheme().toColorScheme());
  }

  static MaterialScheme darkMediumContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294949058),
      surfaceTint: Color(4294947517),
      onPrimary: Color(4281533200),
      primaryContainer: Color(4291394183),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4293509574),
      onSecondary: Color(4280684564),
      secondaryContainer: Color(4289497228),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4293903251),
      onTertiary: Color(4280553984),
      tertiaryContainer: Color(4289759838),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294949553),
      onError: Color(4281794561),
      errorContainer: Color(4294923337),
      onErrorContainer: Color(4278190080),
      background: Color(4279832850),
      onBackground: Color(4293975776),
      surface: Color(4279832850),
      onSurface: Color(4294965753),
      surfaceVariant: Color(4283581253),
      onSurfaceVariant: Color(4292593351),
      outline: Color(4289896096),
      outlineVariant: Color(4287725441),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293975776),
      inverseOnSurface: Color(4281411625),
      inversePrimary: Color(4285740096),
      primaryFixed: Color(4294957533),
      onPrimaryFixed: Color(4281073675),
      primaryFixedDim: Color(4294947517),
      onPrimaryFixedVariant: Color(4284293679),
      secondaryFixed: Color(4294957533),
      onSecondaryFixed: Color(4280290063),
      secondaryFixedDim: Color(4293246401),
      onSecondaryFixedVariant: Color(4283051827),
      tertiaryFixed: Color(4294958522),
      onTertiaryFixed: Color(4280094208),
      tertiaryFixedDim: Color(4293574543),
      onTertiaryFixedVariant: Color(4283183117),
      surfaceDim: Color(4279832850),
      surfaceBright: Color(4282464056),
      surfaceContainerLowest: Color(4279503885),
      surfaceContainerLow: Color(4280424730),
      surfaceContainer: Color(4280687902),
      surfaceContainerHigh: Color(4281411625),
      surfaceContainerHighest: Color(4282200627),
    );
  }

  ThemeData darkMediumContrast() {
    return theme(darkMediumContrastScheme().toColorScheme());
  }

  static MaterialScheme darkHighContrastScheme() {
    return const MaterialScheme(
      brightness: Brightness.dark,
      primary: Color(4294965753),
      surfaceTint: Color(4294947517),
      onPrimary: Color(4278190080),
      primaryContainer: Color(4294949058),
      onPrimaryContainer: Color(4278190080),
      secondary: Color(4294965753),
      onSecondary: Color(4278190080),
      secondaryContainer: Color(4293509574),
      onSecondaryContainer: Color(4278190080),
      tertiary: Color(4294966008),
      onTertiary: Color(4278190080),
      tertiaryContainer: Color(4293903251),
      onTertiaryContainer: Color(4278190080),
      error: Color(4294965753),
      onError: Color(4278190080),
      errorContainer: Color(4294949553),
      onErrorContainer: Color(4278190080),
      background: Color(4279832850),
      onBackground: Color(4293975776),
      surface: Color(4279832850),
      onSurface: Color(4294967295),
      surfaceVariant: Color(4283581253),
      onSurfaceVariant: Color(4294965753),
      outline: Color(4292593351),
      outlineVariant: Color(4292593351),
      shadow: Color(4278190080),
      scrim: Color(4278190080),
      inverseSurface: Color(4293975776),
      inverseOnSurface: Color(4278190080),
      inversePrimary: Color(4283307555),
      primaryFixed: Color(4294959074),
      onPrimaryFixed: Color(4278190080),
      primaryFixedDim: Color(4294949058),
      onPrimaryFixedVariant: Color(4281533200),
      secondaryFixed: Color(4294959074),
      onSecondaryFixed: Color(4278190080),
      secondaryFixedDim: Color(4293509574),
      onSecondaryFixedVariant: Color(4280684564),
      tertiaryFixed: Color(4294959813),
      onTertiaryFixed: Color(4278190080),
      tertiaryFixedDim: Color(4293903251),
      onTertiaryFixedVariant: Color(4280553984),
      surfaceDim: Color(4279832850),
      surfaceBright: Color(4282464056),
      surfaceContainerLowest: Color(4279503885),
      surfaceContainerLow: Color(4280424730),
      surfaceContainer: Color(4280687902),
      surfaceContainerHigh: Color(4281411625),
      surfaceContainerHighest: Color(4282200627),
    );
  }

  ThemeData darkHighContrast() {
    return theme(darkHighContrastScheme().toColorScheme());
  }


  ThemeData theme(ColorScheme colorScheme) => ThemeData(
    useMaterial3: true,
    brightness: colorScheme.brightness,
    colorScheme: colorScheme,
    textTheme: textTheme.apply(
      bodyColor: colorScheme.onSurface,
      displayColor: colorScheme.onSurface,
    ),
    scaffoldBackgroundColor: colorScheme.background,
    canvasColor: colorScheme.surface,
  );


  List<ExtendedColor> get extendedColors => [
  ];
}