;; -*- lexical-binding: t -*-
(setq inhibit-startup-message t)  ; 禁用启动消息

(setq initial-scratch-message nil) ; 清空*scratch*缓冲区初始内容

(setq inhibit-startup-screen t);关闭欢迎界面

(setq-default cursor-type 'bar);鼠标设置

(setq tab-always-indent 'complete)

;;鼠标滚动
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(electric-pair-mode t)

(setq ring-bell-function 'ignore)

(fset 'yes-or-no-p 'y-or-n-p)
(icomplete-vertical-mode t);minibuffer提示

(add-hook 'prog-mode-hook 'hs-minor-mode)  ; 对所有编程模式启用

(provide 'init-basic)
