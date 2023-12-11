List getUniqueNames(List names) => names.toSet().toList();

void main()
{
  List inputNames = ["jenish","mann","kartik","fenil","ashu"];

  List uniqueNames = getUniqueNames(inputNames);
  print("OEIGINAL NAMES : $inputNames");
  print("UNIQUE NAMES : $uniqueNames");
}