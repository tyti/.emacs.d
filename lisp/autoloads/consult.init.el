;; consult-init.el

(when (require 'consult nil t)
  (global-set-key (kbd "C-c f") 'consult-ripgrep)
  )
