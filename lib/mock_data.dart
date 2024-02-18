class Pet {
  final int ID;
  final String peekImageURL;
  final String mainImageURL;
  final String breed;
  final double weight;
  final double height;
  final String color;
  final double price;
  final int petStoreID;

  Pet(
      {required this.ID,
      required this.peekImageURL,
      required this.mainImageURL,
      required this.breed,
      required this.weight,
      required this.height,
      required this.color,
      required this.price,
      required this.petStoreID});
}

class PetStore {
  final int ID;
  final String name;
  final String location;

  PetStore({required this.ID, required this.name, required this.location});
}

final List<Pet> PetList = [
  Pet(
      ID: 0,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/0_qvgri3.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263297/Pet%20Store%20Application%20Assets/Main%20Images/0_cuoruh.png',
      breed: 'Persian Cat',
      weight: 3.5,
      height: 22,
      color: "Gold",
      price: 85.00,
      petStoreID: 0),
  Pet(
      ID: 1,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/1_qidbjt.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263296/Pet%20Store%20Application%20Assets/Main%20Images/1_kcifds.png',
      breed: 'Sphinx Cat',
      weight: 3.5,
      height: 22,
      color: "Gold",
      price: 60.00,
      petStoreID: 0),
  Pet(
      ID: 2,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/2_rxnual.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263296/Pet%20Store%20Application%20Assets/Main%20Images/2_wjlsy1.png',
      breed: 'Bengal Cat',
      weight: 4.9,
      height: 35,
      color: "Gold",
      price: 90.00,
      petStoreID: 0),
  Pet(
      ID: 3,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/3_dhypil.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263297/Pet%20Store%20Application%20Assets/Main%20Images/3_ruszgw.png',
      breed: 'Abyssinian Cat',
      weight: 4.9,
      height: 32,
      color: "Dark Pink",
      price: 75.00,
      petStoreID: 0),
  Pet(
      ID: 4,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/4_yy463y.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263297/Pet%20Store%20Application%20Assets/Main%20Images/4_mqurvd.png',
      breed: 'Shihtzu',
      weight: 5.2,
      height: 32,
      color: "White",
      price: 75.00,
      petStoreID: 1),
  Pet(
      ID: 4,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/5_z5n3i4.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263299/Pet%20Store%20Application%20Assets/Main%20Images/5_hd3pkw.png',
      breed: 'German Shepherd',
      weight: 8.0,
      height: 50,
      color: "Dark Brown",
      price: 60.00,
      petStoreID: 1),
];

final List<PetStore> PetStoreList = [
  PetStore(ID: 0, name: "Cat Store", location: "Somewhere"),
  PetStore(ID: 1, name: "Dog Store", location: "Somewhere")
];
