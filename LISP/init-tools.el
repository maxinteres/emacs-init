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
  :config
  (setq company-minimum-prefix-length 2)
  (setq company-idle-delay 0))

(use-package marginalia
  :hook (after-init . marginalia-mode));C-h v/f时，显示各个变量/函数的详细信息

(provide 'init-tools)

