# tool_shell
一些有用的脚本,Makefile,latex模板

mod_name.sh: 脚本
You need change the FILE_TYPE in mod_name.sh, the default is '.txt'
You can change it in '.pdf'
修改变量名，去掉所有空格

ieee_latex_template: 模板+makefile
There are a ieee paper template and I also give the Makefile. readme.txt will
give some information about how to use it.

find: 脚本
	用来在大量源码中找到某个符号
	用法： 
		修改FIND_SYM
		./find >> your_sym_result 即可
		your_sym_result中会给出文件名，${FIND_SYM}出现的行和内容




