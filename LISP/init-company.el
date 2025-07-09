(global-company-mode t)
(setq company-minimum-prefix-length 2)
(setq company-idle-delay 0); company mode 默认选择上一条和下一条候选项命令 M-n M-p
(icomplete-mode t)
(icomplete-vertical-mode t);minibuffer提示	
(marginalia-mode t);C-h v/f时，显示各个变量/函数的详细信息
(provide 'init-company)
