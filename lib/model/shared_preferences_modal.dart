enum Gender {
  MALE,
  FEMALE,
  OTHER
}
enum Programing{DART,JAVA,PYTHON,PHP}

class Setting{
   Gender gender;
   Set<Programing> programing;
   bool isStudent;
  Setting({required this.gender,required this.programing,required this.isStudent});
}