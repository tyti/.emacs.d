; --------
; edit.el
; --------
(setq kill-whole-line t)

;; highlight parenthesis
(show-paren-mode t)

;; swap copy and cut
(global-set-key (kbd "C-w") 'kill-ring-save)
(global-set-key (kbd "M-w") 'kill-region)

;; highlight region
(setq transient-mark-mode t)

;; backup file
(setq make-backup-files t)
(setq backup-directory-alist
      (cons (cons "\\.*$" (expand-file-name (concat user-emacs-directory "/var/backup")))
            backup-directory-alist))

;; disable auto-save
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)

;; +x to executable script
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

(put 'upcase-region 'disabled nil)
(put 'narrow-to-region 'disabled nil)

;; default to unified diffs
(setq diff-switches "-u")

(setq-default tab-width 2)
(setq-default indent-tabs-mode nil)

;; recentf
(recentf-mode t)
(custom-set-variables '(recentf-save-file
                        (expand-file-name ".recentf" (concat user-emacs-directory "/var"))
                        ))

;; ^M = C-q C-M
;; RET = C-q C-j
(defun replace-M-to-return ()
  (interactive)
  (query-replace "\r" "\n"))
