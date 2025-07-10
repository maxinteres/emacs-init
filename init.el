;; -*- lexical-binding: t -*-
(setq use-package-always-ensure t)
(add-to-list 'load-path (expand-file-name "LISP" user-emacs-directory))
;;镜像源
(use-package init-packages :ensure nil)
;;若不包含，下载
(setq package-selected-packages
      '(quickrun marginalia icomplete-vertical ht embark dash consult compat company embark-consult slime elpy))
(when (cl-set-difference package-selected-packages package-activated-list)
  (package-refresh-contents)
  (mapc #'package-install (cl-set-difference package-selected-packages package-activated-list)))

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


(cd "D:/") 
(find-file "todo.org")


