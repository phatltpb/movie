-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 23, 2022 at 04:36 AM
-- Server version: 10.4.19-MariaDB
-- PHP Version: 7.4.20

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project_cinema`
--

-- --------------------------------------------------------

--
-- Table structure for table `banner`
--

CREATE TABLE `banner` (
  `id_banner` int(11) NOT NULL,
  `image` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `banner`
--

INSERT INTO `banner` (`id_banner`, `image`) VALUES
(1, 'banner1.jpg'),
(2, 'banner2.jpg'),
(3, 'banner3.jpg'),
(4, 'banner4.jpg'),
(5, 'banner5.jpg'),
(6, 'banner6.jpg'),
(7, 'banner7.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `id_category` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`id_category`, `name`) VALUES
(1, 'Xã hội'),
(2, 'Kinh dị'),
(3, 'Tình cảm'),
(4, 'Khoa học - Viễn tưởng'),
(5, 'Hoạt hình'),
(6, 'Tâm lý'),
(7, 'Gia đình'),
(8, 'Phiêu lưu-Mạo hiểm'),
(9, 'Hài hước'),
(10, 'Hành động'),
(11, 'Ly kì'),
(12, 'Chính kịch');

-- --------------------------------------------------------

--
-- Table structure for table `combo`
--

CREATE TABLE `combo` (
  `id_combo` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `price` double DEFAULT NULL,
  `detail` varchar(100) NOT NULL,
  `Image` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `combo`
--

INSERT INTO `combo` (`id_combo`, `name`, `price`, `detail`, `Image`) VALUES
(1, 'iCombo 1 BIG', 65000, '1 BẮP + 1 NƯỚC NGỌT 32 Oz', 'https://www.galaxycine.vn/media/2021/4/7/combo1_1617790472299.jpg'),
(2, 'iCombo 2 BIG', 83000, '1 BẮP + 2 NƯỚC NGỌT 32 Oz', 'https://www.galaxycine.vn/media/2021/4/7/combo2_1617790465669.jpg'),
(3, 'iCombo Family 2 Big', 162000, '2 BẮP + 4 NƯỚC NGỌT 32 Oz + 2 PHẦN SNACK', 'https://www.galaxycine.vn/media/2021/4/7/f2_1617790556406.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `comment`
--

CREATE TABLE `comment` (
  `id_comment` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_post` int(11) NOT NULL,
  `content` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `layout`
--

CREATE TABLE `layout` (
  `id` int(11) NOT NULL,
  `header_color` varchar(45) DEFAULT NULL,
  `header_background_color` varchar(45) DEFAULT NULL,
  `footer_color` varchar(45) DEFAULT NULL,
  `footer_background_color` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `id_movie` int(11) NOT NULL,
  `name_mv` varchar(100) NOT NULL,
  `image_lage` varchar(500) NOT NULL,
  `traller` varchar(100) NOT NULL,
  `date_start` date NOT NULL,
  `date_end` date NOT NULL,
  `detail` varchar(10000) NOT NULL,
  `actor` varchar(1000) NOT NULL,
  `director` varchar(50) NOT NULL,
  `time_mv` int(11) NOT NULL,
  `image_banner` varchar(500) NOT NULL,
  `name_vn` varchar(255) NOT NULL,
  `status` int(11) NOT NULL,
  `country` varchar(50) NOT NULL,
  `production` varchar(20) NOT NULL,
  `rate` int(11) NOT NULL,
  `image_medium` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`id_movie`, `name_mv`, `image_lage`, `traller`, `date_start`, `date_end`, `detail`, `actor`, `director`, `time_mv`, `image_banner`, `name_vn`, `status`, `country`, `production`, `rate`, `image_medium`) VALUES
