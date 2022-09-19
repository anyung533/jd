

👇🏻

## 去面板添加这几个任务
### 更新仓库必须用下面定时，不要直接用ql repo，我可以更新pull.sh文件让你们容器自动安装需要的依赖以及文件，不需要自己手动装依赖。

> * 名称:更新仓库
> * 定时:25 * * * *
> * 命令:ql raw https://raw.githubusercontent.com/LJMX996/jd/aaron/pull.sh && task raw_aaron_pull.sh

> * 名称:更新仓库备用
> * 定时:10,40 * * * *
> * 命令:task /ql/config/pull.sh


> * 名称:依赖安装
> * 定时: 00
> * 命令:task /ql/repo/LJMX996_jd_aaron/yilai.sh
> * 只需要运行一次。
> * 2.10开始可以使用面板安装依赖


> * 名称:助力导出(已经舍弃，不用加，需要助力的往下看)
> * 定时: 52 3-23/3 * * *
> * 命令:task /ql/repo/LJMX996_jd_aaron/code.sh

## 面板安装依赖
#### 不推荐，推荐用上面的定时

   ```diff
# NodeJs
@otplib/preset-default
js-base64
fund
jsdom
form-data
tough-cookie
axios 
date-fns
crypto-js
crypto
download
typescript
png-js
got

# Python3
requests
jieba
aiohttp  #安装这个会导致重启容器以后bot死掉

# Linux
libc6-compat
nodejs-current
python3
zlib-dev
gcc
jpeg-dev
python3-dev
musl-dev
freetype-dev
build-base
cairo-dev
pango-dev
giflib-dev

   ```


### 自动互助提示
拉取助力独立仓库，不用再担心toolong问题

##### 独立助力仓库
   ```diff
ql raw https://raw.githubusercontent.com/LJMX996/jd/aaron/pull_code_help.sh && task raw_aaron_pull_code_help.sh
   ```
   
使用上面独立仓库默认是助力前15个账号
如果想助力其他数量账号，请添加变量，例如👇🏻

   ```diff
export code_num="100"   
   ```

### 从这往下可以不用看了，已经舍弃，懒得删   
然后编辑config下 → task_before.sh文件

内容如下

   ```diff
#!/usr/bin/env bash
if [[ $(ls $dir_code) ]]; then
    latest_log=$(ls -r $dir_code | head -1)
    . $dir_code/$latest_log
fi
   ```





