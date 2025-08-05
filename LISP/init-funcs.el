;; -*- lexical-binding: t -*-
;; 快速打开配置文件
(defun open-init-file()
  (interactive)                     ;加了这一行才可以被调用
  (find-file "~/.emacs.d/init.el"))

(defun switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(defun fold-switch ()
  "In hs-mode if present block is hidden show it ;if it is shown do the opposite"
  (interactive)
  (if (hs-already-hidden-p)
      (hs-show-block)
    (hs-hide-block)))

(defun insert-empty (times)
  "Insert 10 empty lines in default condition."
  (interactive (list (read-number "number of empty lines:" 10)))
  (cl-dotimes (- times)
    (newline)))

(provide 'init-funcs)