(1, 'Bố già', 'https://ss-images.saostar.vn/wp700/pc/1606897461583/BoGia_Teaser1.jpg', 'https://www.youtube.com/embed/jluSu8Rw6YE', '2021-01-30', '2021-03-17', 'Phim sẽ xoay quanh lối sống thường nhật của một xóm lao động nghèo, ở đó có bộ tứ anh em Giàu – Sang – Phú – Quý với Ba Sang sẽ là nhân vật chính, hay lo chuyện bao đồng nhưng vô cùng thương con cái. Câu chuyện phim tập trung về hai cha con Ba Sang (Trấn Thành) và Quắn (Tuấn Trần). Dù yêu thương nhau nhưng khoảng cách thế hệ đã đem đến những bất đồng lớn giữa hai cha con. Liệu cả hai có thể cho nhau cơ hội thấu hiểu đối phương, thu hẹp khoảng cách và tạo nên hạnh phúc từ sự khác biệt?', 'Trấn Thành, Ngọc Giàu,Tuấn Trần,Ngân Chi,Lê Giang,Hoàng Mèo,Lan Phương,La Thành,A Quay,Lê Trang,...', 'Trấn Thành', 128, 'https://koicine.com/wp-content/uploads/2020/12/a4cea40b4548ac16f559.jpg', '', 5, 'VIệt Nam', 'Trấn Thành Town', 5, 'https://media.vov.vn/sites/default/files/styles/large/public/2021-03/1_114.jpg'),
(2, 'VENOM: LET THERE BE CARNAGE', 'https://static1.dienanh.net/upload/202110/6d1c1d64-9d41-4e7b-b928-5ceb345251cc.jpg', 'https://www.youtube.com/embed/-FmWuCgJmxo', '2022-01-01', '2022-03-01', 'Venom: Let There Be Carnage tiếp tục câu chuyện vừa hài hước vừa máu me về chàng phóng viên Eddie Brock và bạn đồng hành Venom. Cả hai sẽ học cách sống chung thế nào khi nhân loại và quái vật ngoài hành tinh khác nhau quá đỗi? Thêm vào đó, sự xuất hiện của tên sát nhân hàng loạt Cletus / Carnage càng khiến cuộc sống yên bình quá xa với hai gã “loser”. Tom Hardy tiếp tục hóa thân vào Eddie Brock / Venom – một trong những nhân vật phức tạp nhất nhà Marvel.', 'Cletus Kasady (Woody Harrelson),Anne Weying (Michelle Williams),Michelle Williamsy,Amber Sienna,Woody Harrelson\r\nCletus', 'Andy Serkis', 180, 'https://www.galaxycine.vn/media/2021/11/24/2048x68e2_1637756862375.jpg', '', 4, 'Mỹ', 'Marvel Studios ', 5, 'https://www.galaxycine.vn/media/2021/11/24/1350x9ee00_1637756719481.jpg'),
(3, 'SING 2', 'https://www.galaxycine.vn/media/2021/11/30/sing-2-24-12_1638243732567.jpg', 'https://www.youtube.com/embed/s7shIOOV5iQ', '2023-12-24', '0000-00-00', '“Bầu sô” Buster Moon và các bạn phải tìm cách thuyết phục ngôi sao Clay Calloway đã về hưu nhiều năm trở lại và tham gia buổi diễn của họ. ', 'Matthew McConaughey, Scarlett Johansson, Reese Witherspoon, Taron Egerton', '  Garth Jennings', 60, '', 'ĐẤU TRƯỜNG ÂM NHẠC ', 4, 'Mỹ', 'Illumination Enterta', 4, 'https://www.galaxycine.vn/media/2021/11/27/450_1637986933942.jpg'),
(4, 'BLACK WIDOW', 'https://www.galaxycine.vn/media/2021/11/19/1200x1800_1637308282912.jpg', 'https://www.youtube.com/embed/8zyi9DrUb2Q', '2021-11-19', '0000-00-00', 'Cùng với cái chết của Iron Man, sự ra đi của Black Widow Natasha Romanoff là mất mát không thể thay thế của team Avengers. Người phụ nữ vừa mạnh mẽ vừa dịu dàng, coi Biệt Đội Siêu Anh Hùng như “gia đình” đã ra đi mãi mãi để đổi lấy viên đá linh hồn. Sự hy sinh của cô để lại trong lòng các fan vũ trụ điện ảnh Marvel niềm đau khó tả. May mắn thay, Marvel thấu hiểu tình yêu người hâm mộ dành cho Góa Phụ Đen. Dù khó thể trở lại trong tương lai MCU, Natasha và fan được “tặng” một bộ phim riêng mặc sức tung hoành. Cuộc hành trình độc lập của nữ chiến binh xuất sắc nhất Avengers sẽ đưa cô đụng độ một trong những kẻ thù “sừng sỏ” nhất – chuyên gia copy Taskmaster. Chuyến phiêu lưu sẽ đưa lên màn ảnh rộng quá khứ của Black Widow trước khi gia nhập S.H.I.E.L.D. Natasha sẽ gặp lại “gia đình” cũ gồm các đặc vụ  Yelena Belova (Florence Pugh), Melina Vostokoff (Rachel Weisz), Alexei Shostakov hay còn gọi là Red Guardian (David Harbour). Đặc biệt, theo nhiều tin đồn, “Iron Man” Tony Stark dù đã tạm biệt MCU vẫn xuất hiện trong phim. Sau một năm thành công với hai đề cử Oscar Nữ chính xuất sắc nhất (Marriage Story) và Nữ phụ xuất sắc nhất (Jojo Rabbit), Black Widow chắc chắn sẽ tiếp tục đưa danh tiếng quả bom gợi cảm của Hollywood – Scarlett Johansson lan rộng toàn cầu. Phim mới Black Widow: Góa Phụ Đen, ra mắt tại các rạp chiếu phim từ 05.11.2021. Xem thêm tại: https://www.galaxycine.vn/dat-ve/black-widow', '  Scarlett Johansson, Florence Pugh, Rachel Weisz', '  Cate Shortland', 133, 'https://writedrunkeditdrunk.files.wordpress.com/2021/07/bw_ytkcwef.jpg', 'Goá Phụ Đen', 4, 'Mỹ', 'Marvel Studios ', 0, 'https://www.galaxycine.vn/media/2021/11/19/1350x900-2_1637308287425.jpg'),
(5, 'THE SUICIDE SQUAD', 'https://www.galaxycine.vn/media/2021/11/5/900wx1350h_1636101337537.jpg', 'https://www.youtube.com/embed/TcajBCE7zfE', '2021-12-30', '0000-00-00', 'Những siêu ác nhân như Harley Quinn, Bloodsport, Peacemaker và nhiều kẻ tàn bạo khác tại nhà tù Belle Reve được chiêu mộ gia nhập lực lượng bí mật. Họ bị thả xuống hòn đảo thuộc Corto Maltese, thực hiện một nhiệm vụ ngàn cân treo sợi tóc. Phim mới Suicide Squad: Điệp Vụ Cảm Tử dự kiến ra mắt tại các rạp chiếu phim 19.11.2021. Xem thêm tại: https://www.galaxycine.vn/dat-ve/the-suicide-squat', '  Idris Elba, Margot Robbie, John Cena, Viola Davis', 'James Gunn', 132, '', 'SUICIDE SQUAD: ĐIỆP VỤ CẢM TỬ  ', 4, 'Mỹ', 'Warner Bros', 4, 'https://www.galaxycine.vn/media/2021/11/5/1350wx900h_1636101437844.jpg'),
(6, 'THE MEDIUM', 'https://www.galaxycine.vn/media/2021/11/2/300_1635857414897.jpg', 'https://www.youtube.com/embed/zLFhGUmg3I8', '2021-11-19', '0000-00-00', 'Câu chuyện về gia đình một bà đồng, có khả năng kết nối với những âm hồn của thế giới bên kia luôn là đề tài gây nhiều hứng thú. Liệu sẽ ra sao nếu có sự xuất hiện của một linh hồn quỷ dữ đe dọa tính mạng của cả gia tộc? Phim mới The Medium: Âm Hồn Nhập Xác, ra mắt tại các rạp chiếu phim từ 11.2021', '  Sawanee Utoomma, Narilya Gulmongkolpech', 'Banjong Pisanthanakun', 120, 'the_medium_banner.jpg', 'ÂM HỒN NHẬP XÁC', 3, 'Thái Lan', 'NORTHERN CROSS', 4, 'https://www.galaxycine.vn/media/2021/11/2/450_1635857325778.jpg'),
(7, 'SPIDER-MAN: NO WAY HOME', 'https://www.galaxycine.vn/media/2021/11/17/snwh-poster-posed-fb4x5_1637167936199.jpg', 'https://www.youtube.com/embed/twOE43vLRAM', '2021-12-17', '0000-00-00', 'Bị lộ mặt và trở thành kẻ thù quốc dân, Peter Parker tìm đến Dr Strange để nhờ thực hiện câu thần chú, khiến mọi người quên đi việc cậu là Spider-Man. Thế nhưng, quá trình thực hiện xảy ra sự cố. Đa vũ trụ hình thành. Những kẻ thù ở các vũ trụ trước đây của Người Nhện lần lượt xuất hiện. Phải chống lại Green Goblin, Doc Ock, Electro, Sandman và Lizard…, làm thế nào Nhện nhí có thể bảo vệ được người thân và bạn bè? Spider-Man: No Way Home qui tụ dàn diễn viên khủng: Tom Holland, Benedict Cumberbatch, Willem Dafoe, Zendaya, J.K.Simmons, Jamie Foxx… ', '    Tom Holland, Zendaya, Willem Dafoe, Jamie Foxx, Benedict Cumberbatch', 'Jon Watts', 0, 'https://ichi.pro/assets/images/max/724/1*17t4GylSBhXwdDNAdZURKQ.jpeg', 'NGƯỜI NHỆN: KHÔNG CÒN NHÀ\n', 5, 'Mỹ', 'Sony Pictures', 5, 'https://media.songdep.com.vn/files/phuonghoa/2021/08/26/spider-man-no-way-home-3-082531.jpg'),
(8, 'THIÊN THẦN HỘ MỆNH', 'https://www.galaxycine.vn/media/2021/11/17/400x633_1637134250845.jpg', 'https://www.youtube.com/embed/FzoWWAJeFgM', '2021-11-19', '0000-00-00', 'Cái chết bí ẩn của một ngôi sao trong giới giải trí, được đồn đoán rằng có liên quan đến loại búp bê ma thuật có tính chất bùa ngải hắc ám. Liệu bí ẩn khủng khiếp nào đang bị che giấu? Hội tụ dàn hot girl tài năng như Trúc Anh, Salim, Amee, Samuel An và Chi Pu. Đạo diễn Victor Vũ lại cho ra mắt một bộ phim nói về cuộc sống trong giới showbiz, sự hào nhoáng và những góc khuất ẩn sau vẻ ngoài rực rỡ của thế giới nghệ thuật. Mai Ly là một ngôi sao đang lên trong làng giải trí, đột nhiên người ta phát hiện cô đã chết sau khi rơi từ tầng thượng của một tòa nhà. Hàng loạt tin đồn được dấy lên, nhiều người cho rằng sự ra đi của Mai Ly có liên quan đến một loại ma thuật bùa ngải, hiện đang trú ngụ trong hình hài con búp bê hắc ám.', '    Trúc anh,Amee, Salim, Samuel an', 'Victor Vũ', 124, 'https://i.ytimg.com/vi/Jj_KRtlezPE/maxresdefault.jpg', '', 4, 'Việt Nam', 'lotte Entertainment', 5, 'https://i.vietgiaitri.com/2021/5/4/thien-than-ho-menh-cua-victor-vu-dan-dau-dip-le-a4b-5744398.jpg'),
(9, 'RESIDENT EVIL: WELCOME TO RACCOON CITY', 'https://www.galaxycine.vn/media/2021/10/14/re-poster-eye-fb4x5_1634213194313.jpg', 'https://www.youtube.com/embed/jr6YqjVtdKs', '2021-11-26', '0000-00-00', 'Resident Evil là một trong những tựa game sinh tồn xác sống ăn khách nhất mọi thời đại. Sau 25 năm và 8 phần game gốc cùng hàng loạt ngoại truyện, tác phẩm ngày càng có đông đảo người hâm mộ. Loạt phim Resident Evil do Paul W.S. Anderson đạo diễn là một thành công về mặt thương mại nhưng bị nhiều fan chỉ trích vì rời quá xa nguyên tác. Do đó mà Sony quyết định tái khởi động thương hiệu với Resident Evil: Welcome to Raccoon City (Resident Evil: Quỷ dữ trỗi dậy) có nội dung lấy từ hai phần game đầu tiên. Xem thêm tại: https://www.galaxycine.vn/dat-ve/resident-evil-welcome-to-raccoon-city', '    Kaya Scodelario, Robbie Amell', 'Johannes Roberts', 0, 'https://images5.alphacoders.com/117/thumb-1920-1173827.jpg', 'RESIDENT EVIL: QUỶ DỮ TRỖI DẬY', 4, 'Mỹ', 'Sony Pictures', 4, 'https://i.ytimg.com/vi/e3KzJWcmE7g/mqdefault.jpg'),
(10, 'MINIONS: SỰ TRỖI DẬY CỦA GRU', 'https://www.galaxycine.vn/media/2021/2/2/minons-090721_1612233432649.jpg', 'https://www.youtube.com/embed/hiUoV4i-diU', '2021-06-01', '0000-00-00', 'MINIONS : SỰ TRỖI DẬY CỦA GRU - Nội dung bộ phim nói về năm 1970, khi Gru vẫn còn là một cậu bé 12 tuổi, nhưng cậu đã là 1 fanboy chính hiệu của nhóm siêu ác nhân được biết đến với cái tên Vicious 6, Gru đã ấp ủ một kế hoạch để tham gia cùng họ và diễn nhiên đồng hành cùng cậu nhóc Gru là các Minion trung thành Kevin, Stuart, Bob và Otto... Để gây ấn tượng với nhóm siêu ác nhân Gru đã cướp &quot;viên đá&quot; của họ và trên đường chạy trốn Otto đã vô tình xao lãng đánh tráo viên đá mà Gru cướp được... liệu Gru có thực hiện được ước mơ trở thành siêu ác nhân khét tiếng nhất thế giới ? Phim dự kiến sẽ ra mắt vào 01.06.2022', 'Animation USA  ', 'Animation USA  ', 0, 'https://i.rada.vn/data/image/2020/02/07/minions-su-troi-day-cua-gru-1.jpg', 'MINIONS: SỰ TRỖI DẬY CỦA GRU', 3, 'USA', 'Animation USA  ', 5, 'https://i3.wp.com/img.phimchill.tv/images/info/minions-the-rise-of-gru.jpg'),
(11, 'NHÓC TRÙM: NỐI NGHIỆP GIA ĐÌNH', 'http://res.cloudinary.com/myapp12091999/image/upload/v1637258214/s8o1mqxr/iwa5g8osrrq2udbmf75x.jpg', 'https://www.youtube.com/embed/8OeSvp2_4NM', '2021-12-01', '0000-00-00', 'NHÓC TRÙM 2: NỐI NGHIỆP GIA ĐÌNH - Nối tiếp câu chuyện của phần đầu tiên, sau khi Nhóc Trùm Ted và anh trai Tim đều trưởng thành, tuy nhiên hai anh em họ đã không còn thân thiết như xưa nữa, khi hai anh em họ đang tranh cãi nhau, một điều bất ngờ xảy ra - Tina (con gái nhỏ của Tim) bất ngờ nói chuyện, Tina tự nhận mình là đặc vụ của tổ chức bí mật Baby Corp, nơi mà những đứa trẻ sơ sinh với tâm trí như người lớn và cô bé đang thực hiện nhiệm vụ bảo vệ thế giới. Để ngăn chặn kế hoạch biến mọi đứa trẻ trở nên quậy phá và không nghe lời của Tiến sĩ Armstrong, Tina cần đến sự giúp đỡ của bố và chú Ted. Nhờ một loại thuốc đặc biệt do Baby Corp sản xuất, cả Tim và Ted trở lại phiên bản trẻ con , &quot;Nhóc Trùm &quot; chính thức trở lại....', 'Animation USA', 'Animation USA', 107, 'tthm.jpg', 'NHÓC TRÙM: NỐI NGHIỆP GIA ĐÌNH', 5, 'USA', 'Animation USA', 5, 'https://minhvy.net/wp-content/uploads/2021/03/the-boss-baby-family-business.jpg'),
(12, 'MALIGNANT', 'https://www.galaxycine.vn/media/2021/10/22/malignant-james-wan-3_1634895379147.jpg', 'https://www.youtube.com/embed/OnKLbYPQ5Vg', '2021-11-12', '0000-00-00', 'Malignant - Hiện Thân Tà Ác nội dung chính xoay quanh Madison (Annabelle Wallis đóng), một nữ điều dưỡng đang mang thai đứa con đầu lòng. Sau một tai nạn kinh hoàng, Madison cùng lúc mất đi cả chồng và con, còn cô thì rơi vào tình trạng hoảng loạn với tâm lý bất ổn. Cũng từ đó, Madison bắt đầu nhìn thấy những ảo ảnh ghê rợn, liên tục tấn công những người xa lạ. Những cơn ác mộng ngày một “thật hơn”, tình trạng của Madison cũng ngày càng tồi tệ. Người duy nhất tin tưởng Madison và đồng hành cùng cô là em gái Sydney (Maddie Hasson), người sau đó đã cùng Madison lật mở những bí mật không ai có thể ngờ tới.', 'Annabelle Wallis, Maddie Hasson', 'James Wan', 111, 'tthm.jpg', 'HIỆN THÂN TÀ ÁC', 3, 'USA', 'Warner Bros', 5, ''),
(13, 'DARK SPELL', 'https://www.galaxycine.vn/media/2021/11/12/1200x1800_1636697924958.jpg', 'https://www.youtube.com/embed/AjnRu1Mb7KA', '2021-11-19', '0000-00-00', 'Điên cuồng vì bị bạn trai phản bội, Zhenya sử dụng cấm thuật để thực hiện hôn lễ. Mối tình ám ảnh được sinh ra bởi sự tác hợp của quỷ dữ, Zhenya liệu có thoát khỏi được một tình yêu ngay cả cái chết cũng không thể chia lìa họ? Xem thêm tại: https://www.galaxycine.vn/dat-ve/dark-spell', 'Konstantin Beloshapka, Yana Yenzhayeva', 'Svyatoslav Podgaevskiy', 92, '', 'CẤM THUẬT', 4, 'Nga', 'Central Partnership ', 4, 'data:image/jpeg;base64,/9j/4AAQSkZJRgABAQAAAQABAAD/2wCEAAoHCBUVFBgVFRQZGBgaGBodGhgaGhoYGxgaIxsbIRoaGhsbIS0kGx0qHxoZJTclKy4xNDQ0GyM6PzozPi0zNDEBCwsLEA8QHxISHTMhJCozMzMzMzMzMzMzMzMzMTUzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzMzM//AABEIAKgBLAMBIgACEQEDEQH/xAAcAAABBQEBAQAAAAAAAAAAAAAAAQIDBAUGBwj/xABCEAABAwIDBAcEBggHAQEAAAABAAIRAyEEEjEFQVFhBhMicYGRoQcy0fAUFUJSscEjU2JygqLh8SQzNHOSssKzJf/EABoBAAMBAQEBAAAAAAAAAAAAAAABAgMEBQb/xAAsEQACAgAFAwIGAgMAAAAAAAAAAQIRAxIhMUEEUWEioQUTMnHB0YHwI4KS/9oADAMBAAIRAxEAP'),
(14, 'SHANG-CHI AND THE LEGEND OF THE TEN RINGS', 'https://www.galaxycine.vn/media/2021/11/23/1200x1800_1637635582546.jpg', 'https://www.youtube.com/embed/ccQjdsbZJ0U', '2021-11-26', '0000-00-00', 'Bộ phim tiếp theo của vũ trụ điện ảnh Marvel với nhân vật chính là \'Bậc Thầy Kung-Fu\' Shang-Chi. Shang-Chi là bậc thầy Kung Fu, tinh thông võ thuật. Sức mạnh của Shang-Chi đến từ hàng ngàn giờ luyện tập miệt mài và sự kỷ luật cao độ với bản thân. Siêu anh hùng võ thuật này được chính bố của mình tôi luyện, dạy dỗ để trở thành một sát thủ chuyên nghiệp và kế thừa tập đoàn tội ác của ông. Shang-Chi có lẽ không còn xa lạ với người hâm mộ truyện tranh Marvel, tuy nhiên, đây sẽ là lần đầu tiên nhân vật này được bước lên màn ảnh. Đặc biệt hơn, Shang-Chi cũng chính là nhân vật siêu anh hùng gốc Á đầu tiên của MCU được chuyển thể thành phim. Teaser trailer đầu tiên cũng hé lộ những hình ảnh thời niên thiếu của Shang-Chi, từ một cậu bé nhỏ tuổi được cha mình khổ luyện, đào tạo trong môi trường vô cùng khắc nghiệt cho tới khi trở thành một người đàn ông trưởng thành. Xuyên suốt trailer dài 2 phút là những pha phô diễn võ thuật, công phu choáng ngợp, đậm chất Á Đông, đúng như cội nguồn của nhân vật này. Xem thêm tại: https://www.galaxycine.vn/dat-ve/shang-chi-and-the-legend-of-the-ten-rings', ' Simi Liu, Lương Triều Vỹ, Awkwafina', 'Destin Daniel Cretton', 132, '', 'SHANG-CHI VÀ HUYỀN THOẠI THẬP LUÂN', 4, 'Nga', '  Walt Disney Pictur', 5, 'https://www.galaxycine.vn/media/2021/11/23/1350x900_1637635576821.jpg'),
(15, 'TURNING RED', 'https://www.galaxycine.vn/media/2021/10/13/turning-red-3_1634124839497.jpg', 'https://www.youtube.com/embed/eXeEM2rVIZk', '2023-03-22', '0000-00-00', 'Chuyện gì sẽ xảy ra khi một cô bé 13 tuổi biến thành gấu trúc đỏ mỗi khi phấn khích? Cuộc sống của nhóc chắc chắn chẳng thể yên bình rồi! Turning Red là tác phẩm sắp ra mắt của xưởng phim hoạt hình lừng danh Pixar. Xem thêm tại: https://www.galaxycine.vn/dat-ve/turning-red', '   Sandra Oh, Rosalie Chiang', 'Domee Shi', 0, '', '', 5, 'mỹ', 'Pixar', 5, '');

