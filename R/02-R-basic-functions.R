# 02-R-basic-functions

getwd()   #檢視目前的工作目錄
#setwd()  #設定目前的工作目錄
R.home()  #檢視R的安裝主目錄
Sys.getenv()  #會傳回所有的環境變數
Sys.getenv("R_PLATFORM")  #檢視OS平台
Sys.getlocale() #取得系統的locale設定值
#memory.limit() #傳回可用記憶體上限(win)
#object.size()  #察看物件所佔的記憶體大小
list.files()  #列出目錄下所有檔案名稱
sessionInfo() #查看系統資訊
.libPaths()   #查看library路徑

data() #顯示目前可用的資料，或載入資料
objects() #顯示目前所有的物件
ls() #顯示目前所有的物件
gc() #察看目前記憶體使用情況
rm() #移除物件
library() #察看目前安裝的套件或載入套件
source()  #載入R程式碼

typeof() #察看物件類型
mode()   #察看物件模式
length() #察看物件長度
dim()    #察看物件維度
nrow()   #察看物件列位數
ncol()   #察看物件欄位數

attributes() #察看物件屬性(非內在數性)
row.names()  #察看資料框架的列位名
names()      #察看欄位名
dimnames()   #察看物件列與欄位名
str()        #察看物件結構
attr()       #指派或更改物件屬性
object.size() #察看物件佔記憶體大小
head()       #檢視物件前10個列的資料
tail()       #檢視物件最後10個列的資料

read.table()   #讀入資料
read.csv()     #讀入資料
wirte.table()  #輸出資料
write.matrix() #輸出資料