;; helm.init.el

(when (require 'helm-config nil t)
  ;; (helm-mode 1)
  ;; replace command
  (global-unset-key (kbd "M-y"))
  (global-set-key (kbd "M-y") 'helm-show-kill-ring)

  (global-unset-key (kbd "M-x"))
  (global-set-key (kbd "M-x") 'helm-M-x)

  (global-unset-key (kbd "C-x C-b"))
  (global-set-key (kbd "C-x C-b") 'helm-buffers-list)

  (global-set-key (kbd "C-c r") 'helm-recentf)

  (global-unset-key (kbd "C-x r m"))
  (global-unset-key (kbd "C-x r l"))
  (global-set-key (kbd "C-x r l") 'helm-bookmarks)

  (when (require 'helm-files nil t)
    (when (require 'helm-ag nil t)
      ;(custom-set-variables
      ; '(helm-ag-command-option "--ignore-dir migrations"))
      (global-set-key (kbd "C-c f") 'helm-ag)
      )
    )
  )
