;; https://github.com/emacs-lsp/lsp-mode

(when (require 'lsp-mode nil t)
  ;; make sure we have lsp-imenu everywhere we have LSP
  ;; (require 'lsp-imenu)
  ;; (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)

  ;; XXX Cause error:
  ;;   /private/tmp: lsp-python TCP connection has exited (exited abnormally with code 1)
  (lsp-define-tcp-client lsp-python
                         "python"
                         (lambda () "/tmp")
                         '("/usr/bin/false")
                         "localhost"
                         12000)

  ;; (add-hook 'python-mode-hook #'lsp-python-enable)

  ;; lsp extras
  ;; (require 'lsp-ui)
  ;; (setq lsp-ui-sideline-ignore-duplicate t)
  ;; (add-hook 'lsp-mode-hook 'lsp-ui-mode)

  ;; (push 'company-lsp company-backends)
)
