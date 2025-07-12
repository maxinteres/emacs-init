(setq inhibit-startup-screen t)
(setq-default cursor-type 'bar)
(setq tab-always-indent 'complete)
;;鼠标滚动
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
(electric-pair-mode t)
(setq ring-bell-function 'ignore)
(icomplete-vertical-mode t);minibuffer提示
(add-hook 'prog-mode-hook 'hs-minor-mode)  ; 对所有编程模式启用
(provide 'init-basic)
