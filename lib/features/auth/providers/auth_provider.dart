import 'dart:convert';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';
import '../models/user_model.dart';

class AuthState {
  final UserModel? user;
  final bool isLoading;
  final String? error;

  const AuthState({this.user, this.isLoading = false, this.error});

  bool get isLoggedIn => user != null;

  AuthState copyWith({
    UserModel? user,
    bool? isLoading,
    String? error,
    bool clearUser = false,
    bool clearError = false,
  }) =>
      AuthState(
        user: clearUser ? null : (user ?? this.user),
        isLoading: isLoading ?? this.isLoading,
        error: clearError ? null : (error ?? this.error),
      );
}

class AuthNotifier extends StateNotifier<AuthState> {
  final Box _box;

  AuthNotifier(this._box) : super(const AuthState()) {
    _loadUser();
  }

  void _loadUser() {
    final raw = _box.get('current_user');
    if (raw != null) {
      state = state.copyWith(user: UserModel.fromJson(jsonDecode(raw as String)));
    }
  }

  Future<bool> login(String email, String password) async {
    state = state.copyWith(isLoading: true, clearError: true);
    await Future.delayed(const Duration(milliseconds: 700));

    final storedPw = _box.get('pw_${email.toLowerCase()}');
    if (storedPw == null) {
      state = state.copyWith(isLoading: false, error: 'No existe una cuenta con ese email.');
      return false;
    }
    if (storedPw != password) {
      state = state.copyWith(isLoading: false, error: 'Contraseña incorrecta.');
      return false;
    }

    final userRaw = _box.get('user_${email.toLowerCase()}') as String;
    final user = UserModel.fromJson(jsonDecode(userRaw));
    await _box.put('current_user', jsonEncode(user.toJson()));
    state = state.copyWith(isLoading: false, user: user);
    return true;
  }

  Future<bool> register(String name, String email, String password) async {
    state = state.copyWith(isLoading: true, clearError: true);
    await Future.delayed(const Duration(milliseconds: 700));

    final key = email.toLowerCase();
    if (_box.get('pw_$key') != null) {
      state = state.copyWith(isLoading: false, error: 'Ya existe una cuenta con ese email.');
      return false;
    }

    final user = UserModel(
      id: DateTime.now().millisecondsSinceEpoch.toString(),
      name: name.trim(),
      email: key,
    );
    await _box.put('pw_$key', password);
    await _box.put('user_$key', jsonEncode(user.toJson()));
    await _box.put('current_user', jsonEncode(user.toJson()));
    state = state.copyWith(isLoading: false, user: user);
    return true;
  }

  Future<void> logout() async {
    await _box.delete('current_user');
    state = state.copyWith(clearUser: true);
  }

  void clearError() => state = state.copyWith(clearError: true);
}

final authProvider = StateNotifierProvider<AuthNotifier, AuthState>(
  (ref) => AuthNotifier(Hive.box('auth')),
);
