;; -*- lexical-binding: t -*-
(use-package dired-subtree
  :bind (:map dired-mode-map
              ("<TAB>" . dired-subtree-toggle)))

(add-hook 'dired-mode-hook 'dired-hide-details-mode)
(setq dired-recursive-deletes 'always)
(setq dired-recursive-copies 'always)

(provide 'init-dired)
