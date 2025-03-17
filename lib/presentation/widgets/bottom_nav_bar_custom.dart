import 'package:flutter/material.dart';

class BottomNavBarCustom extends StatelessWidget {
  const BottomNavBarCustom({super.key, required this.selectedIndex, this.onTap});

  final int selectedIndex;
  final Function(int)? onTap;

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return BottomNavigationBar(
      currentIndex: selectedIndex,
      onTap: onTap,
      backgroundColor: colorScheme.primaryContainer,
      selectedItemColor: colorScheme.primary,
      unselectedItemColor: Colors.grey,
      showSelectedLabels: true,
      showUnselectedLabels: true,
      type: BottomNavigationBarType.fixed,
      selectedLabelStyle: const TextStyle(fontWeight: FontWeight.bold),
      items: [
        BottomNavigationBarItem(
          icon: _AnimatedNavIcon(icon: Icons.cloud, isSelected: selectedIndex == 0),
          label: 'Clima',
        ),
        BottomNavigationBarItem(
          icon: _AnimatedNavIcon(icon: Icons.event_note_outlined, isSelected: selectedIndex == 1),
          label: 'Eventos',
        ),
        BottomNavigationBarItem(
          icon: _AnimatedNavIcon(icon: Icons.favorite, isSelected: selectedIndex == 2),
          label: 'Favoritos',
        ),
        BottomNavigationBarItem(
          icon: _AnimatedNavIcon(icon: Icons.map_outlined, isSelected: selectedIndex == 3),
          label: 'Mapa',
        ),
      ],
    );
  }
}

class _AnimatedNavIcon extends StatelessWidget {
  final IconData icon;
  final bool isSelected;

  const _AnimatedNavIcon({required this.icon, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;

    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          icon,
          color: isSelected ? colorScheme.primary : Colors.grey,
          size: isSelected ? 28 : 24,
        ),
        if (isSelected)
          Container(
            margin: const EdgeInsets.only(top: 4),
            height: 4,
            width: 4,
            decoration: BoxDecoration(color: colorScheme.primary, shape: BoxShape.circle),
          ),
      ],
    );
  }
}
