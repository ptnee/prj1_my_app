import 'dart:convert';
import 'dart:ffi';
import 'package:http/http.dart' as http;
import 'dart:async' show Future;
import 'package:flutter/services.dart' show rootBundle;
// class read_data{
//   void read() async {
//     var jso = await rootBundle.loadString('data_crawl/product.json');
//
//     final demo = json.decode(jso);
//     print(jso.runtimeType);
//     print(demo);
//   }
//
// }


class Data {

  Set<String> allData = { 'Genshin Impact','Liên Minh Huyền Thoại: Tốc Chiến ' } ;

}

class Todo {

  final String title;
  final String description;
  const Todo(this.title, this.description);
}
class Data_Game_{
  final String Names;
  final String Images;
  final String Review;
  final String Link;
  const Data_Game_(this.Names, this.Images, this.Review, this.Link);

}
class Data_Game{

  void add( List list) {
    list.add('obj');
  }
  //add();

  var Data_game = <Data_Game_>[
    Data_Game_(
      'Genshin Impact',
      'https://cdn.tgdd.vn//GameApp/-1//top-20-game-choi-cung-ban-be-tren-dien-thoai-thu-vi-nhat-2021-1-800x450.jpg',
      'Genshin Impact là một tựa game có thể loại nhập vai kết hợp với yếu tố phiêu lưu đầy thú vị mà bạn nên thưởng thức. Đến với game, người chơi sẽ hóa thân thành một nhà lữ hành nhằm thực hiện chuyến dạo quanh cùng với những người bạn bè của mình tại một thế giới sống động và tuyệt đẹp có tên gọi là Teyvat.Thêm vào đó, khi bắt đầu vào game bạn có thể lựa chọn cho mình một nhân vật anh hoặc em nhằm mục đích kề vai sát cánh cùng bạn trong những chuyến phiêu lưu. Genshin Impact cũng là một tựa game có bản đồ thế giới mở nên bạn có thể thoải mái di chuyển và khám phá hết mọi ngóc ngách, địa điểm khác mà trò chơi mang đến. Đồng thời, bạn có thể thực hiện các hành động, kỹ năng khác như leo tường, chạy nhảy, bơi lội, bay lên không trung,...',
      'https://apps.apple.com/us/app/genshin-impact/id1517783697',
    ),
  Data_Game_(
      'Liên Minh Huyền Thoại: Tốc Chiến '
      ,'https://cdn.tgdd.vn//GameApp/-1//top-20-game-choi-cung-ban-be-tren-dien-thoai-thu-vi-nhat-2021-4-800x450.jpg'
      ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
      ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  )
  ];
  /*final data_game = List.generate(
    20,
        (i) => Data_test(
      'Genshin Impact $i',
          'https://cdn.tgdd.vn//GameApp/-1//top-20-game-choi-cung-ban-be-tren-dien-thoai-thu-vi-nhat-2021-1-800x450.jpg',
          'Genshin Impact là một tựa game có thể loại nhập vai kết hợp với yếu tố phiêu lưu đầy thú vị mà bạn nên thưởng thức. Đến với game, người chơi sẽ hóa thân thành một nhà lữ hành nhằm thực hiện chuyến dạo quanh cùng với những người bạn bè của mình tại một thế giới sống động và tuyệt đẹp có tên gọi là Teyvat.Thêm vào đó, khi bắt đầu vào game bạn có thể lựa chọn cho mình một nhân vật anh hoặc em nhằm mục đích kề vai sát cánh cùng bạn trong những chuyến phiêu lưu. Genshin Impact cũng là một tựa game có bản đồ thế giới mở nên bạn có thể thoải mái di chuyển và khám phá hết mọi ngóc ngách, địa điểm khác mà trò chơi mang đến. Đồng thời, bạn có thể thực hiện các hành động, kỹ năng khác như leo tường, chạy nhảy, bơi lội, bay lên không trung,... $i',
      'https://apps.apple.com/us/app/genshin-impact/id1517783697 $i',
    ),
  );*/
  /*
  Set<String> ImagesData = {
    'https://cdn.tgdd.vn//GameApp/-1//top-20-game-choi-cung-ban-be-tren-dien-thoai-thu-vi-nhat-2021-1-800x450.jpg'
    ,'https://cdn.tgdd.vn//GameApp/-1//top-20-game-choi-cung-ban-be-tren-dien-thoai-thu-vi-nhat-2021-4-800x450.jpg'
  } ;
  Set<String> NameData ={
    'Genshin Impact'
    ,'Liên Minh Huyền Thoại: Tốc Chiến '
  };
  Set<String> ReviewData ={
    'Genshin Impact là một tựa game có thể loại nhập vai kết hợp với yếu tố phiêu lưu đầy thú vị mà bạn nên thưởng thức. Đến với game, người chơi sẽ hóa thân thành một nhà lữ hành nhằm thực hiện chuyến dạo quanh cùng với những người bạn bè của mình tại một thế giới sống động và tuyệt đẹp có tên gọi là Teyvat.Thêm vào đó, khi bắt đầu vào game bạn có thể lựa chọn cho mình một nhân vật anh hoặc em nhằm mục đích kề vai sát cánh cùng bạn trong những chuyến phiêu lưu. Genshin Impact cũng là một tựa game có bản đồ thế giới mở nên bạn có thể thoải mái di chuyển và khám phá hết mọi ngóc ngách, địa điểm khác mà trò chơi mang đến. Đồng thời, bạn có thể thực hiện các hành động, kỹ năng khác như leo tường, chạy nhảy, bơi lội, bay lên không trung,...'
    ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
  };
  Set<String> LinkData ={
    'https://apps.apple.com/us/app/genshin-impact/id1517783697'
    ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  };
   */

}

