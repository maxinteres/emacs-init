;; -*- lexical-binding: t -*-
;;c/c++
;;c/c++
(use-package eglot
  :ensure nil
  :hook               ; 自动挂钩到特定模式
  ((c-mode . eglot-ensure)
   (c++-mode . eglot-ensure))
  :config             ; 包加载后的配置
  (add-to-list 'eglot-server-programs
	       '((c++-mode c-mode) "clangd")))

(use-package lsp-mode
  :init
  (setq lsp-pylsp-server-command 
        '("D:/miniconda3/envs/py311/python.exe" "-m" "pylsp"))
  :config
  (setq lsp-pylsp-plugins-pycodestyle-enabled nil  ; 关闭 pycodestyle
	lsp-pylsp-plugins-pylint-enabled nil      ; 关闭 pylint
	lsp-pylsp-plugins-flake8-enabled nil
	lsp-pylsp-plugins-mccabe-enabled nil     ; 关闭 flake8
	lsp-pylsp-plugins-pydocstyle-enabled nil
	lsp-pylsp-plugins-autopep8-enabled nil  
        lsp-pylsp-plugins-yapf-enabled nil      
        lsp-pylsp-plugins-pylsp-mypy-enabled nil)
  :hook (python-mode . lsp))
;;cl
(use-package slime
  :ensure t
  :init
  (setq inferior-lisp-program "sbcl")
  (require 'slime-autoloads))

;;company icompany
(use-package company
  :ensure t
  :init
  (global-company-mode t)
  (setq company-global-modes '(not org-mode)) 
  :config
  (setq company-minimum-prefix-length 3)
  (setq company-idle-delay 0))

(use-package marginalia
  :ensure t
  :hook (after-init . marginalia-mode));C-h v/f时，显示各个变量/函数的详细信息
;;elpy
;C-c C-c (elpy-shell-send-region-or-buffer) 当前脚本运行
;C-RET (elpy-shell-send-statement-and-step) 执行当前行
;C-c C-z (elpy-shell-switch-to-shell) 在shell和脚本切换
;M-x run-python可以直接打开python repl
(use-package elpy
  :ensure t
  :init
  (elpy-enable)
  (setq max-specpdl-size 5000))  ; 默认是 1000，增加限制

;;markdown
(setq markdown-command "D:/home/pandoc-3.7.0.2/pandoc.exe")

;;使用M-.进行代码中的定义跳转
;;项目文件夹边栏
(use-package dired-subtree
  :ensure t
  :after dired
  :bind (:map dired-mode-map
              ("<tab>" . dired-subtree-toggle)))

(use-package dired-sidebar
  :ensure t
  :after prog-mode 
  :bind (("C-d" . dired-sidebar-toggle-sidebar)))

(provide 'init-tools)

