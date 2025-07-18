;; -*- lexical-binding: t -*-
(global-set-key (kbd "<f2>") 'open-init-file)
(global-set-key (kbd "C-h C-f") 'find-function)
(global-set-key (kbd "C-h C-v") 'find-variable)
(global-set-key (kbd "C-c z") 'undo)
(global-set-key (kbd "C-`") 'switch-to-scratch)
(global-set-key (kbd "C-;") 'embark-act)
(global-set-key (kbd "C-c C-r") 'replace-string)
(global-set-key (kbd "C-c p f") 'project-find-file)
(with-eval-after-load 'hideshow
  (define-key hs-minor-mode-map (kbd "C-<tab>") 'fold-switch))

(provide 'init-keybindings)
