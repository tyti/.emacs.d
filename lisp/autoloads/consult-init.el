;; consult-init.el

(when (require 'consult nil t)
  (global-unset-key (kbd "C-x C-b"))
  (global-set-key (kbd "C-x C-b") 'consult-buffer)

  (when (require 'consult-ag nil t)
    (global-set-key (kbd "C-c f") 'consult-ripgrep)
    )
  )
