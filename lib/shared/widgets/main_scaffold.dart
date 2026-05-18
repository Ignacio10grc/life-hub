import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import '../../core/theme/app_colors.dart';
import '../../features/auth/providers/auth_provider.dart';

// ── Data models ───────────────────────────────────────────────────────────────

class _Dest {
  final String route;
  final IconData icon;
  final IconData selectedIcon;
  final String label;
  final Color color;

  const _Dest(this.route, this.icon, this.selectedIcon, this.label, this.color);
}

class _Group {
  final String? title; // null = sin cabecera de sección
  final List<_Dest> items;

  const _Group(this.title, this.items);
}

// ── Mobile bottom nav (5 tabs) ────────────────────────────────────────────────

const _mobileNav = [
  _Dest('/', Icons.home_outlined, Icons.home_rounded,
      'Inicio', AppColors.primary),
  _Dest('/habits', Icons.check_circle_outline, Icons.check_circle_rounded,
      'Hábitos', AppColors.habits),
  _Dest('/ai', Icons.psychology_outlined, Icons.psychology_rounded,
      'Coach', AppColors.ai),
  _Dest('/finances', Icons.account_balance_wallet_outlined,
      Icons.account_balance_wallet_rounded, 'Finanzas', AppColors.finances),
  _Dest('/stats', Icons.bar_chart_outlined, Icons.bar_chart_rounded,
      'Progreso', AppColors.steps),
];

// ── Desktop sidebar groups ────────────────────────────────────────────────────

const _sidebarGroups = [
  _Group(null, [
    _Dest('/', Icons.home_outlined, Icons.home_rounded,
        'Inicio', AppColors.primary),
  ]),
  _Group('Productividad', [
    _Dest('/habits', Icons.check_circle_outline, Icons.check_circle_rounded,
        'Hábitos', AppColors.habits),
    _Dest('/routines', Icons.playlist_add_check_outlined,
        Icons.playlist_add_check_rounded, 'Rutinas', AppColors.routines),
    _Dest('/timer', Icons.timer_outlined, Icons.timer_rounded,
        'Temporizador', AppColors.timer),
  ]),
  _Group('Bienestar', [
    _Dest('/sleep', Icons.bedtime_outlined, Icons.bedtime_rounded,
        'Sueño', AppColors.sleep),
    _Dest('/journal', Icons.auto_stories_outlined, Icons.auto_stories_rounded,
        'Diario', AppColors.journal),
    _Dest('/ideas', Icons.lightbulb_outline, Icons.lightbulb_rounded,
        'Ideas', AppColors.ideas),
  ]),
  _Group('Análisis', [
    _Dest('/finances', Icons.account_balance_wallet_outlined,
        Icons.account_balance_wallet_rounded, 'Finanzas', AppColors.finances),
    _Dest('/stats', Icons.bar_chart_outlined, Icons.bar_chart_rounded,
        'Estadísticas', AppColors.steps),
  ]),
  _Group('Asistente IA', [
    _Dest('/ai', Icons.psychology_outlined, Icons.psychology_rounded,
        'LifeCoach', AppColors.ai),
  ]),
];

// ── Main scaffold ─────────────────────────────────────────────────────────────

class MainScaffold extends ConsumerWidget {
  final Widget child;
  const MainScaffold({super.key, required this.child});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final location = GoRouterState.of(context).matchedLocation;
    final isDesktop = MediaQuery.of(context).size.width >= 900;

    if (isDesktop) {
      return Scaffold(
        backgroundColor: AppColors.background,
        body: Row(
          children: [
            _SideNav(currentRoute: location),
            Container(width: 1, color: AppColors.border),
            Expanded(child: child),
          ],
        ),
      );
    }

    int selectedIndex = 0;
    for (int i = 0; i < _mobileNav.length; i++) {
      if (_mobileNav[i].route == location) {
        selectedIndex = i;
        break;
      }
    }

