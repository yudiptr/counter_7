class dataBudget {
  static List<dataBudget> budgets = [];
  String judul;
  int nominal;
  String jenis;
  DateTime date;

  dataBudget({
    required this.judul,
    required this.nominal,
    required this.jenis,
    required this.date,
  });

  static void addBudget({
    required judul,
    required nominal,
    required jenis,
    required date,
  }) {
    budgets.add(dataBudget(
      judul: judul,
      nominal: nominal,
      jenis: jenis,
      date: date,
    ));
  }
}
