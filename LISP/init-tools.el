;;c/c++
(require 'eglot)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) "clangd"))
(add-hook 'c-mode-hook #'eglot-ensure)
(add-hook 'c++-mode-hook #'eglot-ensure)

(use-package quickrun
  :ensure t
  :commands (quickrun)
  :init
  (quickrun-add-command "c++/c1z"
    '((:command . "g++")
      (:exec . ("%c -std=c++1z %o -o %e %s"
                "%e %a"))
      (:remove . ("%e")))
    :default "c++"))

;;cl
(setq inferior-lisp-program "sbcl")

;;company icompany
(global-company-mode t)
(setq company-minimum-prefix-length 2)
(setq company-idle-delay 0); company mode 默认选择上一条和下一条候选项命令 M-n M-p
(icomplete-mode t)
(icomplete-vertical-mode t);minibuffer提示	
(marginalia-mode t);C-h v/f时，显示各个变量/函数的详细信息

(provide 'init-tools)

