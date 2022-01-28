class NaveItem {
  final int id;
  final String icon;
  final String label;

  NaveItem({required this.label, required this.icon, required this.id});
}

List<NaveItem> navItems = [
  NaveItem(label: "홍", icon: "assets/icons/home.svg", id: 0),
  NaveItem(label: "추천", icon: "assets/icons/star.svg", id: 1),
  NaveItem(label: "카테고리", icon: "assets/icons/square.svg", id: 2),
  NaveItem(label: "검색", icon: "assets/icons/loupe.svg", id: 3),
  NaveItem(label: "마이컬리", icon: "assets/icons/user.svg", id: 4),
];
