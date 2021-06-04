## Version: v2.0.0-05302045
## Date: 2021-05-30
## Update Content: 增加ql bot命令所需文件提示

## 上面版本号中，如果第2位数字有变化，那么代表增加了新的参数，如果只有第3位数字有变化，仅代表更新了注释，没有增加新的参数，可更新可不更新

## 在运行 ql repo 命令时，是否自动删除失效的脚本与定时任务
AutoDelCron="true"

## 在运行 ql repo 命令时，是否自动增加新的本地定时任务
AutoAddCron="true"

## 设置定时任务执行的超时时间，默认1h，后缀"s"代表秒(默认值), "m"代表分, "h"代表小时, "d"代表天
CommandTimeoutTime="1h"

## 设置批量执行任务时的并发数，默认同时执行5个任务
MaxConcurrentNum="5"

## 在运行 task 命令时，随机延迟启动任务的最大延迟时间
## 默认给javascript任务加随机延迟，如 RandomDelay="300" ，表示任务将在 1-300 秒内随机延迟一个秒数，然后再运行，取消延迟赋值为空
RandomDelay="300"

## 如果你自己会写shell脚本，并且希望在每次运行 ql update 命令时，额外运行你的 shell 脚本，请赋值为 "true"，默认为true
EnableExtraShell="true"

## 自动按顺序进行账号间互助（选填） 设置为 true 时，将直接导入code最新日志来进行互助
AutoHelpOther="true"

## 定义 jcode 脚本导出的互助码模板样式（选填）
## 不填 使用“按编号顺序助力模板”，Cookie编号在前的优先助力
## 填 0 使用“全部一致助力模板”，所有账户要助力的码全部一致
## 填 1 使用“均等机会助力模板”，所有账户获得助力次数一致
## 填 2 使用“随机顺序助力模板”，本套脚本内账号间随机顺序助力，每次生成的顺序都不一致。
HelpType="0"

## 是否自动启动bot，默认不启动，设置为true时自动启动，目前需要自行克隆bot仓库所需代码，存到ql/repo目录下，文件夹命名为dockerbot
AutoStartBot=""

## 安装bot依赖时指定pip源，默认使用清华源，如不需要源，设置此参数为空
PipMirror="https://pypi.tuna.tsinghua.edu.cn/simple"

## 需组合的环境变量列表，env_name需要和var_name一一对应，如何有新活动按照格式添加(不懂勿动)
env_name=(
  JD_COOKIE
  FRUITSHARECODES
  PETSHARECODES
  PLANT_BEAN_SHARECODES
  DREAM_FACTORY_SHARE_CODES
  DDFACTORY_SHARECODES
  JDZZ_SHARECODES
  JDJOY_SHARECODES
  JXNC_SHARECODES
  BOOKSHOP_SHARECODES
  JD_CASH_SHARECODES
  JDSGMH_SHARECODES
  JDCFD_SHARECODES
  JDHEALTH_SHARECODES
  JD818_SHARECODES
  CITY_SHARECODES
)
var_name=(
  Cookie
  ForOtherFruit
  ForOtherPet
  ForOtherBean
  ForOtherDreamFactory
  ForOtherJdFactory
  ForOtherJdzz
  ForOtherJoy
  ForOtherJxnc
  ForOtherBookShop
  ForOtherCash
  ForOtherSgmh
  ForOtherCfd
  ForOtherHealth
  ForOtherCarni
  ForOtherCity
)

## name_js为脚本文件名，如果使用ql repo命令拉取，文件名含有作者名
## 所有有互助码的活动，把脚本名称列在 name_js 中，对应 config.sh 中互助码后缀列在 name_config 中，中文名称列在 name_chinese 中。
## name_js、name_config 和 name_chinese 中的三个名称必须一一对应。
name_js=(
  chinnkarahoi_jd_scripts_jd_fruit
  chinnkarahoi_jd_scripts_jd_pet
  chinnkarahoi_jd_scripts_jd_plantBean
  chinnkarahoi_jd_scripts_jd_dreamFactory
  chinnkarahoi_jd_scripts_jd_jdfactory
  chinnkarahoi_jd_scripts_jd_jdzz
  chinnkarahoi_jd_scripts_jd_crazy_joy
  chinnkarahoi_jd_scripts_jd_jxnc
  chinnkarahoi_jd_scripts_jd_bookshop
  chinnkarahoi_jd_scripts_jd_cash
  chinnkarahoi_jd_scripts_jd_sgmh
  chinnkarahoi_jd_scripts_jd_cfd
  chinnkarahoi_jd_scripts_jd_health
  chinnkarahoi_jd_scripts_jd_carnivalcity
  chinnkarahoi_jd_scripts_jd_city
  chinnkarahoi_jd_scripts_jd_zoo
)
name_config=(
  Fruit
  Pet
  Bean
  DreamFactory
  JdFactory
  Jdzz
  Joy
  Jxnc
  BookShop
  Cash
  Sgmh
  Cfd
  Health
  Carni
  City
  Zoo
)
name_chinese=(
  东东农场
  东东萌宠
  京东种豆得豆
  京喜工厂
  东东工厂
  京东赚赚
  crazyJoy任务
  京喜农场
  口袋书店
  签到领现金
  闪购盲盒
  京喜财富岛
  东东健康社区
  京东手机狂欢城
  城城领现金
  618动物联萌
)

## 其他需要的变量，脚本中需要的变量使用 export 变量名= 声明即可
export TG_BOT_TOKEN="1897660972:AAHQBmN8K_Zqt7x4ItLm613kyCK-HkdLqBQ"
export TG_USER_ID="-1001390164435"
export JOY_RUN_HELP_MYSELF="true"
export FRUIT_NOTIFY_CONTROL="false"
export JXNC_NOTIFY_LEVEL="0"
