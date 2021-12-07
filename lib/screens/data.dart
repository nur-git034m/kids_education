import 'package:flutter/material.dart';

class AnimalInfo {
  final int position;
  final String? name;
  final String? iconImage;
  final String? description;
  final Color? color;
  final String? paragraph;
  final List<String>? images;
  final String? lifespan;
  final String? speed;

  AnimalInfo(this.position,
      {this.name,
        this.iconImage,
        this.description,
        this.color,
        this.paragraph,
        this.images,
        this.lifespan,
        this.speed});
}

List<String> img = [
  'https://cdn.pixabay.com/photo/2013/07/18/10/57/mercury-163610_1280.jpg',
  'https://cdn.pixabay.com/photo/2014/07/01/11/38/planet-381127_1280.jpg',
  'https://image.shutterstock.com/image-illustration/mercury-high-resolution-images-presents-600w-367615301.jpg'
];
String par =
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. "
    "Lorem Ipsum has been the industry's standard dummy text ever since the 1500s,"
    " when an unknown printer took a galley of type and scrambled it to make a type specimen book."
    " It has survived not only five centuries, but also the leap into electronic typesetting,"
    " remaining essentially unchanged. It was popularised in the 1960s with the release of"
    " Letraset sheets containing Lorem Ipsum passages,"
    " and more recently with desktop publishing software like Aldus PageMaker "
    "including versions of Lorem Ipsum.";

List<AnimalInfo> animallist = [
  AnimalInfo(1,
      name: 'Теңіз шаяны',
      color: Colors.red,
      iconImage: 'assets/c_crab.png',
      description: "Шаянның жүйке жүйесі сияқты миы жоқ ",
      paragraph: "Шаян - қабықпен жабылған жалпақ дөңгелек денелі теңіз жануары, "
          "және алдыңғы жұпта үлкен тырнақтары бар бес жұп аяқ. Шаяндар әдетте бүйіріне қарай қозғалады. Шаян – бұл тіршілік иесінің тағам ретінде жейтін еті.",
      images: img,
      lifespan: '3–4 жыл',
      speed: ' Күніне бір миль'),
  AnimalInfo(2,
      name: 'Балық',
      color: Colors.lightBlueAccent,
      iconImage: 'assets/c_fish.png',
      description: "Балық жөтеледі.. Шынымен!",
      paragraph: "Балықтар - су омыртқалы жануарлар, олардың желбезектері бар, бірақ саусақтары немесе саусақтары сияқты саусақтары жоқ. Еске салайық, омыртқалылар - ішкі омыртқалары бар жануарлар. Балықтардың көпшілігі жалпы дене пішінінде жеңілдетілген.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/39/venus-11022_1280.jpg',
        'https://image.shutterstock.com/image-photo/solar-system-venus-second-planet-600w-515581927.jpg'
      ],
      lifespan: ' 3 – 5 жыл,',
      speed: ' 3.2 км/сағ'),
  AnimalInfo(3,
      name: 'Піл',
      color: Colors.grey,
      iconImage: 'assets/c_elephant.png',
      description: "Піл - құрлықтағы ең үлкен сүтқоректі.",
      paragraph: " Пілдер - Elephantidae тұқымдасының сүтқоректілері және ең үлкені"
          "бар жердегі жануарлар. Қазіргі уақытта үш түрі белгілі:"
          "африкалық бұта пілі, африкалық орман пілі және азиялық піл.",
      images: [
        'https://cdn.pixabay.com/photo/2011/12/13/14/31/earth-11015_1280.jpg',
        'https://cdn.pixabay.com/photo/2011/12/14/12/11/astronaut-11080_1280.jpg',
        'https://cdn.pixabay.com/photo/2016/01/19/17/29/earth-1149733_1280.jpg',
        'https://image.shutterstock.com/image-photo/3d-render-planet-earth-viewed-600w-1069251782.jpg'
      ],
      lifespan: '60- 70 years',
      speed: '40 km/h'),
  AnimalInfo(4,
      name: 'Бұғы',
      color: Colors.orangeAccent,
      iconImage: 'assets/c_deer.png',
      description: "Бұлардың әртүрлі түрлері бар.",
      paragraph: "Жыл сайын төгілетін және әдетте тек еркек көтеретін тармақталған сүйекті мүйіздері бар тұяқты жайылым немесе шолақ жануар.",
      images: [],
      lifespan
      :" 11 - 20 жыл",
      speed
      :" 80 км/сағ"),
  AnimalInfo(5,
      name: 'Жолбарыс',
      color: Colors.black,
      iconImage: 'assets/c_tiger.png',
      description: "Жолбарыс бір уақытта 33 футқа дейін секіре алады",
      paragraph: "Жолбарыс - мысықтардың ең үлкен түрі және пантера тұқымдасының өкілі. ",
      images: [],
      lifespan
      :"10 – 15 жыл",
      speed
      :"49 – 65 км/сағ "),
  AnimalInfo(6,
      name: 'Үй қоян',
      color: Colors.pink[50],
      iconImage: 'assets/c_rabbit.png',
      description:
      "Қоян - қорқыныштан өлуі мүмкін өте нәзік жануар.",
      paragraph:"Қояндар секірумен және сәбізді жеумен танымал."
          "Еркек қоянды тай, аналығын қанжыға деп атайды. Қоянның баласын жинақ деп атайды, ол көжек дегенді білдіреді." ,
      images: [],
      lifespan
      :" 1 – 2 жыл",
      speed
      :"4.0 км  3.5 сағ"),
  AnimalInfo(7,
      name: 'Көк құс',
      color: Colors.lightBlue,
      iconImage: 'assets/c_bluebird.png',
      description: "Көк құстарды жәндіктермен күресу үшін бағбандар жақсы көреді",
       
      paragraph: "Көк құс әдетте сізді болашақта күтетін қуаныш пен бақыттың символы ретінде қабылданады. Егер бұл құс сіздің өміріңізде пайда болса, ол сізді қоршаған табиғаттың барлық сұлулығын еске түсіреді.",
      images: ['https://i.pinimg.com/originals/77/ef/ed/77efed825cab59e3e0a2d7d6aaf4f1a6.jpg'],
      lifespan
      :" 6-10 жыл",
      speed
      :" 40-50км/сағ."),
];
