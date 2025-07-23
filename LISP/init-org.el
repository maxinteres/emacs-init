;; -*- lexical-binding: t -*-
(add-hook 'org-mode-hook (lambda () (setq truncate-lines nil)))
(add-hook 'org-mode-hook (lambda () (company-mode -1)))
(require 'org-tempo)
(setq org-startup-folded 'fold)
(setq org-todo-keywords '((sequence "TODO(t)" "WAIT(w)" "BUG(g)" "TRY(y)" "SUS(s)""|" "FIXED(f)" "FAILED(l)" "DONE(d)")))
(setq org-todo-keyword-faces '(("BUG" . "tomato")
			       ("WAIT" . "cornflower blue")
			       ("TRY" . "royal blue")
			       ("FAILED" . "chocolate")
			       ("SUS" . "CHOColate")))

(provide 'init-org)
