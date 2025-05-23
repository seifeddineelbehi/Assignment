String calculateBottleAge(int productionYear) {
  int currentYear = DateTime.now().year;
  int age = currentYear - productionYear;
  return "$age Year${age > 1 ? 's' : ''} old";
}
