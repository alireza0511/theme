# Mosaic Design System

The **Mosaic Design System** is the theming architecture for this application. It is built on top of Flutter's Material 3 system but uses a **Composition Pattern** to ensure strict synchronization, type safety, and future-proofing.

## Architecture: The Composition Pattern

Unlike traditional Flutter apps that mix `Theme.of(context)` with custom static classes, Mosaic **wraps** the Material objects.

### Core Components

1.  **`MosaicColors`**: Wraps `ColorScheme`.
    *   Contains all standard Material colors (`primary`, `surface`, etc.) which delegate to the wrapped scheme.
    *   Contains custom brand colors (`huntingtonGreen`, `success`, etc.).
    *   **Benefit**: It is impossible for `MosaicColors.primary` to be different from `Theme.of(context).primaryColor`.

2.  **`MosaicTypography`**: Wraps `TextTheme`.
    *   Contains all standard Material styles (`bodyMedium`, `displayLarge`, etc.) which delegate to the wrapped theme.
    *   Contains custom brand styles (`brandDisplay`, `currencyLarge`, etc.).

3.  **`MosaicThemeData`**: The Assembler.
    *   Constructs the Material `ThemeData`.
    *   Injects `MosaicColors` and `MosaicTypography` as `ThemeExtension`s.

## Usage Guide

You should access **ALL** design tokens through the `Mosaic` extensions. Do not use `Theme.of(context)` directly for colors or text.

### 1. Accessing Colors
```dart
// ✅ CORRECT: Unified access
color: context.mosaicColors.primary        // Standard Material color
color: context.mosaicColors.huntingtonGreen // Custom Brand color

// ❌ AVOID: Mixed access
color: Theme.of(context).colorScheme.primary
color: AppColors.huntingtonGreen
```

### 2. Accessing Typography
```dart
// ✅ CORRECT: Unified access
style: context.mosaicTypography.bodyMedium   // Standard Material style
style: context.mosaicTypography.brandDisplay // Custom Brand style

// ❌ AVOID: Mixed access
style: Theme.of(context).textTheme.bodyMedium
```

### 3. Accessing Spacing
```dart
padding: EdgeInsets.all(context.mosaicSpacing.md)
```

## Maintenance & Evolution

### Scenario A: Branding Team Changes a Color
*Request: "Change the Primary Brand Color from Green to Blue."*

1.  Open `lib/theme/mosaic_colors.dart`.
2.  Locate the static constant section.
3.  Update the value:
    ```dart
    // OLD
    static const Color primaryLight = Color(0xFF00573F);
    // NEW
    static const Color primaryLight = Color(0xFF0000FF);
    ```
4.  **Result**: The entire app (both standard Material widgets and custom widgets) updates automatically.

### Scenario B: Branding Team Adds a New Token
*Request: "We need a new semantic color called 'Critical'."*

1.  Open `lib/theme/mosaic_colors.dart`.
2.  Add a `final Color critical;` field.
3.  Update the constructor, `copyWith`, and `lerp`.
4.  Add a static constant `static const Color _critical = ...`.
5.  Initialize it in the `light` and `dark` factory getters.

### Scenario C: Flutter Team Updates Material Design
*Scenario: Flutter adds a new color `surfaceDim` and deprecates `background`.*

1.  **To Adopt New Features**:
    *   Add `Color get surfaceDim => materialScheme.surfaceDim;` to `MosaicColors`.
    *   Now you can use `context.mosaicColors.surfaceDim`.

2.  **To Handle Deprecations**:
    *   If Flutter removes `background`, but your app still uses it:
    *   Keep `Color get background` in `MosaicColors`.
    *   Map it to a new token internally:
        ```dart
        // Mosaic preserves the API even if Flutter removes it
        Color get background => materialScheme.surface; 
        ```
    *   **Benefit**: Your app code does not break. You can migrate usages of `background` to `surface` at your own pace.
