abstract class Animal {
  String name;
  int age;
  String spesies;

  Animal(this.name, this.age, this.spesies);

  void caraBersuara();

  void displayInfo() {
    print('''
Nama: $name,
Age: $age,
Spesies: $spesies
''');
  }
}

class Singa extends Animal {
  int jumlahKaki;

  Singa(name, age, spesies, this.jumlahKaki) : super(name, age, spesies);

  @override
  void caraBersuara() {
    print('Suara singa');
  }
}

class Gajah extends Animal {
  String warnaTubuh;

  Gajah(name, age, spesies, this.warnaTubuh) : super(name, age, spesies);

  @override
  void caraBersuara() {
    print('Suara gajah');
  }
}

void hewanBersuara(Animal animal) {
  animal.caraBersuara();
}

void main() {
  Animal mySinga = Singa('Maung', 3, 'Jawa', 4);
  Animal myGajah = Gajah('Bobi', 5, 'Sumatra', 'Biru');

  hewanBersuara(mySinga);
  hewanBersuara(myGajah);

  mySinga.displayInfo();
  myGajah.displayInfo();
}
