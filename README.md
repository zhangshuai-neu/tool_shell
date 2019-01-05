# tool_shell
一些有用的脚本,Makefile,latex模板

#### mod_name.sh: 脚本

You need change the FILE_TYPE in mod_name.sh, the default is '.txt'

You can change it in '.pdf'

修改变量名，去掉所有空格

#### ieee_latex_template: 模板+makefile
There are a ieee paper template and I also give the Makefile. readme.txt will
give some information about how to use it.

#### find.sh:脚本
用来在大量源码文件中找到某个符号, 默认检查.c和.h，可自行修改以检查其他文件

用法：

1)修改FIND_SYM

	./find >> your_sym_result 即可
	your_sym_result中会给出文件名，${FIND_SYM}出现的行和内容
	
2)修改以下两行，能够检测不同的后缀文件

	ls -1 |grep .h > name_list;
	s -1 |grep .c >> name_list;

#### count_code_line.sh:脚本

递归统计文件行数，未指定文件的类型，所以可能会统计一些不必要的内容


