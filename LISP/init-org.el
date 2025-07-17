;; -*- lexical-binding: t -*-
(require 'org-tempo)
(setq org-startup-folded 'fold)
(setq org-todo-keywords '(
			  (sequence "TODO(t)" "WAIT(w)" "BUG(g)" "TRY(y)" "|" "FIXED(f)" "FAILED(l)" "DONE(d)")))
(setq org-todo-keyword-faces '(("BUG" . "tomato")
			       ("WAIT" . "cornflower blue")
			       ("TRY" . "royal blue")
			       ("FAILED" . "chocolate")))

(provide 'init-org)
