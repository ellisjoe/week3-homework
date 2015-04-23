# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
Place.delete_all
Review.delete_all

places = [
    {title: "Museum of Science and Industry", photo_url: "http://upload.wikimedia.org/wikipedia/commons/thumb/c/c4/MSIChicago.JPG/1280px-MSIChicago.JPG", admission_price: 1000, description: "The Museum of Science and Industry (MSI) is located in Chicago, Illinois, in Jackson Park, in the Hyde Park neighborhood between Lake Michigan and The University of Chicago. It is housed in the former Palace of Fine Arts from the 1893 World's Columbian Exposition. Initially endowed by Julius Rosenwald, the Sears, Roebuck and Company president and philanthropist, it was supported by the Commercial Club of Chicago and opened in 1933 during the Century of Progress Exposition.
     
     It is the largest science museum in the western hemisphere. Among its diverse and expansive exhibits, the museum features a full-size replica coal mine, a German submarine (U-505) captured during World War II, a 3,500-square-foot (330 m2) model railroad, the first diesel-powered streamlined stainless-steel passenger train (Pioneer Zephyr), and the Apollo 8 spacecraft that carried the first humans to orbit the Moon."},

    {title: "Soldier Field", photo_url: "http://blog.fantrotter.com/wp-content/uploads/2013/10/CC_Soldier-Field-21.jpg", admission_price: 10000, description: "Soldier Field is an American football stadium on the Near South Side of Chicago, Illinois, United States. Opened in 1924, it is the oldest NFL stadium, celebrating 90 years of operation. Since 1971 it has been the home of the National Football League's Chicago Bears. With a football capacity of 61,500, it is the third smallest stadium in the NFL. In 2003, the interior underwent extensive renovation."},

    {title: "Wrigley Field", photo_url: "http://mlb.mlb.com/chc/images/ballpark/480x200_wrigley_field.jpg", admission_price: 2500, description: "Wrigley Field /ˈrɪɡli/ is a baseball stadium located in Chicago, Illinois, United States, home of the Chicago Cubs. It was built in 1914 as Weeghman Park for the Chicago Federal League baseball team, the Chicago Whales. The Cubs played their first game at Weeghman Park on April 20, 1916, defeating the Cincinnati Reds 7–6 in eleven innings. In November 1918, Weeghman resigned as team president. Chewing gum magnate William Wrigley, Jr. acquired complete control of the Cubs by 1921. It was called Cubs Park from 1920 through 1926, before officially becoming Wrigley Field for the 1927 season.
     
     Located in the north side community area of Lakeview, Wrigley Field sits on an irregular block bounded by Clark (west) and Addison (south) Streets and Waveland (north) and Sheffield (east) Avenues. Wrigley Field is nicknamed The Friendly Confines, a phrase popularized by \"Mr. Cub\", Hall of Famer Ernie Banks. The current capacity is 40,929,[1] making Wrigley Field the 10th-smallest actively used ballpark. It is the oldest National League ballpark, the second-oldest active major league ballpark (after Fenway Park on April 20, 1912), and the only remaining Federal League park."},

    {title: "United Center", photo_url: "http://upload.wikimedia.org/wikipedia/en/7/7a/United_Center_Interior.jpg", admission_price: 10000, description: "United Center is an indoor sports arena located in Chicago, Illinois. The United Center is home to both the Chicago Bulls of the National Basketball Association (NBA) and the Chicago Blackhawks of the National Hockey League (NHL). The arena is named after its corporate sponsor, United Airlines.
     
     The plan to build the arena was created by Blackhawks owner Bill Wirtz and Bulls owner Jerry Reinsdorf. The United Center's predecessor was the indoor Chicago Stadium, the original \"Madhouse on Madison\", which was demolished after the newer arena opened for business on August 18, 1994. The first ever event at the United Center was the WWF(now WWE) event SummerSlam94. Due to the 1994–95 NHL lockout, the Blackhawks did not move in until January 1995.
     
     The east side of the stadium features statues of Michael Jordan (known as \"The Spirit\"), Bobby Hull and Stan Mikita, while a statue of various Blackhawks sits to the north on Madison Street, where the Chicago Stadium was located."},

    {title: "Osaka Garden", photo_url: "https://static.panoramio.com.storage.googleapis.com/photos/large/84371575.jpg", admission_price: 0, description: "The site of the Japanese Garden (known formally as \"Osaka\" only since 1995) started with scraping and building up and outward the natural oak savannah sandbar (then a peninsula), to be known henceforth as Wooded Island, for the 1893 World's Columbian Exposition and constructed on what was now become an Island (with a bridge connection) a Ho-o-den (Phoenix Temple or hall--some say modeled on the Byodo-in Temple of Uji outside Kyoto (others say it was more a lake retreat or villa, befitting an island) for the government of Japan as its pavilion for the Exposition. It has been suggested that the \"phoenix\" emblem was a gesture to Chicago, which was resurrected like the mythical bird from the ashes of the Chicago Fire, an emblem adopted at the same time by the adjacent \"reborn\" University of Chicago. The Ho-o-den was located near (approximately the large lawn west of the modern garden), not in the present garden with tea house. 1893 The Tea House was located northeast, on the east side of the East Lagoon on the mainland. The living quarters for the builders, performers, craftsmen, representatives et al from Japan was located in the southwest corner of Wooded Island, amidst some of the oldest giant burr oaks in the Chicago area. That site was also a hunters' camp at some point. The four bright phoenix panels were by master sculptor Takamura Kuon."}
]

Place.create(places)
