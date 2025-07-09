;; -*- lexical-binding: t -*-
(setq use-package-always-ensure t)
(add-to-list 'load-path (expand-file-name "LISP" user-emacs-directory))
;;镜像源
(use-package init-packages :ensure nil)
;;若不包含，下载
(setq package-selected-packages
      '(quickrun marginalia icomplete-vertical ht embark dash consult compat company embark-consult slime))
(when (cl-set-difference package-selected-packages package-activated-list)
  (package-refresh-contents)
  (mapc #'package-install (cl-set-difference package-selected-packages package-activated-list)))


;; 界面以及光标设置
(setq custom-file (expand-file-name "LISP/init-custom.el" user-emacs-directory))
(when (file-exists-p custom-file)
  (load custom-file))
;;c/c++
(use-package init-c :ensure nil)
;;dired设置
(use-package init-dired :ensure nil)
;;company设定
(use-package init-company :ensure nil)
;;快捷键
(use-package init-keybindings :ensure nil)
;;cl
(use-package init-cl :ensure nil)
;;

(cd "~/")

