# 📚 Library Management Application

A complete Android Library Management Application built with Flutter, following **Clean Architecture** principles. This app provides a modern, responsive interface using Material 3 and Google Stitch UI guidelines.

## ✨ Features

- **Role-Based Access Control:** Distinct dashboards and permissions for **Admin**, **Librarian**, and **Member**.
- **Authentication:** Secure login and registration using Supabase Auth.
- **Book Management:** Comprehensive CRUD operations for books, categories, publishers, and suppliers.
- **Loan Management:** Track book borrowing, returns, and automatic fine calculation.
- **Realtime Notifications:** Get instant updates using Supabase realtime streams.
- **Modern UI/UX:** Responsive design, beautiful empty states, loading indicators, and error handling.

## 🛠️ Technology Stack

- **Framework:** [Flutter](https://flutter.dev/) (Latest Stable)
- **State Management:** [Riverpod](https://riverpod.dev/) (`flutter_riverpod`, `riverpod_annotation`)
- **Routing:** [Go Router](https://pub.dev/packages/go_router)
- **Backend as a Service:** [Supabase](https://supabase.com/)
- **Architecture:** Clean Architecture (Presentation, Domain, Data Layers)
- **Code Generation:** [Freezed](https://pub.dev/packages/freezed), `json_serializable`
- **Design System:** Material 3

## 🚀 Getting Started

### Prerequisites
- Flutter SDK
- Supabase Project

### Installation

1. Clone the repository:
```bash
git clone https://github.com/dimasrahmandaalfarizi/library-app-project.git
cd library-app-project
```

2. Install dependencies:
```bash
flutter pub get
```

3. Generate Riverpod and Freezed files:
```bash
dart run build_runner build --delete-conflicting-outputs
```

4. **Environment Setup:**
Create a `.env` file in the root directory and add your Supabase credentials:
```env
SUPABASE_URL=your_supabase_url_here
SUPABASE_ANON_KEY=your_supabase_anon_key_here
```

5. Run the app:
```bash
flutter run
```

## 🗄️ Database Setup

Ensure your Supabase project has the following tables to support the application:
- `users` (id, email, name, role, avatar_url, created_at)
- `books`
- `categories`
- `publishers`
- `suppliers`
- `loans`

## 🏗️ Project Structure

```text
lib/
├── core/
│   ├── constants/
│   ├── models/
│   ├── router/
│   ├── services/
│   └── theme/
├── features/
│   ├── auth/
│   ├── books/
│   ├── categories/
│   ├── dashboard/
│   ├── loans/
│   ├── members/
│   ├── notifications/
│   ├── profile/
│   ├── publishers/
│   └── suppliers/
└── shared/
    └── widgets/
```

---
*Built with ❤️ using Flutter & Supabase.*
