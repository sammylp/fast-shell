# fast-shell
#EN
used to accelarate your shell script effienciency
#ZH
对linux bash的封装，用于快速的执行组合命令。

#<fast-ps.sh>
ps命令的封装，shell的第一个参数是keyword用于ps的grep key。查找后会列出搜索结果并给出下标（从1开始），直接输入下标即可删除进程。

注意：下标输入只支持个位数，因为目标是为了快，输入一个字符就执行删除。

使用方法：

建议用alias重命名脚本，并加入到bash_profile中，这样即可以以命令的方式启动，例如：samps [args]
