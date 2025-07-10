(setq inhibit-startup-screen t)
(setq-default cursor-type 'bar)
(setq tab-always-indent 'complete)
;;鼠标滚动
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)
(electric-pair-mode t)
(provide 'init-basic)
