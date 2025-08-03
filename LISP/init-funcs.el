;; -*- lexical-binding: t -*-
;; 快速打开配置文件
(defun open-init-file()
  (interactive)                     ;加了这一行才可以被调用
  (find-file "~/.emacs.d/init.el"))

(defun switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(defun fold-switch ()
  (interactive)
  (if (hs-already-hidden-p)
      (hs-show-block)
    (hs-hide-block)))

(defun insert-empty (&optional times)
  (interactive)
  (let ((count (if (numberp times) times 10)))
    (cl-dotimes (- count)
      (newline))))

(provide 'init-funcs)
