;; 快速打开配置文件
(defun open-init-file()
  (interactive)                     ;加了这一行才可以被调用
  (find-file "~/.emacs.d/init.el"))
(defun switch-to-scratch ()
  (interactive)
  (switch-to-buffer "*scratch*"))

(provide 'init-funcs)
