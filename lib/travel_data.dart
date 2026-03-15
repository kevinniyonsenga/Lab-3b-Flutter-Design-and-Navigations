// lib/travel_data.dart
class TravelDestination {
  final String id;
  final String name;
  final String location;
  final String description;
  final double price;
  final double rating;
  final int reviews;
  final String imageUrl;
  final List<String> categories;
  final bool isPopular;
  final bool isRecommended;
  
  TravelDestination({
    required this.id,
    required this.name,
    required this.location,
    required this.description,
    required this.price,
    required this.rating,
    required this.reviews,
    required this.imageUrl,
    required this.categories,
    required this.isPopular,
    required this.isRecommended,
  });
}

class TravelData {
  static List<Map<String, String>> categories = [
    {'id': '1', 'name': 'National Parks', 'icon': '🏞️'},
    {'id': '2', 'name': 'Lakes', 'icon': '🌊'},
    {'id': '3', 'name': 'Mountains', 'icon': '⛰️'},
    {'id': '4', 'name': 'Cultural', 'icon': '🏛️'},
    {'id': '5', 'name': 'Wildlife', 'icon': '🦒'},
    {'id': '6', 'name': 'Waterfalls', 'icon': '💧'},
    {'id': '7', 'name': 'Cities', 'icon': '🏙️'},
    {'id': '8', 'name': 'Adventure', 'icon': '🧗'},
  ];

  static List<TravelDestination> destinations = [
    TravelDestination(
      id: '1',
      name: 'Volcanoes National Park',
      location: 'Musanze, Rwanda',
      description: 'Home to the endangered mountain gorillas, Volcanoes National Park offers unforgettable gorilla trekking experiences. Hike through lush bamboo forests and encounter these magnificent creatures in their natural habitat. The park also features golden monkeys and five stunning volcanoes.',
      price: 1500.0,
      rating: 4.9,
      reviews: 1243,
      imageUrl: 'assets/images/rwanda/volcanoes_national_park.jpg',
      categories: ['national parks', 'wildlife', 'adventure'],
      isPopular: true,
      isRecommended: true,
    ),
    TravelDestination(
      id: '2',
      name: 'Lake Kivu',
      location: 'Rubavu, Rwanda',
      description: 'One of Africa\'s Great Lakes, Lake Kivu offers stunning scenery with beautiful beaches and clear waters. Enjoy boat rides, kayaking, and relaxing on the shores. Visit the vibrant town of Rubavu and experience the local culture.',
      price: 450.0,
      rating: 4.7,
      reviews: 2156,
      imageUrl: 'assets/images/rwanda/lake_kivu.jpg',
      categories: ['lakes', 'adventure'],
      isPopular: true,
      isRecommended: true,
    ),
    TravelDestination(
      id: '3',
      name: 'Nyungwe Forest National Park',
      location: 'Nyamagabe, Rwanda',
      description: 'One of the oldest rainforests in Africa, Nyungwe Forest is a biodiversity hotspot. Home to chimpanzees, 13 primate species, and over 300 bird species. The famous canopy walk offers breathtaking views of the forest.',
      price: 350.0,
      rating: 4.8,
      reviews: 1876,
      imageUrl: 'assets/images/rwanda/nyungwe_forest.jpg',
      categories: ['national parks', 'wildlife', 'forests'],
      isPopular: true,
      isRecommended: false,
    ),
    TravelDestination(
      id: '4',
      name: 'Kigali City',
      location: 'Kigali, Rwanda',
      description: 'The vibrant capital city of Rwanda, known for its cleanliness, safety, and friendly people. Visit the Kigali Genocide Memorial, explore local markets, enjoy excellent restaurants, and experience the city\'s thriving arts scene.',
      price: 250.0,
      rating: 4.6,
      reviews: 1543,
      imageUrl: 'assets/images/rwanda/kigali_city.jpg',
      categories: ['cities', 'cultural'],
      isPopular: false,
      isRecommended: true,
    ),
    TravelDestination(
      id: '5',
      name: 'Akagera National Park',
      location: 'Eastern Province, Rwanda',
      description: 'Rwanda\'s only Big Five safari destination. Explore savannah landscapes, spot elephants, lions, buffalo, leopards, and rhinos. Take boat safaris on Lake Ihema and see hippos, crocodiles, and hundreds of bird species.',
      price: 400.0,
      rating: 4.8,
      reviews: 876,
      imageUrl: 'assets/images/rwanda/akagera_national_park.jpg',
      categories: ['national parks', 'wildlife', 'adventure'],
      isPopular: true,
      isRecommended: true,
    ),
    TravelDestination(
      id: '6',
      name: 'Musanze Caves',
      location: 'Musanze, Rwanda',
      description: 'Explore the fascinating Musanze Caves, formed by volcanic activity. These caves stretch for over 2 kilometers and offer a unique underground adventure. Learn about their history and significance to local communities.',
      price: 150.0,
      rating: 4.5,
      reviews: 2134,
      imageUrl: 'assets/images/rwanda/musanze_caves.jpg',
      categories: ['adventure', 'historical'],
      isPopular: false,
      isRecommended: false,
    ),
    TravelDestination(
      id: '7',
      name: 'Lake Burera',
      location: 'Northern Province, Rwanda',
      description: 'A stunning twin lake with Lake Ruhondo, offering breathtaking views of rolling hills and terraced farms. Perfect for boat trips, photography, and experiencing rural Rwandan life. The lakes are surrounded by beautiful landscapes.',
      price: 200.0,
      rating: 4.7,
      reviews: 1542,
      imageUrl: 'assets/images/rwanda/lake_burera.jpg',
      categories: ['lakes', 'nature'],
      isPopular: false,
      isRecommended: true,
    ),
    TravelDestination(
      id: '8',
      name: 'King\'s Palace Museum',
      location: 'Nyanza, Rwanda',
      description: 'Experience Rwandan royal history at the King\'s Palace Museum. See the reconstructed traditional royal residence, learn about the monarchy, and meet the famous long-horned Inyambo cattle that are part of Rwandan cultural heritage.',
      price: 100.0,
      rating: 4.6,
      reviews: 987,
      imageUrl: 'assets/images/rwanda/kings_palace.jpg',
      categories: ['cultural', 'historical'],
      isPopular: false,
      isRecommended: true,
    ),
  ];

  static List<TravelDestination> getPopularDestinations() {
    return destinations.where((d) => d.isPopular).toList();
  }

  static List<TravelDestination> getRecommendedDestinations() {
    return destinations.where((d) => d.isRecommended).toList();
  }
}