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

(when (require 'jedi nil t)
  (add-hook 'python-mode-hook 'jedi:setup)
  (setq jedi:complete-on-dot t)
)