-- --------------------------------------------------------

--
-- Table structure for table `movie_category`
--

CREATE TABLE `movie_category` (
  `id_category` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `movie_category`
--

INSERT INTO `movie_category` (`id_category`, `id_movie`) VALUES
(2, 6),
(2, 9),
(2, 13),
(3, 11),
(4, 4),
(5, 2),
(5, 10),
(5, 11),
(5, 12),
(5, 15),
(6, 11),
(7, 1),
(7, 2),
(7, 11),
(7, 12),
(8, 4),
(8, 12),
(9, 1),
(9, 2),
(9, 10),
(10, 4),
(10, 5),
(10, 7),
(10, 9),
(10, 14),
(11, 8),
(12, 1),
(2, 3);

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `id_post` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `detal` int(11) NOT NULL,
  `banner` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `promotion`
--

CREATE TABLE `promotion` (
  `id_promotion` int(11) NOT NULL,
  `code` varchar(11) NOT NULL,
  `sale` double NOT NULL,
  `detail` varchar(500) NOT NULL,
  `date_start` datetime NOT NULL,
  `date_end` datetime NOT NULL,
  `quantity` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `promotion`
--

INSERT INTO `promotion` (`id_promotion`, `code`, `sale`, `detail`, `date_start`, `date_end`, `quantity`) VALUES
(1, 'cinemasale1', 40, '', '2021-12-01 00:00:00', '2021-12-28 00:00:00', 0),
(2, 'cinemasale2', 50, '', '2021-11-02 07:48:56', '2021-11-10 07:48:59', 0),
(3, 'cinemasale3', 60, '', '2021-08-17 07:49:23', '2021-09-14 07:49:34', 0);

-- --------------------------------------------------------

--
-- Table structure for table `review`
--

CREATE TABLE `review` (
  `id_user` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `content` varchar(500) NOT NULL,
  `start` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `review`
--

INSERT INTO `review` (`id_user`, `id_movie`, `content`, `start`) VALUES
(1, 1, 'bộ phim rất hay và ấn tượng', 5),
(1, 2, 'cũng rất hay', 3),
(2, 2, 'các tình tiết trong phim thật là hấp dẫn, hay quá đi mất', 5);

-- --------------------------------------------------------

--
-- Table structure for table `room`
--

CREATE TABLE `room` (
  `id_room` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `room`
--

INSERT INTO `room` (`id_room`, `name`) VALUES
(1, 'room 1'),
(2, 'room 2'),
(3, 'room 3'),
(4, 'room 4'),
(5, 'room 5'),
(6, 'room 6'),
(7, 'room  7');

-- --------------------------------------------------------

--
-- Table structure for table `seat`
--

CREATE TABLE `seat` (
  `id_seat` varchar(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `location` varchar(10) NOT NULL,
  `price` int(11) NOT NULL,
  `type_seat` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `seat`
--

INSERT INTO `seat` (`id_seat`, `id_room`, `location`, `price`, `type_seat`) VALUES
('3', 1, ' ', 80000, 'đơn'),
('4', 2, '[value-3]', 160000, 'đôi'),
('5', 1, '[value-3]', 200000, 'đặc biệt'),
('6', 3, '[value-3]', 80000, 'đơn'),
('7', 4, '[value-3]', 80000, 'đơn'),
('8', 2, '[value-3]', 160000, 'đôi');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id_session` int(11) NOT NULL,
  `id_movie` int(11) NOT NULL,
  `id_room` int(11) NOT NULL,
  `day` date NOT NULL,
  `type` varchar(10) NOT NULL DEFAULT '2D',
  `id_showtimes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id_session`, `id_movie`, `id_room`, `day`, `type`, `id_showtimes`) VALUES
(1, 1, 1, '2021-11-30', '2D', 1),
(2, 2, 2, '2021-11-30', '2D', 2),
(3, 3, 1, '2021-11-28', '3D', 2),
(4, 2, 3, '2021-11-20', '2D', 1),
(5, 3, 2, '2021-12-05', '3D', 3),
(6, 4, 2, '2021-12-05', '3D', 3),
(7, 8, 1, '2021-12-01', '3D', 4),
(8, 4, 2, '2021-12-01', '3D', 2),
(9, 5, 2, '2021-12-19', '2D', 1),
(10, 8, 3, '2021-12-06', '2D', 2),
(11, 7, 2, '2021-12-07', '2D', 3),
(12, 12, 3, '2021-12-08', '2D', 1),
(13, 9, 3, '2021-12-08', '2D', 2),
(14, 10, 1, '2021-12-07', '2D', 3),
(15, 13, 4, '2021-12-10', '3D', 4),
(16, 13, 2, '2021-12-12', '2D', 2),
(17, 13, 2, '2021-12-16', '2D', 3),
(18, 15, 4, '2021-12-11', '3D', 2),
(25, 13, 5, '2021-12-16', '2d', 3),
(26, 13, 7, '2021-12-16', '2d', 4),
(28, 15, 2, '2021-12-11', '2d', 2),
(29, 10, 7, '2021-11-20', '3D', 1),
(32, 8, 6, '2021-11-21', '2D', 2),
(33, 4, 1, '2021-11-22', '2D', 1);

-- --------------------------------------------------------

--
-- Table structure for table `showtimes`
--

CREATE TABLE `showtimes` (
  `id_showtimes` int(11) NOT NULL,
  `time_start` varchar(20) COLLATE utf8_unicode_ci NOT NULL,
  `time_end` varchar(20) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `showtimes`
--

INSERT INTO `showtimes` (`id_showtimes`, `time_start`, `time_end`) VALUES
(1, '9:00', '11:30'),
(2, '13:30', '15:00'),
(3, '17:00', '19:30'),
(4, '20:30', '23:00');

-- --------------------------------------------------------

--
-- Table structure for table `ticket`
--

CREATE TABLE `ticket` (
  `id_ticket` int(11) NOT NULL,
  `id_session` int(11) NOT NULL,
  `Total_money` double NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_promotion` int(11) NOT NULL,
  `time_create` datetime NOT NULL,
  `status` int(11) NOT NULL,
  `ticket_information` varchar(255) NOT NULL,
  `ticket_code` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ticket`
--

INSERT INTO `ticket` (`id_ticket`, `id_session`, `Total_money`, `id_user`, `id_promotion`, `time_create`, `status`, `ticket_information`, `ticket_code`) VALUES
(1, 2, 195000, 3, 2, '2021-11-24 02:39:38', 1, '160k', 'TK125'),
(2, 1, 180000, 1, 3, '2021-11-24 07:35:54', 1, '(2*80k)', 'TK285'),
(58, 3, 120000, 2, 1, '2021-11-25 20:59:40', 1, 'vé thường(2)', '321638453580'),
(59, 4, 140000, 2, 1, '2021-12-02 21:00:38', 1, 'vé thường(1) vé đặt biệt(1)', '421638453638'),
(60, 5, 120000, 4, 1, '2021-12-02 21:01:19', 1, 'vé thường(1) vé đặt biệt(1)', '541638453679'),
(61, 6, 110000, 3, 1, '2021-12-02 21:01:48', 1, 'vé thường(1) vé đặt biệt(2)', '631638453708'),
(62, 7, 180000, 4, 1, '2021-12-02 21:02:40', 1, 'vé đặt biệt (1)', '741638453760'),
(63, 2, 160000, 4, 2, '2021-12-02 21:03:18', 1, 'vé đặt biệt (1)', '241638453798'),
(64, 1, 300000, 5, 2, '2021-12-02 21:04:20', 1, 'vé đặt biệt (3)', '151638453860'),
(65, 8, 200000, 6, 3, '2021-12-02 21:05:12', 1, 'vé đặt biệt (2), vé thường(1)', '861638453912'),
(67, 11, 200000, 6, 2, '2021-12-02 21:06:47', 1, 'vé đặt biệt (2), vé thường(3)', '1161638454007'),
(68, 3, 100000, 1, 1, '2021-12-02 21:07:26', 1, 'vé đặt biệt (2), vé thường(3)', '311638454046'),
(69, 3, 100000, 4, 1, '2021-12-02 21:07:46', 1, 'vé đặt biệt (1), vé thường(2)', '341638454066'),
(70, 3, 260, 47, 3, '2021-12-03 00:13:48', 1, 'Vé thành viên (1), Vé thường (1)', '3471638492070'),
(71, 1, 65, 52, 3, '2021-12-03 02:33:29', 1, 'Vé thành viên (0), Vé thường (1)', '1521638500451'),
(74, 3, 100000, 4, 1, '2021-12-03 03:08:04', 1, 'vé đặt biệt (1), vé thường(2)', '341638502468'),
(75, 3, 100000, 4, 1, '2021-12-03 03:09:32', 1, 'vé đặt biệt (1), vé thường(2)', '341638502556'),
(76, 3, 100000, 4, 1, '2021-12-03 03:24:50', 0, 'vé đặt biệt (1), vé thường(2)', '341638503474'),
(77, 3, 100000, 4, 1, '2021-12-03 03:27:07', 1, 'vé đặt biệt (1), vé thường(2)', '341638503611'),
(78, 3, 100000, 4, 1, '2021-12-03 03:31:26', 0, 'vé đặt biệt (1), vé thường(2)', '341638503870'),
(79, 2, 185, 0, 3, '2021-12-03 04:31:15', 0, 'Vé thành viên (1), Vé thường (1)', '21638507517'),
(80, 2, 205, 0, 3, '2021-12-03 04:36:42', 0, 'Vé thành viên (0), Vé thường (1)', '21638507844'),
(81, 3, 185, 0, 3, '2021-12-03 04:37:11', 0, 'Vé thành viên (1), Vé thường (1)', '31638507873'),
(82, 3, 120, 0, 3, '2021-12-03 04:38:19', 0, 'Vé thành viên (1), Vé thường (1)', '31638507941'),
(83, 2, 120, 0, 3, '2021-12-03 04:40:51', 0, 'Vé thành viên (1), Vé thường (0)', '21638508094'),
(84, 2, 185, 0, 3, '2021-12-03 04:50:50', 0, 'Vé thành viên (1), Vé thường (1)', '21638508692'),
(85, 11, 120, 0, 3, '2021-12-03 04:51:27', 0, 'Vé thành viên (1), Vé thường (0)', '111638508730'),
(86, 9, 55, 0, 3, '2021-12-03 04:54:58', 0, 'Vé thành viên (1), Vé thường (0)', '91638508941'),
(87, 3, 185, 0, 3, '2021-12-03 04:57:22', 0, 'Vé thành viên (1), Vé thường (1)', '31638509084'),
(88, 4, 185, 0, 3, '2021-12-03 05:02:13', 0, 'Vé thành viên (1), Vé thường (1)', '41638509375'),
(89, 1, 185, 0, 3, '2021-12-03 05:04:14', 0, 'Vé thành viên (1), Vé thường (1)', '11638509496'),
(90, 9, 185, 0, 3, '2021-12-03 05:05:49', 0, 'Vé thành viên (1), Vé thường (1)', '91638509591'),
(91, 9, 185, 0, 3, '2021-12-03 05:05:49', 0, 'Vé thành viên (1), Vé thường (1)', '91638509591'),
(92, 4, 185, 0, 3, '2021-12-03 05:08:06', 0, 'Vé thành viên (1), Vé thường (1)', '41638509728'),
(93, 4, 120, 0, 3, '2021-12-03 05:09:18', 0, 'Vé thành viên (1), Vé thường (0)', '41638509800'),
(94, 4, 120, 0, 3, '2021-12-03 05:11:51', 0, 'Vé thành viên (1), Vé thường (0)', '41638509953'),
(95, 4, 250, 0, 3, '2021-12-03 05:12:39', 0, 'Vé thành viên (1), Vé thường (1)', '41638510001'),
(96, 3, 100000, 4, 1, '2021-12-03 05:13:41', 0, 'vé đặt biệt (1), vé thường(2)', '341638510005'),
(97, 4, 130, 0, 3, '2021-12-03 05:15:03', 0, 'Vé thành viên (0), Vé thường (2)', '41638510145'),
(98, 2, 185, 53, 3, '2021-12-03 05:23:02', 0, 'Vé thành viên (1), Vé thường (1)', '2531638510624'),
(99, 2, 185, 53, 3, '2021-12-03 05:26:56', 0, 'Vé thành viên (1), Vé thường (1)', '2531638510858'),
(100, 2, 185, 53, 3, '2021-12-03 05:27:56', 0, 'Vé thành viên (1), Vé thường (1)', '2531638510918'),
(101, 4, 120140, 53, 3, '2021-12-03 05:31:55', 1, 'Vé thành viên (1), Vé thường (1)', '4531638511157'),
(102, 4, 120065, 53, 3, '2021-12-03 05:41:02', 1, 'Vé thành viên (1), Vé thường (1)', '4531638511704'),
(103, 4, 110065, 53, 3, '2021-12-03 05:46:01', 1, 'Vé thành viên (2), Vé thường (0)', '4531638512003'),
(104, 1, 185065, 53, 3, '2021-12-03 06:14:55', 1, 'Vé thành viên (1), Vé thường (2)', '1531638513737'),
(105, 2, 120065, 53, 3, '2021-12-03 06:17:32', 1, 'Vé thành viên (1), Vé thường (1)', '2531638513894'),
(106, 3, 270, 40, 3, '2021-12-03 06:22:48', 0, 'Vé thành viên (1), Vé thường (1)', '3401638514210'),
(107, 6, 120075, 40, 3, '2021-12-03 06:29:43', 1, 'Vé thành viên (1), Vé thường (1)', '6401638514626'),
(108, 6, 55000, 40, 3, '2021-12-03 06:33:11', 0, 'Vé thành viên (1), Vé thường (0)', '6401638514834'),
(109, 1, 65065, 54, 3, '2021-12-03 07:59:24', 1, 'Vé thành viên (0), Vé thường (1)', '1541638520007'),
(110, 1, 65065, 54, 3, '2021-12-03 07:59:26', 0, 'Vé thành viên (0), Vé thường (1)', '1541638520009'),
(111, 2, 65000, 54, 3, '2021-12-03 08:03:04', 1, 'Vé thành viên (0), Vé thường (1)', '2541638520226'),
(112, 1, 65000, 54, 3, '2021-12-03 08:04:04', 0, 'Vé thành viên (0), Vé thường (1)', '1541638520286'),
(115, 8, 430000, 53, 3, '2021-12-03 10:43:09', 1, 'Vé thành viên (1), Vé thường (1)', '8531638529832'),
(116, 2, 185000, 53, 3, '2021-12-03 10:45:47', 1, 'Vé thành viên (1), Vé thường (1)', '2531638529990'),
(117, 11, 120000, 53, 3, '2021-12-03 10:49:24', 1, 'Vé thành viên (1), Vé thường (0)', '11531638530207'),
(118, 3, 495000, 53, 3, '2021-12-03 12:17:32', 1, 'Vé thành viên (1), Vé thường (2)', '3531638535495'),
(119, 1, 130000, 54, 3, '2021-12-04 02:13:09', 0, 'Vé thành viên (0), Vé thường (1)', '1541638585634'),
(120, 8, 268000, 55, 3, '2021-12-04 07:39:25', 1, 'Vé thành viên (1), Vé thường (1)', '8551638605211'),
(121, 6, 1212000, 55, 3, '2021-12-04 07:51:44', 1, 'Vé thành viên (1), Vé thường (1)', '6551638605950'),
(122, 8, 430000, 55, 3, '2021-12-04 08:06:07', 1, 'Vé thành viên (1), Vé thường (1)', '8551638606813'),
(123, 1, 430000, 78, 3, '2021-12-04 13:29:28', 1, 'Vé thành viên (1), Vé thường (1)', '1781638626214'),
(124, 9, 785000, 78, 3, '2021-12-04 14:28:08', 0, 'Vé thành viên (3), Vé thường (1)', '9781638629735'),
(125, 8, 268000, 47, 3, '2021-12-05 01:19:44', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668832'),
(126, 8, 268000, 47, 3, '2021-12-05 01:19:53', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668842'),
(127, 8, 268000, 47, 3, '2021-12-05 01:20:02', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668851'),
(128, 8, 268000, 47, 3, '2021-12-05 01:20:05', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668853'),
(129, 8, 268000, 47, 3, '2021-12-05 01:20:05', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668853'),
(130, 8, 268000, 47, 3, '2021-12-05 01:20:06', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668854'),
(131, 8, 268000, 47, 3, '2021-12-05 01:20:06', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668854'),
(132, 8, 268000, 47, 3, '2021-12-05 01:20:07', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668855'),
(133, 8, 268000, 47, 3, '2021-12-05 01:20:08', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668856'),
(134, 8, 268000, 47, 3, '2021-12-05 01:20:11', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668859'),
(135, 9, 185000, 40, 3, '2021-12-05 01:20:23', 1, 'Vé thành viên (1), Vé thường (1)', '9401638668871'),
(136, 8, 268000, 47, 3, '2021-12-05 01:20:24', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668872'),
(137, 9, 185000, 40, 3, '2021-12-05 01:20:41', 0, 'Vé thành viên (1), Vé thường (1)', '9401638668889'),
(138, 8, 268000, 47, 3, '2021-12-05 01:21:00', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668908'),
(139, 9, 185000, 40, 3, '2021-12-05 01:21:21', 0, 'Vé thành viên (1), Vé thường (1)', '9401638668929'),
(140, 8, 268000, 47, 3, '2021-12-05 01:21:34', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668942'),
(141, 8, 268000, 47, 3, '2021-12-05 01:21:34', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668942'),
(142, 8, 268000, 47, 3, '2021-12-05 01:22:03', 0, 'Vé thành viên (1), Vé thường (1)', '8471638668971'),
(143, 9, 185000, 40, 3, '2021-12-05 01:22:11', 0, 'Vé thành viên (1), Vé thường (1)', '9401638668979'),
(144, 9, 185000, 40, 3, '2021-12-05 01:22:17', 0, 'Vé thành viên (1), Vé thường (1)', '9401638668927'),
(145, 8, 268000, 47, 3, '2021-12-05 01:24:57', 0, 'Vé thành viên (1), Vé thường (1)', '8471638669145'),
(146, 9, 185000, 40, 3, '2021-12-05 01:26:08', 0, 'Vé thành viên (1), Vé thường (1)', '9401638669216'),
(147, 9, 185000, 40, 3, '2021-12-05 01:36:30', 0, 'Vé thành viên (1), Vé thường (1)', '9401638669839'),
(148, 9, 185000, 40, 3, '2021-12-05 01:40:14', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670003'),
(149, 9, 185000, 40, 3, '2021-12-05 01:40:46', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670094'),
(150, 9, 185000, 40, 3, '2021-12-05 01:43:17', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670245'),
(151, 9, 185000, 40, 3, '2021-12-05 01:43:20', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670189'),
(152, 9, 185000, 40, 3, '2021-12-05 01:44:05', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670234'),
(153, 9, 185000, 40, 3, '2021-12-05 01:44:20', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670249'),
(154, 9, 185000, 40, 3, '2021-12-05 01:45:14', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670304'),
(155, 9, 185000, 40, 3, '2021-12-05 01:45:38', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670328'),
(156, 9, 185000, 40, 3, '2021-12-05 01:46:56', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670465'),
(157, 9, 185000, 40, 3, '2021-12-05 01:53:00', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670829'),
(158, 9, 185000, 40, 3, '2021-12-05 01:53:51', 0, 'Vé thành viên (1), Vé thường (1)', '9401638670879'),
(159, 9, 185000, 40, 3, '2021-12-05 02:05:17', 0, 'Vé thành viên (1), Vé thường (1)', '9401638671506'),
(160, 9, 185000, 40, 3, '2021-12-05 02:06:38', 0, 'Vé thành viên (1), Vé thường (1)', '9401638671646'),
(161, 9, 185000, 79, 3, '2021-12-05 02:10:09', 0, 'Vé thành viên (1), Vé thường (1)', '9791638671857'),
(162, 9, 185000, 79, 3, '2021-12-05 02:12:39', 0, 'Vé thành viên (1), Vé thường (1)', '9791638672008'),
(163, 9, 185000, 79, 3, '2021-12-05 02:14:37', 0, 'Vé thành viên (1), Vé thường (1)', '9791638672125'),
(164, 9, 185000, 79, 3, '2021-12-05 02:42:18', 0, 'Vé thành viên (1), Vé thường (1)', '9791638673786'),
(165, 9, 185000, 79, 3, '2021-12-05 02:42:45', 0, 'Vé thành viên (1), Vé thường (1)', '9791638673813'),
(166, 9, 185000, 79, 3, '2021-12-05 03:08:16', 0, 'Vé thành viên (1), Vé thường (1)', '9791638675345'),
(167, 9, 185000, 79, 3, '2021-12-05 03:08:35', 0, 'Vé thành viên (1), Vé thường (1)', '9791638675364'),
(168, 9, 185000, 79, 3, '2021-12-05 03:16:13', 0, 'Vé thành viên (1), Vé thường (1)', '9791638675763'),
(169, 9, 185000, 79, 3, '2021-12-05 03:16:40', 0, 'Vé thành viên (1), Vé thường (1)', '9791638675849'),
(170, 9, 185000, 79, 3, '2021-12-05 03:17:24', 0, 'Vé thành viên (1), Vé thường (1)', '9791638675834'),
(171, 9, 185000, 79, 3, '2021-12-05 03:17:47', 0, 'Vé thành viên (1), Vé thường (1)', '9791638675856'),
(172, 9, 185000, 79, 3, '2021-12-05 03:20:23', 0, 'Vé thành viên (1), Vé thường (1)', '9791638676013'),
(173, 9, 185000, 80, 3, '2021-12-05 03:23:16', 0, 'Vé thành viên (1), Vé thường (1)', '9801638676185'),
(174, 9, 185000, 80, 3, '2021-12-05 03:24:34', 0, 'Vé thành viên (1), Vé thường (1)', '9801638676264'),
(175, 9, 185000, 80, 3, '2021-12-05 03:24:45', 0, 'Vé thành viên (1), Vé thường (1)', '9801638676333'),
(176, 9, 185000, 80, 3, '2021-12-05 03:27:16', 0, 'Vé thành viên (1), Vé thường (1)', '9801638676484'),
(177, 9, 185000, 80, 3, '2021-12-05 03:29:37', 0, 'Vé thành viên (1), Vé thường (1)', '9801638676567'),
(178, 9, 185000, 80, 3, '2021-12-05 03:36:27', 0, 'Vé thành viên (1), Vé thường (1)', '9801638676976'),
(179, 9, 185000, 80, 3, '2021-12-05 03:36:58', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677066'),
(180, 9, 185000, 80, 3, '2021-12-05 03:37:30', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677040'),
(181, 9, 185000, 80, 3, '2021-12-05 03:37:42', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677052'),
(182, 9, 185000, 80, 3, '2021-12-05 03:44:45', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677533'),
(183, 9, 185000, 80, 3, '2021-12-05 03:47:38', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677706'),
(184, 9, 185000, 80, 3, '2021-12-05 03:48:02', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677730'),
(185, 9, 185000, 80, 3, '2021-12-05 03:48:11', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677740'),
(186, 9, 185000, 80, 3, '2021-12-05 03:50:34', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677824'),
(187, 9, 185000, 80, 3, '2021-12-05 03:52:46', 0, 'Vé thành viên (1), Vé thường (1)', '9801638677956'),
(188, 9, 185000, 80, 3, '2021-12-05 03:53:08', 0, 'Vé thành viên (1), Vé thường (1)', '9801638678037'),
(189, 9, 185000, 80, 3, '2021-12-05 04:01:45', 0, 'Vé thành viên (1), Vé thường (1)', '9801638678494'),
(190, 9, 185000, 80, 3, '2021-12-05 04:02:51', 0, 'Vé thành viên (1), Vé thường (1)', '9801638678561'),
(191, 9, 185000, 80, 3, '2021-12-05 04:05:27', 0, 'Vé thành viên (1), Vé thường (1)', '9801638678717'),
(192, 9, 185000, 1, 3, '2021-12-05 04:06:22', 0, 'Vé thành viên (1), Vé thường (1)', '911638678772'),
(193, 9, 185000, 1, 3, '2021-12-05 04:08:32', 0, 'Vé thành viên (1), Vé thường (1)', '911638678961'),
(194, 1, 430000, 47, 3, '2021-12-05 04:35:43', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680591'),
(195, 1, 430000, 47, 3, '2021-12-05 04:35:46', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680594'),
(196, 1, 430000, 47, 3, '2021-12-05 04:35:53', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680602'),
(197, 1, 430000, 47, 3, '2021-12-05 04:35:53', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680602'),
(198, 1, 430000, 47, 3, '2021-12-05 04:35:53', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680602'),
(199, 1, 430000, 47, 3, '2021-12-05 04:35:53', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680602'),
(200, 1, 430000, 47, 3, '2021-12-05 04:35:57', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680605'),
(201, 1, 430000, 47, 3, '2021-12-05 04:35:57', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680605'),
(202, 1, 430000, 47, 3, '2021-12-05 04:35:57', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680606'),
(203, 1, 430000, 47, 3, '2021-12-05 04:35:58', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680606'),
(204, 1, 430000, 47, 3, '2021-12-05 04:36:45', 0, 'Vé thành viên (1), Vé thường (1)', '1471638680654'),
(205, 9, 185000, 38, 3, '2021-12-05 04:39:42', 1, 'Vé thành viên (1), Vé thường (1)', '9381638680830'),
(206, 9, 185000, 38, 3, '2021-12-05 04:42:07', 1, 'Vé thành viên (1), Vé thường (1)', '9381638680975'),
(207, 1, 430000, 47, 3, '2021-12-05 04:43:25', 1, 'Vé thành viên (1), Vé thường (1)', '1471638681054'),
(208, 7, 430000, 47, 3, '2021-12-05 04:50:00', 1, 'Vé thành viên (1), Vé thường (1)', '7471638681448'),
(209, 9, 65000, 38, 3, '2021-12-05 07:39:17', 1, 'Vé thành viên (0), Vé thường (1)', '9381638691606'),
(210, 1, 65000, 54, 3, '2021-12-06 10:03:05', 0, 'Vé thành viên (0), Vé thường (1)', '1541638786638'),
(211, 1, 55000, 54, 3, '2021-12-07 03:16:39', 0, 'Vé thành viên (1), Vé thường (0)', '1541638848653'),
(212, 1, 1255000, 47, 3, '2021-12-07 10:24:21', 1, 'Vé (4)', '1471638874317'),
(213, 1, 1255000, 47, 3, '2021-12-07 10:24:26', 0, 'Vé (4)', '1471638874322'),
(214, 3, 375000, 47, 3, '2021-12-07 10:29:12', 1, 'Vé (1)', '3471638874608'),
(215, 10, 130000, 38, 3, '2021-12-08 00:39:02', 1, 'Vé (1)', '10381638925599'),
(216, 10, 440000, 47, 3, '2021-12-08 02:24:37', 1, 'Vé (2)', '10471638931935'),
(217, 14, 505000, 82, 3, '2021-12-08 02:30:58', 1, 'Vé (3)', '14821638932316'),
(218, 13, 718000, 82, 3, '2021-12-08 02:32:00', 1, 'Vé (5)', '13821638932378'),
(219, 7, 732000, 82, 3, '2021-12-08 02:33:18', 1, 'Vé (4)', '7821638932456'),
(220, 6, 505000, 82, 3, '2021-12-08 02:34:27', 1, 'Vé (3)', '6821638932525'),
(221, 9, 898000, 82, 3, '2021-12-08 02:35:38', 1, 'Vé (2)', '9821638932596'),
(222, 8, 667000, 47, 3, '2021-12-08 14:20:44', 0, 'Vé (2)', '8471638974903'),
(223, 29, 720000, 43, 1, '2021-11-08 00:00:00', 1, 've(5)', '12358012367'),
(224, 29, 1200000, 49, 2, '2021-11-04 00:00:00', 0, 'vé đặt biệt (5), vé thường(3)', '29491638975632'),
(225, 32, 2100000, 46, 1, '2021-11-08 14:36:23', 0, 'vé đặt biệt (5), vé thường(5)', '32461638975795'),
(226, 32, 6100000, 43, 1, '2021-11-08 00:00:00', 1, 've(20)', '14158012567');

-- --------------------------------------------------------

--
-- Table structure for table `ticket_combo`
--

CREATE TABLE `ticket_combo` (
  `id_ticket` int(11) NOT NULL,
  `id_combo` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `unit_price` double NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_combo`
--

INSERT INTO `ticket_combo` (`id_ticket`, `id_combo`, `quantity`, `unit_price`) VALUES
(1, 2, 0, 0),
(1, 3, 0, 0),
(2, 2, 0, 0),
(2, 3, 0, 0),
(58, 1, 1, 16000),
(59, 1, 2, 10000),
(59, 2, 0, 0),
(60, 1, 2, 15000),
(60, 2, 0, 0),
(61, 1, 3, 18000),
(61, 2, 0, 0),
(62, 1, 1, 12000),
(62, 2, 0, 0),
(63, 1, 1, 12000),
(64, 1, 1, 300000),
(64, 2, 0, 0),
(64, 3, 0, 0),
(65, 1, 2, 200000),
(67, 1, 2, 200000),
(68, 1, 2, 100000),
(69, 1, 2, 150000),
(70, 2, 1, 8000),
(70, 3, 1, 9000),
(71, 2, 0, 8000),
(71, 3, 0, 9000),
(79, 2, 1, 8000),
(79, 3, 0, 9000),
(80, 2, 1, 8000),
(80, 3, 1, 9000),
(81, 2, 1, 8000),
(81, 3, 0, 9000),
(82, 2, 0, 8000),
(82, 3, 0, 9000),
(83, 2, 1, 8000),
(83, 3, 0, 9000),
(87, 2, 1, 8000),
(87, 3, 0, 9000),
(88, 2, 1, 8000),
(88, 3, 0, 9000),
(89, 2, 1, 8000),
(89, 3, 0, 9000),
(91, 2, 1, 8000),
(90, 2, 1, 8000),
(91, 3, 0, 9000),
(90, 3, 0, 9000),
(92, 2, 1, 8000),
(92, 3, 0, 9000),
(93, 2, 1, 8000),
(93, 3, 0, 9000),
(94, 2, 1, 8000),
(94, 3, 0, 9000),
(95, 2, 2, 8000),
(95, 3, 0, 9000),
(98, 2, 1, 8000),
(98, 3, 0, 9000),
(99, 2, 1, 8000),
(99, 3, 0, 9000),
(100, 2, 1, 8000),
(100, 3, 0, 9000),
(101, 2, 1, 8000),
(101, 3, 1, 9000),
(102, 2, 1, 8000),
(102, 3, 0, 9000),
(103, 2, 1, 8000),
(103, 3, 0, 9000),
(104, 2, 1, 8000),
(104, 3, 0, 9000),
(105, 2, 1, 8000),
(105, 3, 0, 9000),
(106, 2, 0, 8000),
(106, 3, 0, 9000),
(107, 2, 0, 8000),
(107, 3, 1, 9000),
(108, 2, 0, 8000),
(108, 3, 0, 9000),
(109, 2, 1, 8000),
(109, 3, 0, 9000),
(110, 2, 1, 8000),
(110, 3, 0, 9000),
(111, 2, 0, 8000),
(111, 3, 0, 9000),
(112, 2, 0, 8000),
(112, 3, 0, 9000),
(115, 2, 1, 8000),
(115, 3, 1, 9000),
(116, 2, 1, 8000),
(116, 3, 0, 9000),
(117, 2, 1, 8000),
(117, 3, 0, 9000),
(118, 2, 1, 8000),
(118, 3, 1, 9000),
(119, 2, 1, 8000),
(119, 3, 0, 9000),
(120, 2, 1, 8000),
(120, 3, 1, 9000),
(121, 2, 3, 8000),
(121, 3, 3, 9000),
(122, 1, 1, 65000),
(122, 2, 1, 83000),
(122, 3, 1, 162000),
(123, 1, 1, 65000),
(123, 2, 1, 83000),
(123, 3, 1, 162000),
(124, 1, 1, 65000),
(124, 2, 2, 83000),
(124, 3, 2, 162000),
(125, 1, 1, 65000),
(125, 2, 1, 83000),
(125, 3, 0, 162000),
(126, 1, 1, 65000),
(126, 2, 1, 83000),
(126, 3, 0, 162000),
(127, 1, 1, 65000),
(127, 2, 1, 83000),
(127, 3, 0, 162000),
(128, 1, 1, 65000),
(128, 2, 1, 83000),
(128, 3, 0, 162000),
(129, 1, 1, 65000),
(129, 2, 1, 83000),
(129, 3, 0, 162000),
(130, 1, 1, 65000),
(131, 1, 1, 65000),
(130, 2, 1, 83000),
(131, 2, 1, 83000),
(132, 1, 1, 65000),
(130, 3, 0, 162000),
(131, 3, 0, 162000),
(132, 2, 1, 83000),
(132, 3, 0, 162000),
(133, 1, 1, 65000),
(133, 2, 1, 83000),
(133, 3, 0, 162000),
(134, 1, 1, 65000),
(134, 2, 1, 83000),
(134, 3, 0, 162000),
(135, 1, 1, 65000),
(135, 2, 0, 83000),
(135, 3, 0, 162000),
(136, 1, 1, 65000),
(136, 2, 1, 83000),
(136, 3, 0, 162000),
(137, 1, 1, 65000),
(137, 2, 0, 83000),
(137, 3, 0, 162000),
(138, 1, 1, 65000),
(138, 2, 1, 83000),
(138, 3, 0, 162000),
(139, 1, 1, 65000),
(139, 2, 0, 83000),
(139, 3, 0, 162000),
(140, 1, 1, 65000),
(141, 1, 1, 65000),
(140, 2, 1, 83000),
(141, 2, 1, 83000),
(140, 3, 0, 162000),
(141, 3, 0, 162000),
(142, 1, 1, 65000),
(142, 2, 1, 83000),
(142, 3, 0, 162000),
(143, 1, 1, 65000),
(143, 2, 0, 83000),
(143, 3, 0, 162000),
(144, 1, 1, 65000),
(144, 2, 0, 83000),
(144, 3, 0, 162000),
(145, 1, 1, 65000),
(145, 2, 1, 83000),
(145, 3, 0, 162000),
(146, 1, 1, 65000),
(146, 2, 0, 83000),
(146, 3, 0, 162000),
(147, 1, 1, 65000),
(147, 2, 0, 83000),
(147, 3, 0, 162000),
(148, 1, 1, 65000),
(148, 2, 0, 83000),
(148, 3, 0, 162000),
(149, 1, 1, 65000),
(149, 2, 0, 83000),
(149, 3, 0, 162000),
(150, 1, 1, 65000),
(150, 2, 0, 83000),
(150, 3, 0, 162000),
(151, 1, 1, 65000),
(151, 2, 0, 83000),
(151, 3, 0, 162000),
(152, 1, 1, 65000),
(152, 2, 0, 83000),
(152, 3, 0, 162000),
(153, 1, 1, 65000),
(153, 2, 0, 83000),
(153, 3, 0, 162000),
(154, 1, 1, 65000),
(154, 2, 0, 83000),
(154, 3, 0, 162000),
(155, 1, 1, 65000),
(155, 2, 0, 83000),
(155, 3, 0, 162000),
(156, 1, 1, 65000),
(156, 2, 0, 83000),
(156, 3, 0, 162000),
(157, 1, 1, 65000),
(157, 2, 0, 83000),
(157, 3, 0, 162000),
(158, 1, 1, 65000),
(158, 2, 0, 83000),
(158, 3, 0, 162000),
(159, 1, 1, 65000),
(159, 2, 0, 83000),
(159, 3, 0, 162000),
(160, 1, 1, 65000),
(160, 2, 0, 83000),
(160, 3, 0, 162000),
(161, 1, 1, 65000),
(161, 2, 0, 83000),
(161, 3, 0, 162000),
(162, 1, 1, 65000),
(162, 2, 0, 83000),
(162, 3, 0, 162000),
(163, 1, 1, 65000),
(163, 2, 0, 83000),
(163, 3, 0, 162000),
(164, 1, 1, 65000),
(164, 2, 0, 83000),
(164, 3, 0, 162000),
(165, 1, 1, 65000),
(165, 2, 0, 83000),
(165, 3, 0, 162000),
(166, 1, 1, 65000),
(166, 2, 0, 83000),
(166, 3, 0, 162000),
(167, 1, 1, 65000),
(167, 2, 0, 83000),
(167, 3, 0, 162000),
(168, 1, 1, 65000),
(168, 2, 0, 83000),
(168, 3, 0, 162000),
(169, 1, 1, 65000),
(169, 2, 0, 83000),
(169, 3, 0, 162000),
(170, 1, 1, 65000),
(170, 2, 0, 83000),
(170, 3, 0, 162000),
(171, 1, 1, 65000),
(171, 2, 0, 83000),
(171, 3, 0, 162000),
(172, 1, 1, 65000),
(172, 2, 0, 83000),
(172, 3, 0, 162000),
(173, 1, 1, 65000),
(173, 2, 0, 83000),
(173, 3, 0, 162000),
(174, 1, 1, 65000),
(174, 2, 0, 83000),
(174, 3, 0, 162000),
(175, 1, 1, 65000),
(175, 2, 0, 83000),
(175, 3, 0, 162000),
(176, 1, 1, 65000),
(176, 2, 0, 83000),
(176, 3, 0, 162000),
(177, 1, 1, 65000),
(177, 2, 0, 83000),
(177, 3, 0, 162000),
(178, 1, 1, 65000),
(178, 2, 0, 83000),
(178, 3, 0, 162000),
(179, 1, 1, 65000),
(179, 2, 0, 83000),
(179, 3, 0, 162000),
(180, 1, 1, 65000),
(180, 2, 0, 83000),
(180, 3, 0, 162000),
(181, 1, 1, 65000),
(181, 2, 0, 83000),
(181, 3, 0, 162000),
(182, 1, 1, 65000),
(182, 2, 0, 83000),
(182, 3, 0, 162000),
(183, 1, 1, 65000),
(183, 2, 0, 83000),
(183, 3, 0, 162000),
(184, 1, 1, 65000),
(184, 2, 0, 83000),
(184, 3, 0, 162000),
(185, 1, 1, 65000),
(185, 2, 0, 83000),
(185, 3, 0, 162000),
(186, 1, 1, 65000),
(186, 2, 0, 83000),
(186, 3, 0, 162000),
(187, 1, 1, 65000),
(187, 2, 0, 83000),
(187, 3, 0, 162000),
(188, 1, 1, 65000),
(188, 2, 0, 83000),
(188, 3, 0, 162000),
(189, 1, 1, 65000),
(189, 2, 0, 83000),
(189, 3, 0, 162000),
(190, 1, 1, 65000),
(190, 2, 0, 83000),
(190, 3, 0, 162000),
(191, 1, 1, 65000),
(191, 2, 0, 83000),
(191, 3, 0, 162000),
(192, 1, 1, 65000),
(192, 2, 0, 83000),
(192, 3, 0, 162000),
(193, 1, 1, 65000),
(193, 2, 0, 83000),
(193, 3, 0, 162000),
(194, 1, 1, 65000),
(194, 2, 1, 83000),
(194, 3, 1, 162000),
(195, 1, 1, 65000),
(195, 2, 1, 83000),
(195, 3, 1, 162000),
(196, 1, 1, 65000),
(197, 1, 1, 65000),
(196, 2, 1, 83000),
(198, 1, 1, 65000),
(197, 2, 1, 83000),
(199, 1, 1, 65000),
(196, 3, 1, 162000),
(198, 2, 1, 83000),
(197, 3, 1, 162000),
(199, 2, 1, 83000),
(198, 3, 1, 162000),
(199, 3, 1, 162000),
(200, 1, 1, 65000),
(201, 1, 1, 65000),
(200, 2, 1, 83000),
(201, 2, 1, 83000),
(200, 3, 1, 162000),
(202, 1, 1, 65000),
(201, 3, 1, 162000),
(203, 1, 1, 65000),
(202, 2, 1, 83000),
(203, 2, 1, 83000),
(202, 3, 1, 162000),
(203, 3, 1, 162000),
(204, 1, 1, 65000),
(204, 2, 1, 83000),
(204, 3, 1, 162000),
(205, 1, 1, 65000),
(205, 2, 0, 83000),
(205, 3, 0, 162000),
(206, 1, 1, 65000),
(206, 2, 0, 83000),
(206, 3, 0, 162000),
(207, 1, 1, 65000),
(207, 2, 1, 83000),
(207, 3, 1, 162000),
(208, 1, 1, 65000),
(208, 2, 1, 83000),
(208, 3, 1, 162000),
(209, 1, 0, 65000),
(209, 2, 0, 83000),
(209, 3, 0, 162000),
(210, 1, 0, 65000),
(210, 2, 0, 83000),
(210, 3, 0, 162000),
(211, 1, 0, 65000),
(211, 2, 0, 83000),
(211, 3, 0, 162000),
(212, 1, 4, 65000),
(212, 2, 3, 83000),
(212, 3, 3, 162000),
(213, 1, 4, 65000),
(213, 2, 3, 83000),
(213, 3, 3, 162000),
(214, 1, 1, 65000),
(214, 2, 1, 83000),
(214, 3, 1, 162000),
(215, 1, 1, 65000),
(215, 2, 0, 83000),
(215, 3, 0, 162000),
(216, 1, 1, 65000),
(216, 2, 1, 83000),
(216, 3, 1, 162000),
(217, 1, 1, 65000),
(217, 2, 1, 83000),
(217, 3, 1, 162000),
(218, 1, 1, 65000),
(218, 2, 2, 83000),
(218, 3, 1, 162000),
(219, 1, 1, 65000),
(219, 2, 1, 83000),
(219, 3, 2, 162000),
(220, 1, 1, 65000),
(220, 2, 1, 83000),
(220, 3, 1, 162000),
(221, 1, 3, 65000),
(221, 2, 3, 83000),
(221, 3, 2, 162000),
(222, 1, 2, 65000),
(222, 2, 1, 83000),
(222, 3, 2, 162000),
(224, 1, 8, 1200000),
(224, 2, 0, 0),
(225, 1, 10, 2100000),
(225, 2, 0, 0),
(225, 3, 0, 0),
(225, 1, 0, 0),
(225, 2, 0, 0),
(226, 1, 15, 6100000),
(226, 2, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `ticket_seat`
--

CREATE TABLE `ticket_seat` (
  `id_ticket` int(11) NOT NULL,
  `id_seat` varchar(11) CHARACTER SET utf8mb4 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ticket_seat`
--

INSERT INTO `ticket_seat` (`id_ticket`, `id_seat`) VALUES
(1, 'A1'),
(1, 'A2'),
(2, 'B1'),
(2, 'B2'),
(58, 'A6'),
(64, 'B3'),
(58, 'A9'),
(58, 'A10'),
(58, 'A6'),
(59, 'A2'),
(59, 'A1'),
(60, 'C10'),
(60, 'H3'),
(61, 'C1'),
(61, 'C2'),
(64, 'C10'),
(63, 'C9'),
(62, 'A9'),
(64, 'D3'),
(64, 'D4'),
(65, 'A1'),
(65, 'A2'),
(67, 'A1'),
(67, 'A2'),
(67, 'B3'),
(67, 'B4'),
(67, 'A5'),
(68, 'A1'),
(68, 'A2'),
(68, 'D3'),
(68, 'D4'),
(67, 'A7'),
(69, 'C1'),
(69, 'C2'),
(67, 'C5'),
(70, 'E2'),
(70, 'E1'),
(71, 'A2'),
(79, 'E1'),
(79, 'E2'),
(80, 'C2'),
(81, 'G2'),
(81, 'G1'),
(82, 'H4'),
(82, 'H3'),
(83, 'C1'),
(87, 'F4'),
(87, 'F3'),
(88, 'C2'),
(88, 'C1'),
(89, 'F4'),
(89, 'F3'),
(91, 'C2'),
(90, 'C2'),
(91, 'C1'),
(90, 'C1'),
(92, 'A14'),
(92, 'A13'),
(93, 'F4'),
(94, 'F4'),
(95, 'E1'),
(95, 'E2'),
(98, 'G2'),
(98, 'G1'),
(99, 'G2'),
(99, 'G1'),
(100, 'H4'),
(100, 'H3'),
(101, 'G2'),
(101, 'G1'),
(102, 'H4'),
(102, 'H3'),
(103, 'D3'),
(103, 'D4'),
(104, 'E2'),
(104, 'E1'),
(104, 'C2'),
(105, 'F4'),
(105, 'F3'),
(106, 'B8'),
(106, 'B7'),
(107, 'B8'),
(107, 'B7'),
(108, 'D4'),
(109, 'A1'),
(110, 'A1'),
(111, 'A6'),
(112, 'A5'),
(115, 'C2'),
(115, 'C1'),
(116, 'D4'),
(116, 'D3'),
(117, 'C1'),
(118, 'B4'),
(118, 'B3'),
(118, 'C5'),
(119, 'E6'),
(120, 'E2'),
(120, 'E1'),
(121, 'H12'),
(121, 'H11'),
(122, 'F8'),
(122, 'F7'),
(123, 'E14'),
(123, 'E13'),
(124, 'E6'),
(124, 'E5'),
(124, 'D8'),
(124, 'D7'),
(125, 'A10'),
(125, 'A9'),
(126, 'A10'),
(126, 'A9'),
(127, 'A10'),
(127, 'A9'),
(128, 'A10'),
(128, 'A9'),
(129, 'A10'),
(129, 'A9'),
(130, 'A10'),
(131, 'A10'),
(130, 'A9'),
(131, 'A9'),
(132, 'A10'),
(132, 'A9'),
(133, 'A10'),
(133, 'A9'),
(134, 'A10'),
(134, 'A9'),
(135, 'A10'),
(135, 'A9'),
(136, 'A10'),
(136, 'A9'),
(137, 'A10'),
(137, 'A9'),
(138, 'A10'),
(138, 'A9'),
(139, 'A10'),
(139, 'A9'),
(140, 'A10'),
(141, 'A10'),
(140, 'A9'),
(141, 'A9'),
(142, 'A10'),
(142, 'A9'),
(143, 'A10'),
(143, 'A9'),
(144, 'A10'),
(144, 'A9'),
(145, 'A10'),
(145, 'A9'),
(146, 'A10'),
(146, 'A9'),
(147, 'A10'),
(147, 'A9'),
(148, 'A10'),
(148, 'A9'),
(149, 'A10'),
(149, 'A9'),
(150, 'A10'),
(150, 'A9'),
(151, 'A10'),
(151, 'A9'),
(152, 'A10'),
(152, 'A9'),
(153, 'A10'),
(153, 'A9'),
(154, 'A10'),
(154, 'A9'),
(155, 'A10'),
(155, 'A9'),
(156, 'A10'),
(156, 'A9'),
(157, 'A10'),
(157, 'A9'),
(158, 'A10'),
(158, 'A9'),
(159, 'A10'),
(159, 'A9'),
(160, 'A10'),
(160, 'A9'),
(161, 'A10'),
(161, 'A9'),
(162, 'A10'),
(162, 'A9'),
(163, 'A10'),
(163, 'A9'),
(164, 'A10'),
(164, 'A9'),
(165, 'A10'),
(165, 'A9'),
(166, 'A10'),
(166, 'A9'),
(167, 'A10'),
(167, 'A9'),
(168, 'A10'),
(168, 'A9'),
(169, 'A10'),
(169, 'A9'),
(170, 'A10'),
(170, 'A9'),
(171, 'A10'),
(171, 'A9'),
(172, 'A10'),
(172, 'A9'),
(173, 'A10'),
(173, 'A9'),
(174, 'A10'),
(174, 'A9'),
(175, 'A10'),
(175, 'A9'),
(176, 'A10'),
(176, 'A9'),
(177, 'A10'),
(177, 'A9'),
(178, 'A10'),
(178, 'A9'),
(179, 'A10'),
(179, 'A9'),
(180, 'A10'),
(180, 'A9'),
(181, 'A10'),
(181, 'A9'),
(182, 'A10'),
(182, 'A9'),
(183, 'A10'),
(183, 'A9'),
(184, 'A10'),
(184, 'A9'),
(185, 'A10'),
(185, 'A9'),
(186, 'A10'),
(186, 'A9'),
(187, 'A10'),
(187, 'A9'),
(188, 'A10'),
(188, 'A9'),
(189, 'A10'),
(189, 'A9'),
(190, 'A10'),
(190, 'A9'),
(191, 'A10'),
(191, 'A9'),
(192, 'A10'),
(192, 'A9'),
(193, 'A10'),
(193, 'A9'),
(194, 'G10'),
(194, 'G9'),
(195, 'G10'),
(195, 'G9'),
(196, 'G10'),
(197, 'G10'),
(198, 'G10'),
(196, 'G9'),
(199, 'G10'),
(197, 'G9'),
(198, 'G9'),
(199, 'G9'),
(200, 'G10'),
(201, 'G10'),
(200, 'G9'),
(201, 'G9'),
(202, 'G10'),
(203, 'G10'),
(202, 'G9'),
(203, 'G9'),
(204, 'G10'),
(204, 'G9'),
(205, 'B7'),
(205, 'B4'),
(206, 'B7'),
(206, 'B4'),
(207, 'G10'),
(207, 'G9'),
(208, 'E5'),
(208, 'E6'),
(209, 'B8'),
(210, 'C1'),
(211, 'B11'),
(212, 'A14'),
(212, 'A13'),
(212, 'D8'),
(212, 'H4'),
(213, 'A14'),
(213, 'A13'),
(213, 'D8'),
(213, 'H4'),
(214, 'G14'),
(215, 'A9'),
(216, 'F8'),
(216, 'F7'),
(217, 'A1'),
(217, 'A2'),
(217, 'B4'),
(218, 'G1'),
(218, 'G2'),
(218, 'F3'),
(218, 'E2'),
(218, 'E1'),
(219, 'E14'),
(219, 'E13'),
(219, 'G14'),
(219, 'G13'),
(220, 'E10'),
(220, 'E9'),
(220, 'E13'),
(221, 'H12'),
(221, 'H11'),
(222, 'E14'),
(222, 'E13'),
(224, 'A1'),
(224, 'A2'),
(225, 'A1'),
(225, 'A2'),
(225, 'A5'),
(225, 'A6'),
(225, 'A9'),
(225, 'A10'),
(225, 'B3'),
(225, 'B4'),
(225, 'B7'),
(225, 'B8'),
(226, 'A1'),
(226, 'A2'),
(226, 'A5'),
(226, 'A6'),
(226, 'A9'),
(226, 'A10'),
(226, 'B3'),
(226, 'B4'),
(226, 'B7'),
(226, 'C1'),
(226, 'C2'),
(226, 'C5'),
(226, 'C6'),
(226, 'C9'),
(226, 'C10');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id_user` int(11) NOT NULL,
  `full_name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `password` varchar(100) NOT NULL,
  `status` bit(1) NOT NULL,
  `administration` int(11) NOT NULL,
  `google_id` varchar(100) DEFAULT NULL,
  `facebook_id` varchar(100) DEFAULT NULL,
  `img_user` varchar(100) NOT NULL,
  `create_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id_user`, `full_name`, `email`, `phone`, `password`, `status`, `administration`, `google_id`, `facebook_id`, `img_user`, `create_at`) VALUES
(1, 'Tuong Nguyen', 'tuong0188549903@gmail.com', '', '70abc6b9e04e8582c135', b'1', 1, NULL, NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjPmg2pJtUnEXwnSlC6K57A7U_ToGo220pqT1kk=s96-c', '2021-12-02'),
(2, 'Lê thiện thông', 'thong1@gmail.com', '0972136650', 'thongntp1', b'1', 0, '', NULL, '', '2021-12-27'),
(3, 'Nguyễn tấn Tường', 'tuong121@gmail.com', '0912883715', 'tuong1121', b'0', 0, '', NULL, '', '2021-11-08'),
(4, 'Trần Thanh Sang', 'sanglp@gmail.com', '0952136871', '123123a', b'0', 1, '', NULL, '', '2021-10-11'),
(5, 'Mai Tuấn Hùng', 'hungmt@gmail.com', '0975841264', '15897123bv', b'0', 0, '', NULL, '', '2021-11-01'),
(6, 'Lan Thần Bắc', 'ltb@gmail.com', '0923436650', 'thongntp1', b'1', 0, '', NULL, '', '2021-10-17'),
(12, 'kslove', 'kslove@gmail.com', '0972136489', '73278a4a86960eeb576a', b'0', 0, NULL, NULL, '1', '2021-12-02'),
(38, 'Tuong Nguyen', 'tuong0188549903@gmail.com', '', '70abc6b9e04e8582c135', b'1', 1, '116245710180844447381', NULL, 'https://lh3.googleusercontent.com/a-/AOh14GjPmg2pJtUnEXwnSlC6K57A7U_ToGo220pqT1kk=s96-c', '2021-12-02'),
(40, 'Tường Nguyễn', 'tuong0188549903@gmail.com', '', '5a04894a1918d920b710', b'1', 0, NULL, '1613718915666636', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=1613718915666636&amp;height=50&amp;wi', '2021-12-02'),
(43, 'Phat Liu', '', '', 'dac641a6ddd233656bcd', b'1', 1, NULL, '3139389713053778', 'https://platform-lookaside.fbsbx.com/platform/profilepic/?asid=3139389713053778&amp;height=50&amp;wi', '2021-12-02'),
(44, 'phát liu', 'phat718920@gmail.com', '', '1a0f66160cb39230afa4', b'0', 0, '107244497911418621994', NULL, 'https://lh3.googleusercontent.com/a/AATXAJwJuRpxTVZxUoo6LQ_k_FnVxhmeNGZWQMRU1jVy=s96-c', '2021-12-02'),
(45, 'Nguyen Tan Tuong (FPL HCM_K16)', 'tuongntps14943@fpt.edu.vn', '', 'ce89eea2ee7def4f58ae', b'1', 1, '109518520978945848357', NULL, 'https://lh3.googleusercontent.com/a/AATXAJwZJWNDhJ1biUKkDnOg_C3t4kOGyedxspXv6pHZ=s96-c', '2021-12-02'),
(46, 'Đặng Trung Kiên', 'kiendang2222@gmail.com', '', '34d8bcf958a514ed3695', b'0', 1, NULL, '1264396334056678', 'https://scontent.fsgn2-1.fna.fbcdn.net/v/t1.30497-1/cp0/c15.0.50.50a/p50x50/84628273_176159830277856', '2021-12-03'),
(47, 'Dang Kien', 'kiendang712002@gmail.com', '', 'f3bd41231e8ddefcbe44', b'1', 1, '108034072570403371087', NULL, 'https://lh3.googleusercontent.com/a-/AOh14Gj8PzjpCSfjjwYV1YeNMXhATVBncBkrj6x2ZAmzpQ=s96-c', '2021-12-03'),
(87, 'thế', 'thethu@gmail.com', '', 'thethu', b'1', 0, NULL, NULL, '', NULL),
(96, 'thong1@gmail.com', 'thethu@gmail.com', '', 'thongntp1', b'0', 0, NULL, NULL, '', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `banner`
--
ALTER TABLE `banner`
  ADD PRIMARY KEY (`id_banner`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`id_category`);

--
-- Indexes for table `combo`
--
ALTER TABLE `combo`
  ADD PRIMARY KEY (`id_combo`);

--
-- Indexes for table `comment`
--
ALTER TABLE `comment`
  ADD PRIMARY KEY (`id_comment`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`id_movie`);

--
-- Indexes for table `movie_category`
--
ALTER TABLE `movie_category`
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_movie` (`id_movie`);

--
-- Indexes for table `promotion`
--
ALTER TABLE `promotion`
  ADD PRIMARY KEY (`id_promotion`);

--
-- Indexes for table `room`
--
ALTER TABLE `room`
  ADD PRIMARY KEY (`id_room`);

--
-- Indexes for table `seat`
--
ALTER TABLE `seat`
  ADD KEY `seat_ibfk_1` (`id_room`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id_session`),
  ADD KEY `id_room` (`id_room`),
  ADD KEY `id_showtimes` (`id_showtimes`),
  ADD KEY `session_ibfk_3` (`id_movie`);

--
-- Indexes for table `showtimes`
--
ALTER TABLE `showtimes`
  ADD PRIMARY KEY (`id_showtimes`);

--
-- Indexes for table `ticket`
--
ALTER TABLE `ticket`
  ADD PRIMARY KEY (`id_ticket`),
  ADD KEY `id_promotion` (`id_promotion`),
  ADD KEY `id_session` (`id_session`);

--
-- Indexes for table `ticket_combo`
--
ALTER TABLE `ticket_combo`
  ADD KEY `id_combo` (`id_combo`),
  ADD KEY `id_ticket` (`id_ticket`);

--
-- Indexes for table `ticket_seat`
--
ALTER TABLE `ticket_seat`
  ADD KEY `id_ticket` (`id_ticket`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `banner`
--
ALTER TABLE `banner`
  MODIFY `id_banner` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `combo`
--
ALTER TABLE `combo`
  MODIFY `id_combo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `comment`
--
ALTER TABLE `comment`
  MODIFY `id_comment` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `movie`
--
ALTER TABLE `movie`
  MODIFY `id_movie` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `promotion`
--
ALTER TABLE `promotion`
  MODIFY `id_promotion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `room`
--
ALTER TABLE `room`
  MODIFY `id_room` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `session`
--
ALTER TABLE `session`
  MODIFY `id_session` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `showtimes`
--
ALTER TABLE `showtimes`
  MODIFY `id_showtimes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `ticket`
--
ALTER TABLE `ticket`
  MODIFY `id_ticket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=97;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `movie_category`
--
ALTER TABLE `movie_category`
  ADD CONSTRAINT `movie_category_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `category` (`id_category`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `movie_category_ibfk_2` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `seat`
--
ALTER TABLE `seat`
  ADD CONSTRAINT `seat_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `session`
--
ALTER TABLE `session`
  ADD CONSTRAINT `session_ibfk_1` FOREIGN KEY (`id_room`) REFERENCES `room` (`id_room`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_ibfk_2` FOREIGN KEY (`id_showtimes`) REFERENCES `showtimes` (`id_showtimes`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `session_ibfk_3` FOREIGN KEY (`id_movie`) REFERENCES `movie` (`id_movie`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_combo`
--
ALTER TABLE `ticket_combo`
  ADD CONSTRAINT `ticket_combo_ibfk_1` FOREIGN KEY (`id_combo`) REFERENCES `combo` (`id_combo`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `ticket_combo_ibfk_2` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `ticket_seat`
--
ALTER TABLE `ticket_seat`
  ADD CONSTRAINT `ticket_seat_ibfk_1` FOREIGN KEY (`id_ticket`) REFERENCES `ticket` (`id_ticket`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
