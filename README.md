# Flutter Clean Architecture (Bloc) - Tap Invest

Screen Recordings: https://drive.google.com/drive/folders/1tUQpeqB5DDexDqaSzJ0078vnw7S0kvRY?usp=share_link

![tap_invest](https://github.com/user-attachments/assets/9e93646b-78a0-425d-9321-2cb461604b41)


## Folder Structure
```bash
lib/
├── core/
│   ├── common/
│   │   ├── widgets/
│   ├── error/
│   ├── theme/
│   └── use_case/
├── features/
│   ├── feature/
│   │   ├── data/
│   │   │   ├── datasources/
│   │   │   ├── models/
│   │   │   └── repositories/
│   │   ├── domain/
│   │   │   ├── entities/
│   │   │   ├── repositories/
│   │   │   └── usecases/
│   │   └── presentation/
│   │       ├── cubit/
│   │       ├── screens/
│   │       └── widgets/
└── main.dart
``` 
## Features
- Modern UI/UX
- Search bonds by Issuer Name or ISIN
- View financial graph
- Responsive Design: Optimized for mobile phones and tablets.
  
## Setup Instructions  
 1. Clone the repo:
```bash 
git clone https://github.com/Bhaveshupadhyay/tap_invest.git
cd flutter tap_invest
```
2. Install dependencies:
```bash 
flutter pub get
```
3. Run the app:
```bash 
flutter run
```

## Libraries Used
- flutter_screenutil
- flutter_bloc
- fpdart
- get_it
- freezed
- flutter_svg
- fl_chart
- flutter_dotenv
- dio
- google_fonts

## flutter_screenutil

used to make the app responsive on all devices. It adjusts the layout to fit different screen sizes and resolutions, ensuring a consistent user experience across smartphones, tablets, and other devices

## flutter_bloc

used Cubit to manage the state of the app, ensuring that the UI reacts to changes in data and state without tightly coupling the logic with the UI

## fpdart

used for functional programming support like Either and Option, to handle success and failure states cleanly

## get_it

used as a service locator to manage dependency injection across the app

## freezed

used to create immutable data classes and sealed unions, reducing boilerplate in models and states

## flutter_svg

used to render SVG images for scalable, high quality icons and illustrations

## fl_chart

used to display dynamic financial graphs like bar and line charts in the UI

## flutter_dotenv

used to load environment variables from a .env file for secure and configurable API keys or URLs

## dio

used as the HTTP client to make API calls with support for interceptors, logging, and error handling

## google_fonts

used to apply custom Google Fonts across the app for a clean and modern look




