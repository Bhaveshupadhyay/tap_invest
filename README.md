# Flutter Clean Architecture (Bloc) - Tap Invest

Screen Recordings: https://drive.google.com/drive/folders/1tUQpeqB5DDexDqaSzJ0078vnw7S0kvRY?usp=share_link


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

