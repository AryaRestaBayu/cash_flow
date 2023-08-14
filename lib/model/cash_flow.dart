class CashFlow {
  String jenis_transaksi;
  int nominal;
  String tanggal;
  String alasan;

  CashFlow({
    required this.jenis_transaksi,
    required this.nominal,
    required this.tanggal,
    required this.alasan,
  });

  Map<String, dynamic> toJson() {
    return {
      "jenis_transaksi": jenis_transaksi,
      "nominal": nominal,
      "tanggal": tanggal,
      "alasan": alasan,
    };
  }

  factory CashFlow.fromJson(Map<String, dynamic> json) {
    return CashFlow(
      jenis_transaksi: json['jenis_transaksi'],
      nominal: json['nominal'],
      tanggal: json['tanggal'],
      alasan: json['alasan'],
    );
  }
}
