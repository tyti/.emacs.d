;; https://github.com/emacs-lsp/lsp-mode

(defun my/lsp-client ()
  "search docker-compose.completion.yaml"
  ; XXX: test
  '("docker-compose -f ~/dockerfiles/pyls/docker-compose.yaml run --rm pyls")
  )

(when (require 'lsp-mode nil t)

  ;; make sure we have lsp-imenu everywhere we have LSP
  (require 'lsp-imenu)
  (add-hook 'lsp-after-open-hook 'lsp-enable-imenu)

  (lsp-define-stdio-client lsp-python "python"
                           #'projectile-project-root
                           'my/lsp-client)

  (require 'lsp-python)
  (add-hook 'python-mode-hook #'lsp-python-enable)

  ;; lsp extras
  (require 'lsp-ui)
  (setq lsp-ui-sideline-ignore-duplicate t)
  (add-hook 'lsp-mode-hook 'lsp-ui-mode)

  (push 'company-lsp company-backends)
)
