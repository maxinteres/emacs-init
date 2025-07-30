;; -*- lexical-binding: t -*-
;;c/c++
(use-package eglot
  :ensure nil
  :hook               ; 自动挂钩到特定模式
  ((c-mode . eglot-ensure)
   (c++-mode . eglot-ensure))
  :config             ; 包加载后的配置
  (add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd")))

;;cl
(setq inferior-lisp-program "sbcl")
(require 'slime-autoloads)

;;company icompany
(use-package company
  :init
  (global-company-mode t)
  (setq company-global-modes '(not org-mode)) 
  :config
  (setq company-minimum-prefix-length 3)
  (setq company-idle-delay 0))

(use-package marginalia
  :hook (after-init . marginalia-mode));C-h v/f时，显示各个变量/函数的详细信息

;;scheme


;;elpy
(use-package elpy
  :ensure t
  :init
  (elpy-enable))
(setq max-specpdl-size 5000)  ; 默认是 1000，增加限制

;;C-c C-c (elpy-shell-send-region-or-buffer) 当前脚本运行
;;C-RET (elpy-shell-send-statement-and-step) 执行当前行
;;C-c C-z (elpy-shell-switch-to-shell) 在shell和脚本切换
;;M-x run-python可以直接打开python repl

(provide 'init-tools)

