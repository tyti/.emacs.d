(when (require 'magit nil t)
  (global-unset-key (kbd "C-c g"))
  (global-set-key (kbd "C-c g") 'magit-status)
)
