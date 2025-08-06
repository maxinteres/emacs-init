;; -*- lexical-binding: t -*-
(setq use-package-always-ensure t)
(add-to-list 'load-path (expand-file-name "LISP" user-emacs-directory))
;;镜像源
(require 'init-packages)
;; 界面以及光标设置
(setq custom-file "~/.emacs.d/LISP/init-custom.el")
(load custom-file)
;;基础设置
(require 'init-basic)
;;all-tools
(require 'init-tools)
;;dired设置
(require 'init-dired)
;;
(require 'init-funcs) 
;;快捷键
(require 'init-keybindings)
;;org
(require 'init-org)

(add-hook 'emacs-startup-hook
          (lambda ()
            (run-with-timer 3 nil (lambda ()
				    (cd "~/.emacs.d/") 
				    (find-file "todo/todo.org")))));;开机延迟启动
                                  
