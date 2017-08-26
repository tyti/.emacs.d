(when (require 'flycheck-color-mode-line nil t)
  (eval-after-load "flycheck"
    '(add-hook 'flycheck-mode-hook 'flycheck-color-mode-line-mode))
  )
