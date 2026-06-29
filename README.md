# SportsApp

A Flutter-based sports shopping UI with a home catalog, product listings, profile page, and settings screen. The app is designed for e-commerce style browsing and quick access to products, favorites, profile details, and app settings.

## Features

- Home page with search input and category chips
- Popular item grid with product cards
- Shop page displaying individual product cards with prices and add-to-cart icons
- Profile page with user info, stats, and account actions
- Settings page with toggle switches and account options
- Bottom navigation bar for easy movement between screens

## Screens

- `Home` : searchable product discovery and popular items grid
- `Shop` : list of products shown as separate cards
- `Profile` : user profile details with edit button
- `Settings` : general, account, and about sections with switches

## Getting Started

### Requirements

- Flutter SDK 3.11.5 or later
- Dart SDK compatible with Flutter
- A device or emulator to run the app

### Install dependencies

```bash
flutter pub get
```

### Run the app

```bash
flutter run
```

Or use Visual Studio Code / Android Studio run configuration.

## Project Structure

- `lib/main.dart` - app entry point
- `lib/feature/home/home.dart` - home screen UI
- `lib/feature/shop/shop.dart` - shop screen UI
- `lib/feature/profile/profile.dart` - profile screen UI
- `lib/feature/settings/settings.dart` - settings screen UI
- `lib/core/utils/app_colors.dart` - shared color palette
- `lib/core/utils/app_assets.dart` - asset path constants
- `lib/core/widgets/navbar.dart` - bottom navigation bar

## Assets

Image assets are stored in the `assets/` folder and registered in `pubspec.yaml`.

## Notes

- The project currently uses local assets for product and profile images.
- Styling is based on rounded cards, soft shadows, and modern sports app layout.
- You can extend the app by adding navigation routes, data models, and backend integration.

## License

This project is open for modification and customization.
