;; -*- lexical-binding: t -*-
;;界面设置
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(modus-operandi-tinted))
 '(global-display-line-numbers-mode t)
 '(org-todo-keyword-faces '(("BUG" . "DeepYellow") ("WAIT" . "brown")))
 '(package-selected-packages
   '(company consult embark highlight-indentation ht marginalia pyvenv s
	     slime yasnippet))
 '(send-mail-function 'mailclient-send-it)
 '(tool-bar-mode nil))

(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(provide 'init-custom)
