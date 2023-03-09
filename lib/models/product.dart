class Product {
  final int id, price;
  final String title, description, image;

  Product(
      {required this.id,
      required this.description,
      required this.image,
      required this.price,
      required this.title});
}

List<Product> products = [
  Product(
    id: 1,
    price: 1836000,
    title: "TOYOTA bZ4X",
    image: "images/g.png",
    description:
        "Toyota bZ4X รถยนต์ C-SUV พลังงานไฟฟ้า 100% ที่ Toyota พัฒนาร่วมกับ Subaru เปิดราคาไทยที่ 1,836,000 บาท มีเพียงรุ่นขับเคลื่อน 4 ล้อ เพียงรุ่นเดียวเท่านั้น เปิดให้จับจองแล้ววันนี้ จำนวนจำกัด",
  ),
  Product(
    id: 2,
    price: 1229000,
    title: "HONDA Civic 1.5 VTEC TURBO \n Hatchback MY19",
    image: "images/f.png",
    description:
        "Honda Civic 1.5 Turbo Hatchback ใหม่ปี 2019 รถแฮตซ์แบ็ก 5 ประตูสปอร์ตพรีเมียมขึ้นด้วยชุดแต่งแบบ RS รอบคันและโดดเด่นด้วยท่อไอเสียแบบคู่ตรงกลางสไตล์สปอร์ตเทคโนโลยีความปลอดภัยระบบเบรกมือไฟฟ้า (Electric Parking Brake) Auto Brake Hold (Automatic Brake Hold) Honda SENSUNG และ Honda CONNECT นวัตกรรมเชื่อมต่อเพื่อการสื่อสารระหว่างผู้ขับขี่และรถยนต์",
  ),
  Product(
    id: 3,
    price: 1799000,
    title: "HONDA Accord e:HEV TECH",
    image: "images/e.png",
    description:
        "Honda Accord เส้นทางแห่งผู้นำด้านยนตรกรรมที่เปี่ยมด้วยเทคโนโลยีอันล้ำสมัยทั้งด้านการขับเคลื่อน ขุมพลังเทอร์โบและฟูลไฮบริด และด้านความปลอดภัยมอบความมั่นใจในทุกการเดินทางด้วยเทคโนโลยี ความปลอดภัยอัจฉริยะ Honda SENSING ซึ่งได้ติดตั้งเป็นมาตรฐานในทุกรุ่นย่อย",
  ),
  Product(
    id: 4,
    price: 1059000,
    title: "TOYOTA Corolla Altis GR Sport",
    image: "images/c.png",
    description:
        "Toyota ประเทศไทย เปิดตัวรถใหม่ Toyota Corolla Altis GR Sport 2022 รถสปอร์ตซีดานรุ่นปรับโฉมใหม่ ที่มาพร้อมกับดีไซน์สปอร์ต ตามแบบฉบับ Toyota Gazoo Racing โดยมีให้เลือกด้วยกัน 2 รุ่นย่อย ได้แก่ รุ่นเครื่องยนต์เบนซินขนาด 1.8 ลิตร GR Sport กับราคาเริ่ม 1.05 ล้านบาท และรุ่นเครื่องยนต์ไฮบริด HEV GR Sport ที่มีราคาอยู่ที่ 1.11 ล้านบาท",
  ),
  Product(
    id: 5,
    price: 1199900,
    title: "BYD Atto 3",
    image: "images/b.png",
    description:
        "BYD ATTO 3 เป็นรถยนต์ไฟฟ้าพิกัด B-SUV พื้นฐาน e-Platform 3.0 ซึ่งเป็นแพลตฟอร์มใหม่ล่าสุดของ BYD ที่ถูกออกแบบมาสำหรับรถยนต์ไฟฟ้าโดยเฉพาะ โดยในตลาดโลกจะมีทั้งหมด 2 รุ่นย่อยได้แก่ BYD ATTO 3 Extended Range และ BYD ATTO 3 Standard Range",
  ),
];
