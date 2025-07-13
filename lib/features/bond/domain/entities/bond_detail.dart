class BondDetails {
  final String logo;
  final String companyName;
  final String description;
  final String isin;
  final String status;
  final ProsAndCons prosAndCons;
  final Financials financials;
  final IssuerDetails issuerDetails;

  const BondDetails({
    required this.logo,
    required this.companyName,
    required this.description,
    required this.isin,
    required this.status,
    required this.prosAndCons,
    required this.financials,
    required this.issuerDetails,
  });
}

class ProsAndCons {
  final List<String> pros;
  final List<String> cons;

  const ProsAndCons({
    required this.pros,
    required this.cons,
  });
}

class Financials {
  final List<MonthlyData> ebitda;
  final List<MonthlyData> revenue;

  const Financials({
    required this.ebitda,
    required this.revenue,
  });
}

class MonthlyData {
  final String month;
  final int value;

  const MonthlyData({
    required this.month,
    required this.value,
  });
}

class IssuerDetails {
  final String issuerName;
  final String typeOfIssuer;
  final String sector;
  final String industry;
  final String issuerNature;
  final String cin;
  final String leadManager;
  final String registrar;
  final String debentureTrustee;

  const IssuerDetails({
    required this.issuerName,
    required this.typeOfIssuer,
    required this.sector,
    required this.industry,
    required this.issuerNature,
    required this.cin,
    required this.leadManager,
    required this.registrar,
    required this.debentureTrustee,
  });
}
