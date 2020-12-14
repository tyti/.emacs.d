;; helm.init.el

(when (require 'helm-config nil t)
  ;; (helm-mode 1)
  (global-unset-key (kbd "C-x C-b"))
  (global-set-key (kbd "C-x C-b") 'helm-buffers-list)

  (when (require 'helm-files nil t)

    (define-key helm-map (kbd "C-h") 'delete-backward-char)

    (when (require 'helm-ag nil t)
      ;(custom-set-variables
      ; '(helm-ag-command-option "--ignore-dir migrations"))
      (global-set-key (kbd "C-c f") 'helm-ag)
      )
    )
  )
