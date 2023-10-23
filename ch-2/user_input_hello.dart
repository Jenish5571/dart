void main()
{
  List a = List.generate( 3, (index) => " ${index + 1 } hello");

  print(a);
}