;; -*- lexical-binding: t -*-
(use-package dired-subtree
  :after dired
  :bind (:map dired-mode-map
              ("<tab>" . dired-subtree-toggle)))

(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(provide 'init-dired)
