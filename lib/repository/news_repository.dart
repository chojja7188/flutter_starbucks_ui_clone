import 'package:flutter_starbucks_ui_clone/model/news.dart';

class NewsRepository {
  List<News> getNewsList() {
    return [
      const News(
          imagePath: 'assets/images/news/news_image_1.jpeg',
          title: '언더마이카 콜라보 매장 확대 판매',
          description: '간결한 실루엣으로 패션과 실용성을 모두 잡은 유니크한 콜라보 제품입니다.'
      ),
      const News(
          imagePath: 'assets/images/news/news_image_2.jpeg',
          title: '쁘띠 까눌레 출시 기념 이벤트',
          description: '풍성한 바닐라 향과 쫀득한 식감!\n프랑스에서 온 까눌레를 2+1으로 만나보세요.'
      ),
      const News(
          imagePath: 'assets/images/news/news_image_3.jpeg',
          title: "'모바일 상품권 저장 및 잔액 적립' 서비스 출시 안내",
          description: '스타벅스 모바일 상품권 관련 신규 서비스를 소개합니다!'
      ),
      const News(
          imagePath: 'assets/images/news/news_image_4.jpeg',
          title: '랜더스데이 이벤트',
          description: '4월 1일부터 7일까지 랜더스데이 혜택을 누려보세요!'
      ),
      const News(
          imagePath: 'assets/images/news/news_image_5.jpeg',
          title: '랜더스와 함께 즐기는 온라인 스토어 쿠폰 이벤트',
          description: '지금 바로 10% 할인 쿠폰을 만나보세요.'
      ),
      const News(
          imagePath: 'assets/images/news/news_image_6.jpeg',
          title: '4월 유니버스 클럽 위크',
          description: '유니버스 클럽 회원만의 혜택을 확인해보세요'
      ),
      const News(
          imagePath: 'assets/images/news/news_image_7.jpeg',
          title: '하울팟과 함께하는 스타벅스 펫 세미나(2차)',
          description: '더북한강R, 구리갈매DT점에서 진행하는 펫 세미나에 초대합니다.'
      ),
      const News(
          imagePath: 'assets/images/news/news_image_8.jpeg',
          title: 'TMAP과 함께 하는 사이즈업 이벤트',
          description: '벚꽃 매장으로 길 안내 받고 사이즈업 쿠폰 받아 가세요!'
      ),
    ];
  }
}