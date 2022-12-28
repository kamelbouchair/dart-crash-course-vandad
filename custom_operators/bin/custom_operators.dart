void main(List<String> args) {
  final member1 = FamilyMember(name: 'mother');
  final member2 = FamilyMember(name: 'father');
  final family = member1 + member2;
  print(family);
}

///custom operators are kinda functions: it's the ability for you to add
///functionality to Dart such as + or - sign can work in the way you that want
class FamilyMember {
  final String name;
  const FamilyMember({required this.name});
  @override
  String toString() => 'family member (name: $name)';
}

///I want 2 FamilyMembers plused together to create a family.
class Family {
  final List<FamilyMember> members;

  const Family({required this.members});

  @override
  String toString() => 'family member (name: $members)';
}

extension ToFamily on FamilyMember {
  Family operator +(FamilyMember other) => Family(members: [
        this,
        other,
      ]);

  ///'this' keyword is an extension of FamilyMember.(member1 + member2),
  /// member1 = this, member2 = other.
}
