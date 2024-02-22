class Pet {
  final int ID;
  final String peekImageURL;
  final String mainImageURL;
  final String breed;
  final String description;
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
      required this.description,
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
  final int distance;

  PetStore(
      {required this.ID,
      required this.name,
      required this.location,
      required this.distance});
}

final List<Pet> PetList = [
  Pet(
      ID: 0,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/1_qidbjt.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263297/Pet%20Store%20Application%20Assets/Main%20Images/0_cuoruh.png',
      breed: 'Sphinx Cat',
      description:
          'The Sphinx cat, hairless and charming, boasts a velvety skin in various colors and patterns. Playful and affectionate, they capture hearts with their unique appearance and lively personalities.',
      weight: 3.5,
      height: 22,
      color: "Dark Pink",
      price: 60.00,
      petStoreID: 0),
  Pet(
      ID: 1,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/0_qvgri3.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263296/Pet%20Store%20Application%20Assets/Main%20Images/1_kcifds.png',
      breed: 'Persian Cat',
      description:
          'The Persian cat, also known as the Persian Longhair, is a long-haired breed of cat characterized by a round face and short muzzle. These elegant felines have a distinctive appearance, originating in Persia (modern-day Iran).',
      weight: 3.5,
      height: 22,
      color: "Gold",
      price: 85.00,
      petStoreID: 0),
  Pet(
      ID: 2,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/2_rxnual.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263296/Pet%20Store%20Application%20Assets/Main%20Images/2_wjlsy1.png',
      breed: 'Bengal Cat',
      description:
          'Bengal cats are beautiful, wild-looking, and smart cats. This hybrid cat breed is growing in popularity due to their pattern and personality, and they stay about the same size as a large domestic house cat.',
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
      description:
          'The Abyssinian cat, nicknamed "Aby," is a medium-sized cat with a lean, muscular body and a short coat. Unlike many domesticated cat breeds, it is extremely active and playful; it loves to climb tall pieces of furniture, tackle toys, and play interactive games with its owners.',
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
      description:
          'With a super-long white coat, the shih tzu can be strikingly pretty, or easily dirtied – they require nearly constant care to stay clean. Popular with families, and affectionate with children, this dog was once the royal dog of choice in China.',
      weight: 5.2,
      height: 32,
      color: "White",
      price: 75.00,
      petStoreID: 1),
  Pet(
      ID: 5,
      peekImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263217/Pet%20Store%20Application%20Assets/Preview%20Images/5_z5n3i4.png',
      mainImageURL:
          'https://res.cloudinary.com/dbwwffypj/image/upload/v1708263299/Pet%20Store%20Application%20Assets/Main%20Images/5_hd3pkw.png',
      breed: 'German Shepherd',
      description:
          'Superdogs of the canine world, German Shepherds are confident, courageous, intelligent, and faithful. They have a look of nobility, and the intentions to boot. They are a versatile breed prized for their utility and smarts, often used in working roles as K-9 units, search and rescue, and service dogs.',
      weight: 8.0,
      height: 50,
      color: "Dark Brown",
      price: 60.00,
      petStoreID: 1),
];

final List<PetStore> PetStoreList = [
  PetStore(ID: 0, name: "Cat Store", location: "Somewhere", distance: 10),
  PetStore(ID: 1, name: "Dog Store", location: "Somewhere", distance: 8)
];
