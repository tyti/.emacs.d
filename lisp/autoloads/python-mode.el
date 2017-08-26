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
               (setq jedi:server-args
                     '("--virtual-env" "~/.emacs.d/.python-environments/completion"))
               (jedi:setup)
               (add-to-list 'company-backends 'company-jedi) ; backendに追加
               ))

)
