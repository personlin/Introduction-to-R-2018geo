# R basic

## Calculater 
6 + 9 

3896 - 1639

736 * 354

4974/258

(3+7) * 37

6 ^ 2

## 

8 > 9

55 < 60

5 * 5 == 5 ^2

6 * 3 >= c(17, 18, 19)

8 %in% 1:10

## 
# max()  傳回最大值
# min()  傳回最小值
# which.min(x)  傳回最小值的位置
# which.max(x)  傳回最大值的位置

max(1:10)
min(38, 57, 658, 50, -10)
a <- c(38, 57, 658, 50, -10)
a
which.min(a)
which.min(c(38, 57, 658, 50, -10))

# variable 變數
my_numeric <- 42
my_character <- "universe"
my_logical <- FALSE 
class(my_numeric)
class(my_character)
class(my_logical)

# vector 向量
# c() 輸入簡單向量資料
# seq(from, to, by) 輸入序列資料
# rep(x, times) 輸入重複多次資料
numeric_vector <- c(1, 10, 49)
character_vector <- c("a", "b", "c")
boolean_vector <- c(T, F, T)
seq(2,20,2)
rep(5, 10)


# name vector 命名
some_vector <- c("John Doe", "poker player")
names(some_vector) <- c("Name", "Profession")

# if else
A <- 5
B <- 10
if (A > B) {
  print('A大於B')
} else {
  print('A沒有大於B')
}

# if ( test_expression1) {
#   statement1
# } else if ( test_expression2) {
#   statement2
# } else if ( test_expression3) {
#   statement3
# } else
#   statement4


#----demo----
install.packages(c("maps", "ggmap", "dplyr", "rgdal", "leaflet", "geosphere", "htmlwidgets", "xtable", "knitr",
                   "mapview", "automap", "here", "XML"))

#隨機取常態分佈N(0,1)的10個數。
rnorm(10)

#隨機取常態分佈N(0,1)的1000個數，然後畫直方圖(histogram)。
x <- rnorm(1000,0,1)
hist(x)

#用R畫鳶尾花的數據集
data(iris) #載入資料
head(iris) #查看最前面6行資料
plot(iris) #畫圖

#地圖
library(maps)
map()

#Google Map底圖 (需要網路連線)
library(ggmap)
gm = get_map(location=c(121.25,24.9,121.8,25.3))
ggmap(gm)
#換個theme
gm2 = get_map(location=c(121.25,24.9,121.8,25.3), source="stamen",maptype="toner")
ggmap(gm2)

#路線規劃
#from <- "106台北市大安區捷運台電大樓站"
from <- "Taipower Building Station, Taiwan"
#to <- "11008台北市信義區市府路1號台北市政府"
to <- "MRT Taipei City Hall, Taiwan"

route_df <- route(from, to, structure = 'route', mode = "walk")
qmap('Taipei', zoom = 13) + 
  geom_path(
    aes(x = lon, y = lat), colour = 'red', size = 1.5,
    data = route_df, lineend = 'round')


