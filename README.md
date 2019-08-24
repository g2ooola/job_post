# README
  
## Introduction
* 情境 : 各家公司可以張貼自己的求職訊息
* Application : 以基礎的 Rails 寫成, 加上 capistrano 佈署
* 功能 : 
  * for user
    * 首頁隨機列出 5 家公司 & 10 個職缺
    * 附帶公司&職缺 的 list & detail
  * for admin
    * 自己公司資訊的 show & edit 功能
    * 職缺的 list, show, create, destroy 


## How to use
* For user
  * 首頁 : http://localhost:3000
* For admin
  * 登入後台 http://localhost:3000/admin/login?id=1
    * 之後可做相關操作, user 看得的資料會隨之變動
  * 登出後台 http://localhost:3000/admin/logout

## TODO
* company list & job list 的
  * 排序方式
  * 分頁
* sample (首頁的隨機取樣)
  * 加上 cache

## Others
* company 的各項文字敘述內容以 json 存, 不需開各個欄位
  * 彈性較大
  * 是否需要 ?
* 測試
  * 目前較簡單, 不需測試