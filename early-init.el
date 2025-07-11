;; -*- lexical-binding: t -*-
(setq gc-cons-threshold most-positive-fixnum)

;;让鼠标滚动更好用
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1) ((control) . nil)))
(setq mouse-wheel-progressive-speed nil)

(add-to-list 'default-frame-alist '(width . 150))
(add-to-list 'default-frame-alist '(height . 40))
(add-to-list 'initial-frame-alist '(width . 150))
(add-to-list 'initial-frame-alist '(height . 40))