class Data_Destination_00_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;

  const Data_Destination_00_(this.Names, this.Images, this.Review, this.Comment, this.Link);


}
class Data_Destination_01_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;

  const Data_Destination_01_(this.Names, this.Images, this.Review, this.Comment, this.Link);

}
class Data_Destination_02_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;

  const Data_Destination_02_(this.Names, this.Images, this.Review, this.Comment, this.Link);

}
class Data_Destination_03_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;

  const Data_Destination_03_(this.Names, this.Images, this.Review, this.Comment, this.Link);

}
class Data_Destination{
  final Set<String> Tag={
    'Resort'
    ,'Quán cafe'
    ,'Dã ngoại'
  };
  var tag = ['Resort'
    ,'Quán cafe'
    ,'Dã ngoại'];
  var Data_Destination_00 = <Data_Destination_00_>[
    Data_Destination_00_(
        'Maison De Été'
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/1-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'De Vu Pastry & Restaurant'
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/11-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'Lofita – Paris Dream'
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/10-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'Dear November Coffee'
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/5-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'Cup of tea Cafe & Bistro '
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/6-cac-quan-cafe-dep-o-hanoi-de-chup-hinh-1.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'Cafe Lissom Parlour'
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/7-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'The Ylang'
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/8-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'Platform Cafe'
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/9-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
    Data_Destination_00_(
        'Timeline Cafe '
        ,{'https://gotadi.com/tour/wp-content/uploads/2021/10/14-cac-quan-cafe-dep-o-hanoi-de-chup-hinh.jpg'}
        ,"Nhắc đến các các quán cafe đẹp ở Hà Nội chất các tính đồ sống ảo khó lòng có thể bỏ qua câu phố cà phê nổi tiếng thời gian gần đây. Quán có tông trắng đậm chất Hàn Quốc mà không tín đồ nào có thể bỏ lỡ được những vị trí check in xinh đẹp. Đồ uống ở đây cũng mang phong cách sống ảo khá đáng yêu, nhìn là trụy tim li"
        ,{}
        ,'Ngách 17 Ng. 4C P. Đặng Văn Ngữ, Trung Tự, Đống Đa, Hà Nội'
    ),
  ];

  // var Data_Destination_01 = <Data_Destination_01_>[
  //   Data_Destination_01_(
  //       ' quán bánh canh'
  //       ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIWHaNXq2RJWvMFM-dW2EaF9k0GpeCi_l6Fw&usqp=CAU'}
  //       ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
  //       ,{}
  //       ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  //   )
  // ];
  // var Data_Destination_02 = <Data_Destination_02_>[
  //   Data_Destination_02_(
  //       'sinh tố bơ'
  //       ,{'https://kangaroovietnam.vn/Uploads/sinh-to-bo.jpg'}
  //       ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
  //       ,{}
  //       ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  //   )
  // ];
  // var Data_Destination_03 = <Data_Destination_03_>[
  // Data_Destination_03_(
  //     'Chè sáng tạo'
  //     ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzEdN1TT4u56y4yZ438aYwnjM9r1ns4kHAw&usqp=CAU'}
  //     ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
  //     ,{}
  //     ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  //   )
  // ];
  dynamic  read_rss() async {
    var Data_Destination_01 = <Data_Destination_01_>[];
    print("nee");
    var jso = await rootBundle.loadString('data_crawl/product_adr_rs.json');
    print("neee");
    var m=0;
    final demo = json.decode(jso);
    for ( var i in demo ){
      m=m+1;
      if (i["name"].length < 100)
        i["name"]=(i["name"]+"                                                                                                  ");
      var j=Data_Destination_01_(i["name"],{i["img"]},i["adr"],{i["adr"]},"");
      Data_Destination_01.add(j);
    }
    print(Data_Destination_01.length);
    return Data_Destination_01;
  }
  dynamic  read_rs() async {
    print("nes");
    var Data_Destination_01 = <Data_Destination_01_>[
      Data_Destination_01_(
          'Chè sáng tạo'
          ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzEdN1TT4u56y4yZ438aYwnjM9r1ns4kHAw&usqp=CAU'}
          ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
          ,{}
          ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
      )
    ];
    print("nees");
    Data_Destination_01= await read_rss();
    print("neess");
    print(Data_Destination_01.length);
    return Data_Destination_01;
  }
  dynamic  read_cfs() async {
    var Data_Destination_02 = <Data_Destination_02_>[];
    var jso = await rootBundle.loadString('data_crawl/product_adr_cf.json');

    var m=0;
    final demo = json.decode(jso);
    for ( var i in demo ){
      m=m+1;
      if (i["name"].length < 100)
        i["name"]=(i["name"]+"                                                                                                  ");
      var j=Data_Destination_02_(i["name"],{i["img"]},i["adr"],{i["adr"]},"");
      Data_Destination_02.add(j);
    }
    print(Data_Destination_02.length);
    return Data_Destination_02;
  }
  dynamic  read_cf() async {
    var Data_Destination_02 = <Data_Destination_02_>[
      Data_Destination_02_(
          'Chè sáng tạo'
          ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzEdN1TT4u56y4yZ438aYwnjM9r1ns4kHAw&usqp=CAU'}
          ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
          ,{}
          ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
      )
    ];
    Data_Destination_02= await read_cfs();
    print(Data_Destination_02.length);
    return Data_Destination_02;
  }
  dynamic  read_adrs() async {
    var Data_Destination_03 = <Data_Destination_03_>[];
    var jso = await rootBundle.loadString('data_crawl/product_adr.json');

    var m=0;
    final demo = json.decode(jso);
    for ( var i in demo ){
      m=m+1;
      if (i["name"].length < 100)
        i["name"]=(i["name"]+"                                                                                                  ");
      var j=Data_Destination_03_(i["name"],{i["img"]},i["adr"],{i["adr"]},"");
      Data_Destination_03.add(j);
    }
    print(Data_Destination_03.length);
    return Data_Destination_03;
  }
  dynamic  read_adr() async {
    var Data_Destination_03 = <Data_Destination_03_>[
      Data_Destination_03_(
          'Chè sáng tạo'
          ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzEdN1TT4u56y4yZ438aYwnjM9r1ns4kHAw&usqp=CAU'}
          ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
          ,{}
          ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
      )
    ];
    Data_Destination_03= await read_adrs();
    print(Data_Destination_03.length);
    return Data_Destination_03;
  }

  var Data_Destination_01 = <Data_Destination_01_>[];
  var Data_Destination_02 = <Data_Destination_02_>[];
  var Data_Destination_03 = <Data_Destination_03_>[];

}
class Data_Restauran_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;