    return Scaffold(
      body: child,
      bottomNavigationBar: _BottomNav(
        selectedIndex: selectedIndex,
        onTap: (i) => context.go(_mobileNav[i].route),
      ),
    );
  }
}

// ── Mobile bottom nav ─────────────────────────────────────────────────────────

class _BottomNav extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onTap;

  const _BottomNav({required this.selectedIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.surfaceCard,
        border: Border(top: BorderSide(color: AppColors.border, width: 0.6)),
      ),
      child: SafeArea(
        top: false,
        child: SizedBox(
          height: 60,
          child: Row(
            children: List.generate(_mobileNav.length, (i) {
              final d = _mobileNav[i];
              final selected = i == selectedIndex;

              // Center tab (Coach IA) gets a special look
              if (i == 2) {
                return Expanded(
                  child: GestureDetector(
                    behavior: HitTestBehavior.opaque,
                    onTap: () => onTap(i),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        AnimatedContainer(
                          duration: const Duration(milliseconds: 220),
                          curve: Curves.easeOut,
                          width: 46,
                          height: 34,
                          decoration: BoxDecoration(
                            gradient: selected
                                ? const LinearGradient(
                                    colors: [AppColors.primary, AppColors.ai],
                                    begin: Alignment.topLeft,
                                    end: Alignment.bottomRight,
                                  )
                                : null,
                            color: selected ? null : AppColors.surfaceElevated,
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Icon(
                            selected ? d.selectedIcon : d.icon,
                            size: 20,
                            color: selected
                                ? AppColors.background
                                : AppColors.textSecondary,
                          ),
                        ),
                        const SizedBox(height: 3),
                        Text(d.label,
                            style: GoogleFonts.inter(
                              fontSize: 10,
                              fontWeight: selected
                                  ? FontWeight.w700
                                  : FontWeight.normal,
                              color: selected
                                  ? AppColors.ai
                                  : AppColors.textSecondary,
                            )),
                      ],
                    ),
                  ),
                );
              }

              return Expanded(
                child: GestureDetector(
                  behavior: HitTestBehavior.opaque,
                  onTap: () => onTap(i),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 220),
                        curve: Curves.easeOut,
                        width: 40,
                        height: 30,
                        decoration: BoxDecoration(
                          color: selected
                              ? d.color.withAlpha(28)
                              : Colors.transparent,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Icon(
                          selected ? d.selectedIcon : d.icon,
                          size: 20,
                          color: selected ? d.color : AppColors.textSecondary,
                        ),
                      ),
                      const SizedBox(height: 3),
                      Text(d.label,
                          style: GoogleFonts.inter(
                            fontSize: 10,
                            fontWeight: selected
                                ? FontWeight.w600
                                : FontWeight.normal,
                            color: selected ? d.color : AppColors.textSecondary,
                          )),
                    ],
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

// ── Desktop sidebar ───────────────────────────────────────────────────────────

class _SideNav extends ConsumerWidget {
  final String currentRoute;
  const _SideNav({required this.currentRoute});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final user = ref.watch(authProvider).user;

    return Container(
      width: 240,
      color: AppColors.surface,
      child: Column(
        children: [
          // ── Logo ──────────────────────────────────────────────────────────
          const SizedBox(height: 36),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Row(
              children: [
                Container(
                  width: 36, height: 36,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [AppColors.primary, AppColors.accent],
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                    ),
                    borderRadius: BorderRadius.circular(11),
                  ),
                  child: const Icon(Icons.hub_rounded,
                      color: AppColors.background, size: 20),
                ),
                const SizedBox(width: 10),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('LifeHub',
                        style: GoogleFonts.inter(
                            color: AppColors.textPrimary,
                            fontWeight: FontWeight.w800,
                            fontSize: 17,
                            letterSpacing: -0.3)),
                    Text('Personal Growth',
                        style: GoogleFonts.inter(
                            color: AppColors.textSecondary,
                            fontSize: 10,
                            letterSpacing: 0.2)),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 24),

          // ── Nav groups ────────────────────────────────────────────────────
          Expanded(
            child: ListView(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              children: [
                for (final group in _sidebarGroups) ...[
                  if (group.title != null) ...[
                    Padding(
                      padding: const EdgeInsets.fromLTRB(8, 16, 8, 6),
                      child: Text(
                        group.title!.toUpperCase(),
                        style: GoogleFonts.inter(
                          fontSize: 10,
                          fontWeight: FontWeight.w700,
                          color: AppColors.textHint,
                          letterSpacing: 1.0,
                        ),
                      ),
                    ),
                  ],
                  for (final dest in group.items)
                    _SideItem(
                      dest: dest,
                      selected: currentRoute == dest.route,
                      onTap: () => context.go(dest.route),
                    ),
                ],
                const SizedBox(height: 16),
              ],
            ),
          ),

          // ── User profile card ─────────────────────────────────────────────
          Padding(
            padding: const EdgeInsets.fromLTRB(12, 0, 12, 20),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppColors.surfaceCard,
                borderRadius: BorderRadius.circular(14),
                border: Border.all(color: AppColors.border),
              ),
              child: Row(
                children: [
                  Container(
                    width: 36, height: 36,
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [AppColors.primary, AppColors.accent],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      shape: BoxShape.circle,
                    ),
                    child: Center(
                      child: Text(
                        (user?.name.isNotEmpty ?? false)
                            ? user!.name[0].toUpperCase() : 'U',
                        style: GoogleFonts.inter(
                            color: AppColors.background,
                            fontWeight: FontWeight.w700,
                            fontSize: 15),
                      ),
                    ),
                  ),
                  const SizedBox(width: 10),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          user?.name.split(' ').first ?? 'Usuario',
                          style: GoogleFonts.inter(
                              color: AppColors.textPrimary,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                          overflow: TextOverflow.ellipsis,
                        ),
                        Text('LifeHub Pro',
                            style: GoogleFonts.inter(
                                color: AppColors.accent,
                                fontSize: 10,
                                fontWeight: FontWeight.w600)),
                      ],
                    ),
                  ),
                  IconButton(
                    icon: const Icon(Icons.logout_rounded,
                        size: 18, color: AppColors.textSecondary),
                    onPressed: () =>
                        ref.read(authProvider.notifier).logout(),
                    tooltip: 'Cerrar sesión',
                    padding: EdgeInsets.zero,
                    constraints: const BoxConstraints(
                        minWidth: 32, minHeight: 32),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

// ── Sidebar item ──────────────────────────────────────────────────────────────

class _SideItem extends StatelessWidget {
  final _Dest dest;
  final bool selected;
  final VoidCallback onTap;

  const _SideItem(
      {required this.dest, required this.selected, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 2),
      child: GestureDetector(
        onTap: onTap,
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 180),
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 9),
          decoration: BoxDecoration(
            color: selected
                ? dest.color.withAlpha(22)
                : Colors.transparent,
            borderRadius: BorderRadius.circular(10),
          ),
          child: Row(
            children: [
              // Colored indicator bar
              AnimatedContainer(
                duration: const Duration(milliseconds: 180),
                width: 3,
                height: selected ? 18 : 0,
                decoration: BoxDecoration(
                  color: selected ? dest.color : Colors.transparent,
                  borderRadius: BorderRadius.circular(2),
                ),
              ),
              SizedBox(width: selected ? 8 : 0),
              Icon(
                selected ? dest.selectedIcon : dest.icon,
                size: 19,
                color: selected ? dest.color : AppColors.textSecondary,
              ),
              const SizedBox(width: 10),
              Expanded(
                child: Text(
                  dest.label,
                  style: GoogleFonts.inter(
                    fontSize: 13,
                    fontWeight:
                        selected ? FontWeight.w600 : FontWeight.normal,
                    color: selected ? dest.color : AppColors.textSecondary,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              ),
              if (selected)
                Container(
                  width: 6, height: 6,
                  decoration: BoxDecoration(
                      color: dest.color, shape: BoxShape.circle),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
