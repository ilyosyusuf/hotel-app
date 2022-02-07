import 'package:lessontvelwe/models/hotel_model.dart';
import 'package:lessontvelwe/models/owner_model.dart';

class HotelData {
  static final List<HotelModel> _list = [
    HotelModel(
      'Radisson blu',
      'S.A, Road, Kochi',
      "4 Bedroom",
      "2 Bathroom",
      _desc,
      ['https://cdn1.goibibo.com/voy_mmt/t_g/htl-imgs/201301221205489537-0gck7u443117teelpb9buqct0035.jpg',
        'https://media.radissonhotels.net/image/radisson-blu-hotel-tashkent/guestroom/16256-114260-f72060038_3xl.jpg',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/181017908.jpg?k=438b8f184398480380f1a45e64eff6a36f2366a0fcd3e3d4d78e29d819c20434&o=&hp=1',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/181017913.jpg?k=f9b01665a36b8e711b0f59fc89059f629eb1e3762546a144f9d268d82b6873a0&o=&hp=1',
        'https://media-cdn.tripadvisor.com/media/photo-s/0e/5a/b4/40/lobby.jpg',
        'https://media.radissonhotels.net/image/radisson-blu-hotel-tashkent/guestroom/16256-114260-f72060012_3xl.jpg'
      ],
      OwnerModel('Michelle Ray', 'https://i.pinimg.com/736x/76/5c/f5/765cf515dd0128f2e7df641ac32a5773.jpg', '+998931234567'),
      1.6 ,
      "\$ 32399 / Week",
      'https://www.kompas.net/wp-content/uploads/2015/02/radisson-blu-vilnius_om-map.jpg',
    ),
    HotelModel(
      'Hilton',
      'Tashkent, Uzbekistan',
      "3 Bedroom",
      "3 Bathroom",
      _desc,
      ['https://dynamic-media-cdn.tripadvisor.com/media/photo-o/1b/2e/e2/e1/hilton-tashkent-city.jpg?w=900&h=-1&s=1',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/249726706.jpg?k=addd1393ada03988da7a1ca1976979e95366e6f2837649124a561c0d8214572f&o=&hp=1',
        'https://marakandatravel.asia/wp-content/uploads/2020/01/83659724_484219065593909_5778839713213317120_o-848x530.jpg',
        'https://cf.bstatic.com/xdata/images/hotel/max1280x900/248794785.jpg?k=9df67b5029bca1b54ec645d03cc109625cd761f2e2c44cbe00de3a095d760272&o=&hp=1',
        'https://exp.cdn-hotels.com/hotels/39000000/38720000/38712500/38712425/186a59d5_z.jpg?impolicy=fcrop&w=773&h=530&q=high',
        'https://cf.bstatic.com/xdata/images/hotel/max1024x768/248781578.jpg?k=72f87e602a02b8606954c52fb880c25b2aaa03ac58d09ffe55a2337986377ca0&o=&hp=1',

      ],
      OwnerModel('Jakhongir Artikhojaev', 'https://zamin.uz/uploads/posts/2019-05/1557896205_uc0k7wswml1pkfnj0emoppw3vc7r-eyg.jpg', '+998931234567'),
      1.2,
      "\$ 18900 / Week",
      'https://static-maps.yandex.ru/1.x/?api_key=01931952-3aef-4eba-951a-8afd26933ad6&theme=light&lang=en_US&size=520%2C440&l=map&spn=0.005812%2C0.004091&ll=69.248381%2C41.316522&lg=0&cr=0&pt=69.248385%2C41.316427%2Ccomma&signature=fi6f08KNsSDSkMG4y0mk9sLaxflh3YmjXy051OsSbr8=',
    ),
    HotelModel(
      'RIU hotel',
      'New York, USA',
      "6 Bedroom",
      "4 Bathroom",
      _desc,
      ['https://rinaldinyc.com/wp-content/uploads/2014/02/RIUNight1.jpg',
        'https://content.tui.co.uk/adamtui/2018_3/5_16/cb51083a-c5a5-4d2c-8858-a89a01090cd1/ACC_972121_NYC_022WebOriginalCompressed.jpg?i10c=img.resize(width:488);img.crop(width:488%2Cheight:274)',
        'https://media-cdn.tripadvisor.com/media/photo-s/0e/8b/d8/d5/hotel-riu-plaza-new-york.jpg',
        'https://www.riu.com/en/binaris/lobby-riu-plaza-new-york_tcm55-226339.jpg?v=tm230621_1032',
        'https://www.nycgo.com/images/venues/11391/riu_plaza_ny__deluxe_dbl_2_full_beds_20160523__large.jpg',
        'https://www.riu.com/en/binaris/restaurante-6-hotel-riu-plaza-new-york-times-square_tcm55-178128.jpg?v=tm230621_1032',

      ],
      OwnerModel('Mark Edisson', 'https://mediaslide-us.storage.googleapis.com/click/pictures/3156/3264/profile-1569964271-2cb0d9a1611482c1a09a97bba6526602.jpg', '+998931234567'),
      2.5,
      "\$ 23990 / Week",
      'http://www.starstufftravel.com/uploads/1/9/5/2/19528227/staticmap_orig.png',
    ),
    HotelModel(
      'Hyatt Regency',
      'Paris, France',
      "5 Bedroom",
      "4 Bathroom",
      _desc,
      ['https://pix8.agoda.net/hotelImages/11359/0/68c1bdc0dd0770cc26957d194fa0710e.jpg?s=1024x768',
        'https://www.en.kayak.sa/rimg/himg/32/6c/dd/ice-87537372-79285421_3XL-459111.jpg?width=720&height=576&crop=true',
        'https://pix10.agoda.net/hotelImages/2288081/462045647/11d51e9cdfea6a4284388b48eae1f28f.jpg?ca=24&ce=0&s=1024x768',
        'https://assets.hyatt.com/content/dam/hyatt/hyattdam/images/2019/07/24/1253/Hyatt-Regency-Paris-Etoile-P724-Windo-Skybar.jpg/Hyatt-Regency-Paris-Etoile-P724-Windo-Skybar.16x9.jpg?imwidth=1280',
        'https://media-cdn.tripadvisor.com/media/photo-s/14/ff/36/89/windo-by-night.jpg',
        'https://en.parisinfo.com/var/otcp/sites/images/node_43/node_51/node_77884/node_77885/hyatt-regency-paris-etoile-lobby-%7C-630x405-%7C-%C2%A9-c%C3%A9cil-mathieu/21354602-1-fre-FR/Hyatt-Regency-Paris-Etoile-Lobby-%7C-630x405-%7C-%C2%A9-C%C3%A9cil-MATHIEU.jpg',
      ],
      OwnerModel('Miguel Totti', 'https://i.pinimg.com/474x/c3/f7/50/c3f7509eebeef379a197e8b93c4509c5--men-curly-hairstyles-boys-curly-haircuts.jpg', '+998931234567'),
      3.1,
      "\$ 44900 / Week",
      'https://icc2017.ieee-icc.org/sites/icc2017.ieee-icc.org/files/u51/map-hyatt.png',
    ),
  ];

  static List<HotelModel> get list => _list;
  static const String _desc =
      "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.";
}