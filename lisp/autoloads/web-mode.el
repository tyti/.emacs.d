
(when (require 'web-mode nil t)
  (add-to-list 'auto-mode-alist '("\\.html?\\'" . web-mode))
  ; (setq web-mode-enable-auto-closing t)
  (setq web-mode-enable-auto-pairing t)
)
