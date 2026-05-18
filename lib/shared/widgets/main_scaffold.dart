import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/theme/app_colors.dart';

class _NavDest {
  final String route;
  final IconData icon;
  final IconData selectedIcon;
  final String label;

  const _NavDest(this.route, this.icon, this.selectedIcon, this.label);
}

const _destinations = [
  _NavDest('/', Icons.grid_view_rounded, Icons.grid_view_rounded, 'Inicio'),
  _NavDest('/finances', Icons.account_balance_wallet_outlined,
      Icons.account_balance_wallet, 'Finanzas'),
  _NavDest('/habits', Icons.check_circle_outline, Icons.check_circle, 'Hábitos'),
  _NavDest('/stats', Icons.bar_chart_rounded, Icons.bar_chart_rounded, 'Progreso'),
  _NavDest('/ai', Icons.auto_awesome_outlined, Icons.auto_awesome, 'Coach'),
];

const _allDestinations = [
  _NavDest('/', Icons.grid_view_rounded, Icons.grid_view_rounded, 'Dashboard'),
  _NavDest('/finances', Icons.account_balance_wallet_outlined,
      Icons.account_balance_wallet, 'Finanzas'),
  _NavDest('/habits', Icons.check_circle_outline, Icons.check_circle, 'Hábitos'),
  _NavDest('/routines', Icons.playlist_add_check_rounded,
      Icons.playlist_add_check_rounded, 'Rutinas'),
  _NavDest('/timer', Icons.timer_outlined, Icons.timer, 'Temporizador'),
  _NavDest('/sleep', Icons.bedtime_outlined, Icons.bedtime, 'Sueño'),
  _NavDest('/journal', Icons.book_outlined, Icons.book, 'Diario'),
  _NavDest('/ideas', Icons.lightbulb_outline, Icons.lightbulb, 'Ideas'),
  _NavDest('/ai', Icons.auto_awesome_outlined, Icons.auto_awesome, 'LifeCoach'),
  _NavDest('/stats', Icons.bar_chart_rounded, Icons.bar_chart_rounded,
      'Estadísticas'),
];

class MainScaffold extends ConsumerWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});

  int _selectedIndex(String location) {
    for (int i = 0; i < _destinations.length; i++) {
      if (_destinations[i].route == location) return i;
    }
    return 0;
  }

  int _railIndex(String location) {
    for (int i = 0; i < _allDestinations.length; i++) {
      if (_allDestinations[i].route == location) return i;
    }
    return 0;
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = GoRouterState.of(context).matchedLocation;
    final isDesktop = MediaQuery.of(context).size.width >= 900;

    if (isDesktop) {
      return Scaffold(
        body: Row(
          children: [
            _SideNav(
              selectedIndex: _railIndex(location),
              onSelect: (i) => context.go(_allDestinations[i].route),
            ),
            const VerticalDivider(width: 1),
            Expanded(child: child),
          ],
        ),
      );
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: _CustomBottomNav(
        selectedIndex: _selectedIndex(location),
        onTap: (i) => context.go(_destinations[i].route),
      ),
    );
  }
}

// ── Custom bottom nav ─────────────────────────────────────────────────────────

class _CustomBottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const _CustomBottomNav(
      {required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    final bottomPad = MediaQuery.of(context).padding.bottom;
    return Container(
      height: 62 + bottomPad,
      decoration: const BoxDecoration(
        color: AppColors.surface,
        border: Border(
            top: BorderSide(color: AppColors.border, width: 0.6)),
      ),
      child: Padding(
        padding: EdgeInsets.only(bottom: bottomPad),
        child: Row(
          children: List.generate(_destinations.length, (i) {
            final d = _destinations[i];
            final selected = i == selectedIndex;
            return Expanded(
              child: GestureDetector(
                behavior: HitTestBehavior.opaque,
                onTap: () => onTap(i),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Indicator line at top
                    AnimatedContainer(
                      duration: const Duration(milliseconds: 260),
                      curve: Curves.easeOut,
                      height: 2.5,
                      width: selected ? 28 : 0,
                      margin: const EdgeInsets.only(bottom: 7),
                      decoration: BoxDecoration(
                        color: AppColors.primaryLight,
                        borderRadius: BorderRadius.circular(2),
                      ),
                    ),
                    Icon(
                      selected ? d.selectedIcon : d.icon,
                      size: 22,
                      color: selected
                          ? AppColors.primaryLight
                          : AppColors.textSecondary,
                    ),
                    const SizedBox(height: 3),
                    Text(
                      d.label,
                      style: GoogleFonts.inter(
                        fontSize: 10,
                        fontWeight: selected
                            ? FontWeight.w600
                            : FontWeight.normal,
                        color: selected
                            ? AppColors.primaryLight
                            : AppColors.textSecondary,
                      ),
                    ),
                  ],
                ),
              ),
            );
          }),
        ),
      ),
    );
  }
}

// ── Desktop side nav ──────────────────────────────────────────────────────────

class _SideNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onSelect;

  const _SideNav({required this.selectedIndex, required this.onSelect});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 220,
      color: AppColors.surface,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(height: 48),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 8),
            child: Row(
              children: [
                Container(
                  width: 36,
                  height: 36,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.secondary],
                    ),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: const Icon(Icons.hub_rounded,
                      color: Colors.white, size: 20),
                ),
                const SizedBox(width: 10),
                Text(
                  'LifeHub',
                  style: GoogleFonts.inter(
                    color: AppColors.textPrimary,
                    fontWeight: FontWeight.w800,
                    fontSize: 18,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),
          Expanded(
            child: ListView.builder(
              itemCount: _allDestinations.length,
              padding: const EdgeInsets.symmetric(horizontal: 12),
              itemBuilder: (context, i) {
                final d = _allDestinations[i];
                final selected = i == selectedIndex;
                return Padding(
                  padding: const EdgeInsets.only(bottom: 4),
                  child: Material(
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    child: InkWell(
                      borderRadius: BorderRadius.circular(10),
                      onTap: () => onSelect(i),
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 12, vertical: 10),
                        decoration: BoxDecoration(
                          color: selected
                              ? AppColors.primary.withAlpha(30)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Row(
                          children: [
                            Icon(
                              selected ? d.selectedIcon : d.icon,
                              size: 20,
                              color: selected
                                  ? AppColors.primaryLight
                                  : AppColors.textSecondary,
                            ),
                            const SizedBox(width: 12),
                            Text(
                              d.label,
                              style: GoogleFonts.inter(
                                color: selected
                                    ? AppColors.primaryLight
                                    : AppColors.textSecondary,
                                fontWeight: selected
                                    ? FontWeight.w600
                                    : FontWeight.normal,
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
