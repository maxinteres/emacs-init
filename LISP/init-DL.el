;;若不包含，下载
(setq package-selected-packages
      '(marginalia icomplete-vertical ht embark dash consult compat company embark-consult slime elpy))
(when (cl-set-difference package-selected-packages package-activated-list)
  (package-refresh-contents)
  (mapc #'package-install (cl-set-difference package-selected-packages package-activated-list)))
