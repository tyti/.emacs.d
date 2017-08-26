

(defun run-as-script ()
  (interactive)
  (shell-command buffer-file-name))

(add-hook 'python-mode-hook
          '(lambda ()
             ;; enable flake8
             (flycheck-mode t)
             (local-set-key (kbd "C-c c") 'run-as-script)
             )
          )

(when (require 'jedi-core nil t)
  (setq jedi:complete-on-dot t)
  (setq jedi:use-shortcuts t)

  (add-hook 'python-mode-hook
            '(lambda()
               ;; sphinx-doc
               (require 'sphinx-doc)
               (sphinx-doc-mode t)

               ;; jedi
               (make-local-variable 'jedi:server-args)
               (set 'jedi:server-args
                     (list "--virtual-env" "~/.emacs.d/.python-environments/completion"))

               (make-local-variable 'project-root)
               (set 'project-dir (vc-find-root (buffer-file-name) ".git"))
               (when project-dir
                 (set 'jedi:server-args (append jedi:server-args (list "--sys-path" project-dir)))
                 )
               (jedi:setup)
               (add-to-list 'company-backends 'company-jedi) ; backendに追加
               ))
)