  const Data_Restauran_(this.Names, this.Images, this.Review, this.Comment, this.Link);

}
class Data_Restauran{
  var Data_restauran = <Data_Restauran_>[
    Data_Restauran_(
        'Liên Minh Huyền Thoại: Tốc Chiến '
        ,{'https://cdn.tgdd.vn//GameApp/-1//top-20-game-choi-cung-ban-be-tren-dien-thoai-thu-vi-nhat-2021-4-800x450.jpg'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    )
  ];
}

class Data_Savoury_01_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;
  const Data_Savoury_01_(this.Names, this.Images, this.Review, this.Comment, this.Link);


}
class Data_Savoury_02_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;
  const Data_Savoury_02_(this.Names, this.Images, this.Review, this.Comment, this.Link);

}
class Data_Savoury_03_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;
  const Data_Savoury_03_(this.Names, this.Images, this.Review, this.Comment, this.Link);


}
class Data_Savoury_00_{
  final String Names;
  final Set<String> Images;
  final String Review;
  final Set<String> Comment;
  final String Link;
  const Data_Savoury_00_(this.Names, this.Images, this.Review, this.Comment, this.Link);


}
class Data_Savoury{
  Set<String> TagData ={
    'Món chính'
    ,'Đồ ăn vặt'
    ,'Đồ uống'
  };
  var tagData=['Món chính'
    ,'Đồ ăn vặt'
    ,'Đồ uống'];
  var Data_Savoury_00 = <Data_Savoury_00_>[
    Data_Savoury_00_(
        'Bánh canh'
        ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIWHaNXq2RJWvMFM-dW2EaF9k0GpeCi_l6Fw&usqp=CAU'}
        ,"Bánh canh là một món ăn Việt Nam được rất nhiều người yêu thích, những vị khách nước ngoài ghé thăm Việt Nam cũng rất ấn tượng với món bánh độc đáo này. Bánh canh xuất thân thừ các tỉnh phía Nam, hiện nay xuất hiện ở khắp mọi tỉnh thành trên dải đất hình chữ S. Bánh canh làm từ bột năng hoặc bột gạo, sợi bánh to, ăn dai dai, ngon hơn bún. Nước dùng bánh sệt sệt, sánh đặc chứ lông lỏng lẻo như nước dùng phở, dùng bún. Bánh canh có bánh canh tôm, bánh canh cua ghẹ, bánh canh sườn chả, bánh canh cua ghẹ có lẽ vẫn hút khách hơn. Hãy cùng Toplist khám phá những địa điểm bánh canh cua ngon nhất Hà Nội nhé!"
        ,{}
        ,'123 Nguyễn Thị Định, Quận Thanh Xuân, TP. Hà Nội'
    ),
    Data_Savoury_00_(
        'Cơm trộn'
        ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTZvlOoF_pDMaqtWq8gDzcHacimW0Jw0SMujw&usqp=CAU'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    ),
    Data_Savoury_00_(
        'Phở Huế '
        ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSu1a3hi0B0Q87uVGX0jN79JS4Hmbx4NQ_FYg&usqp=CAU'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    ),
    Data_Savoury_00_(
        'Nước ép cam'
        ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdfopdeqJd_Ph_ZTnrBK5ssL14ma9jtL16s9o92l8kiA&s'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    ),
    Data_Savoury_00_(
        'sữa tươi trân châu đường đen'
        ,{'https://cdn.tgdd.vn/Files/2021/08/10/1374160/hoc-2-cach-pha-tra-sua-truyen-thong-thom-ngon-chuan-vi-ai-cung-me-202203031716377004.jpg'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    ),
    Data_Savoury_00_(
        'sinh tố bơ'
        ,{'https://kangaroovietnam.vn/Uploads/sinh-to-bo.jpg'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    ),
    Data_Savoury_00_(
        'Bánh tráng trộn'
        ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq08tiU1g2SLvxQrAR-rSlXeQlLVjnDI46ZQ&usqp=CAU'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    ),
    Data_Savoury_00_(
        'Bánh bột lọc'
        ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSQG5buZq9cKWntwoOqWJ8Klr8qFtBhcFQ2pA&usqp=CAU'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    ),
    Data_Savoury_00_(
        'Chè sáng tạo'
        ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcREzEdN1TT4u56y4yZ438aYwnjM9r1ns4kHAw&usqp=CAU'}
        ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
        ,{}
        ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
    )
  ];
  // var Data_Savoury_01 = <Data_Savoury_01_>[
  //   Data_Savoury_01_(
  //       'Bánh canh'
  //       ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTIWHaNXq2RJWvMFM-dW2EaF9k0GpeCi_l6Fw&usqp=CAU'}
  //       ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
  //       ,{}
  //       ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  //   )
  // ];
  // var Data_Savoury_02 = <Data_Savoury_02_>[
  //   Data_Savoury_02_(
  //       'Bánh tráng trộn'
  //       ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSq08tiU1g2SLvxQrAR-rSlXeQlLVjnDI46ZQ&usqp=CAU'}
  //       ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
  //       ,{}
  //       ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  //   )
  // ];


  // var Data_Savoury_03 = <Data_Savoury_03_>[
  //   Data_Savoury_03_(
  //       'Nước ép cam'
  //       ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdfopdeqJd_Ph_ZTnrBK5ssL14ma9jtL16s9o92l8kiA&s'}
  //       ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
  //       ,{}
  //       ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
  //   )
  // ];
  dynamic  read_drinks() async {
    var Data_Savoury_03 = <Data_Savoury_03_>[];
    var jso = await rootBundle.loadString('data_crawl/product.json');

    var m=0;
    final demo = json.decode(jso);
    for ( var i in demo ){
      m=m+1;
      if (i["name"].length < 100)
        i["name"]=(i["name"]+"                                                                                                  ");
      var j=Data_Savoury_03_(i["name"],{i["img"]},i["adr"],{i["adr"]},"");
      Data_Savoury_03.add(j);
    }
    print(Data_Savoury_03.length);
    return Data_Savoury_03;
  }
  dynamic  read_drink() async {
    var Data_Savoury_03 = <Data_Savoury_03_>[
      Data_Savoury_03_(
          'Nước ép cam'
          ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdfopdeqJd_Ph_ZTnrBK5ssL14ma9jtL16s9o92l8kiA&s'}
          ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
          ,{}
          ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
      )
    ];
    Data_Savoury_03= await read_drinks();
    print(Data_Savoury_03.length);
    return Data_Savoury_03;
  }


  dynamic  read_eats() async {
    var Data_Savoury_01 = <Data_Savoury_01_>[];
    var jso = await rootBundle.loadString('data_crawl/product_eat.json');

    var m=0;
    final demo = json.decode(jso);
    for ( var i in demo ){
      m=m+1;
      if (i["name"].length < 100)
        i["name"]=(i["name"]+"                                                                                                  ");
      var j=Data_Savoury_01_(i["name"],{i["img"]},i["adr"],{i["adr"]},"");
      Data_Savoury_01.add(j);
    }
    print(Data_Savoury_01.length);
    return Data_Savoury_01;
  }

  dynamic  read_eat() async {
    var Data_Savoury_01 = <Data_Savoury_01_>[
      Data_Savoury_01_(
          'Nước ép cam'
          ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdfopdeqJd_Ph_ZTnrBK5ssL14ma9jtL16s9o92l8kiA&s'}
          ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
          ,{}
          ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
      )
    ];
    Data_Savoury_01= await read_eats();
    print(Data_Savoury_01.length);
    return Data_Savoury_01;
  }



  dynamic  read_foods() async {
    var Data_Savoury_02 = <Data_Savoury_02_>[];
    var jso = await rootBundle.loadString('data_crawl/product_food.json');

    var m=0;
    final demo = json.decode(jso);
    for ( var i in demo ){
      m=m+1;
      if (i["name"].length < 100)
        i["name"]=(i["name"]+"                                                                                                  ");
      var j=Data_Savoury_02_(i["name"],{i["img"]},i["adr"],{i["adr"]},"");
      Data_Savoury_02.add(j);
    }
    print(Data_Savoury_02.length);
    return Data_Savoury_02;
  }

  dynamic  read_food() async {
    var Data_Savoury_02 = <Data_Savoury_02_>[
      Data_Savoury_02_(
          'Nước ép cam'
          ,{'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQdfopdeqJd_Ph_ZTnrBK5ssL14ma9jtL16s9o92l8kiA&s'}
          ,'Liên Minh Huyền Thoại: Tốc Chiến được phát triển dựa trên một Vũ Trụ Liên Minh Huyền Thoại, đến với game, bạn sẽ lựa chọn cho mình một vị tướng để chiến đấu. Mỗi vị tướng sẽ có bộ chiêu thức, kỹ năng, nội tại, bổ trợ riêng biệt. Vì vậy nếu muốn thao tác tung chiêu mượt mà và chính xác thì bạn nên tìm hiểu kỹ hơn về vị tướng mình sẽ chơi.Trong quá trình chơi, bạn cũng nên kết hợp việc farm lính, quái rừng hoặc tiêu diệt kẻ địch nhằm tích lũy thêm nhiều vàng, kinh nghiệm. Vàng càng nhiều bạn sẽ mua được những bộ trang bị giúp vị tướng của mình trở nên mạnh mẽ hơn. Và một điều bạn đừng bao giờ quên rằng, muốn dành chiến thắng thì hãy phá hủy các công trình và nhà chính của đối phương nhé!'
          ,{}
          ,'https://apps.apple.com/vn/app/liên-minh-tốc-chiến/id1531280382?l=vi'
      )
    ];
    Data_Savoury_02= await read_foods();
    print(Data_Savoury_02.length);
    return Data_Savoury_02;
  }

  var Data_Savoury_03 = <Data_Savoury_03_>[];
  var Data_Savoury_01 = <Data_Savoury_01_>[];
  var Data_Savoury_02 = <Data_Savoury_02_>[];
}