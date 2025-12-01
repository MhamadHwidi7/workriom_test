# Workiom Technical Test

A Flutter application implementing Workiom's signup onboarding flow with clean architecture, state management, and secure authentication.

## 📱 Overview

This project demonstrates a production-ready Flutter implementation featuring:
- **Clean Architecture** with feature-driven structure
- **State Management** using flutter_bloc (Cubits)
- **Dependency Injection** with Injectable + get_it
- **Secure Authentication** with token persistence
- **Dynamic Password Validation** based on backend rules
- **Error Handling** with retry mechanisms
- **Navigation** using GoRouter with custom transitions

## 🏗️ Architecture

The project follows **Clean Architecture** principles with three layers:

```
lib/
├── core/           # Shared utilities, configs, DI, navigation
├── features/       # Feature modules (auth, splash, home)
│   ├── auth/
│   │   ├── data/      # Repositories, models, mappers
│   │   ├── domain/    # Entities, use cases, repository interfaces
│   │   └── presentation/ # Cubits, screens, widgets
│   ├── splash/
│   └── home/
└── main.dart
```

## 🚀 Features

### Authentication Flow
1. **Splash Screen** - Checks existing authentication, redirects based on login state
2. **Signup Options** - Google sign-in (placeholder) or email signup
3. **Password Screen** - Email + password with dynamic complexity validation
4. **Create Workspace** - Tenant name validation, admin info, registration
5. **Success Screen** - Confirmation UI

### Key Capabilities
- ✅ Automatic edition selection from backend
- ✅ Real-time tenant name availability check
- ✅ Password strength meter with dynamic rules
- ✅ Secure token storage (access + refresh tokens)
- ✅ Automatic retry on network failures
- ✅ Error overlays with retry options
- ✅ IANA timezone integration

## 🛠️ Tech Stack

| Technology | Purpose |
|------------|---------|
| Flutter 3.x | Cross-platform framework |
| flutter_bloc | State management |
| Dio | HTTP client |
| GoRouter | Navigation |
| Injectable + get_it | Dependency injection |
| flutter_secure_storage | Token persistence |
| Freezed | Immutable models |
| json_serializable | JSON serialization |

## 📦 Dependencies

Key dependencies (see `pubspec.yaml` for full list):
- `flutter_bloc: ^9.1.1`
- `dio: ^5.9.0`
- `go_router: ^17.0.0`
- `injectable: ^2.7.0`
- `get_it: ^9.1.1`
- `flutter_secure_storage: ^9.2.4`
- `freezed: ^3.2.3`

## 🔧 Setup

1. **Install Flutter** (SDK ^3.9.2)
2. **Get dependencies:**
   ```bash
   flutter pub get
   ```
3. **Generate code:**
   ```bash
   flutter pub run build_runner build --delete-conflicting-outputs
   ```
4. **Run the app:**
   ```bash
   flutter run
   ```

## 🔌 API Configuration

Base URL: `https://api.workiom.club/api`

### Endpoints
- `GET /services/app/Session/GetCurrentLoginInformations` - Check auth status
- `GET /services/app/TenantRegistration/GetEditionsForSelect` - Get available editions
- `GET /services/app/Profile/GetPasswordComplexitySetting` - Get password rules
- `GET /services/app/Account/IsTenantAvailable?tenancyName={name}` - Check tenant availability
- `POST /services/app/TenantRegistration/RegisterTenant` - Register new tenant
- `POST /TokenAuth/Authenticate` - Authenticate user

## 📂 Project Structure

### Core Modules
- **APIs** - DioConsumer, interceptors, endpoints
- **Config** - App configuration, options
- **DI** - Dependency injection setup
- **Navigation** - GoRouter configuration
- **Theme** - Colors, typography, constants
- **Widgets** - Reusable UI components
- **Errors** - Error handling & exceptions

### Features
- **auth** - Complete authentication flow (signup, login, tenant registration)
- **splash** - Initial screen with auth check
- **home** - Success screen after signup

## 🎨 Design System

- **Colors** - Centralized in `ColorConstants`
- **Typography** - Consistent text styles via `AppTypography`
- **Text** - All copy in `TextConstants`
- **Assets** - SVG icons, Rubik fonts

## 🔐 Security

- Secure token storage using `flutter_secure_storage`
- Bearer token authentication
- HTTPS with certificate validation override
- Password complexity validation from backend

## 📝 Notes

- Uses Clean Architecture for scalability
- Feature-based folder structure
- Cubits for UI state management
- Centralized error handling
- Automatic retry on network failures
- Responsive design with ScreenUtil

## 📄 License

This project is a technical test implementation.
