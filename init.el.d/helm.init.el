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

  ;; helm command
  ;(global-set-key (kbd "C-c h") 'helm-command-prefix)

  ;(define-key helm-command-prefix (kbd "y") 'helm-show-kill-ring)
  ;(define-key helm-command-prefix (kbd "x") 'helm-M-x)
  ;(define-key helm-command-prefix (kbd "m") 'helm-mini)

  (when (require 'helm-files nil t)
    (when (require 'helm-ag nil t)
      (global-set-key (kbd "C-c f") 'helm-ag)
      )
    )
  )
