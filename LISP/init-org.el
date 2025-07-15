;; -*- lexical-binding: t -*-
(require 'org-tempo)
(setq org-startup-folded 'fold)
(setq org-todo-keywords '(
			  (sequence "TODO(t)" "WAIT(w)" "BUG(g)" "|" "FIXED(f)" "DONE(d)")))
(setq org-todo-keyword-faces '(("BUG" . "tomato")
			       ("WAIT" . "cornflower blue")))

(provide 'init-org)
