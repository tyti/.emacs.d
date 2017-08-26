;; inspired
;; - https://gist.github.com/nyergler/6100112
;; - https://github.com/bbatsov/projectile/blob/master/projectile.el
(defun parent-dir (path)
  (directory-file-name (file-name-directory (directory-file-name (expand-file-name path)))))

(defun search-project-dir (path)
  (if (equal path "/")
      nil
    (if (file-exists-p (expand-file-name ".git" (parent-dir path)))
        (parent-dir path)
      (search-project-dir (parent-dir path)))))


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
               (make-local-variable 'jedi:server-args)
               (set 'jedi:server-args
                     (list "--virtual-env" "~/.emacs.d/.python-environments/completion"))

               (make-local-variable 'project-root)
               (set 'project-dir (search-project-dir (buffer-file-name)))
               (when project-dir
                 (set 'jedi:server-args (append jedi:server-args (list "--sys-path" project-dir)))
                 )
               (jedi:setup)
               (add-to-list 'company-backends 'company-jedi) ; backendに追加
               ))
)
