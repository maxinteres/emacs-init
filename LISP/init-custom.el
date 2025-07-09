;;界面设置
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-save-file-name-transforms '((".*" "~/.emacs.d/autosaves/" t)))
 '(backup-directory-alist '((".*" . "~/.emacs.d/backups/")))
 '(custom-enabled-themes '(modus-operandi-tinted))
 '(global-display-line-numbers-mode t)
 '(package-selected-packages
   '(company consult embark icomplete-vertical marginalia quickrun slime))
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(setq inhibit-startup-screen t)
(setq-default cursor-type 'bar)
(setq tab-always-indent 'complete)
;;鼠标滚动
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(provide 'init-custom)
