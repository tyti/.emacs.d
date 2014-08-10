;; popwin.init.el

(when (require 'popwin)
  (setq display-buffer-function 'popwin:display-buffer)
  (eval-after-load "helm"
    '(progn
       (setq helm-samewindow nil)
       (setq popwin:special-display-config '(("*compilatoin*" :noselect t)
                                        ("helm" :regexp t :height 0.4)
                                        ))
       (message "eval helm popwin")
       )))
