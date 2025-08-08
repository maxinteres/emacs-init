# requirements 
## markdown配置
到官网下载pandoc，然后到init-tools.el配置markdown-command变量，指向pandoc.exe

## sbcl配置
去官网下载sbcl并加入环境变量，之后可以使用slime

## g++配置 

## python配置

### python
去官网下载python并加入环境变量，elpy会自动通过环境变量找到python.exe

### pylsp
和lsp结合，进行补全、查找定义等操作.

首先下载pylsp
```bash
pip install python-lsp-server[all]
```
确认安装成功
```bash
pip show python-lsp-server
```
然后找到你使用的python.exe的位置，替换到这个地方
```elisp
(setq lsp-pylsp-server-command 
        '("D:/miniconda3/envs/py311/python.exe" "-m" "pylsp"))
```
原配置自动关掉了一些无意义warning
