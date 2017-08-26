; --------
; file.el
; --------

;; disable backup
(setq make-backup-files nil)

;; disable auto-save
(setq auto-save-default nil)
(setq auto-save-list-file-prefix nil)

;; +x to executable script
(add-hook 'after-save-hook 'executable-make-buffer-file-executable-if-script-p)

;; encoding
(add-hook 'after-init-hook
    '(lambda()
       (prefer-coding-system 'utf-8-unix)
       (set-default-coding-systems 'utf-8-unix)
       (set-terminal-coding-system 'utf-8-unix)
       (set-keyboard-coding-system 'utf-8-unix)
       (set-buffer-file-coding-system 'utf-8-unix)
       ;; (setq default-buffer-file-coding-system 'utf-8-unix)
       ;; (set-clipboard-coding-system 'utf-8-unix)
       ;; (set-file-name-coding-system 'utf-8-unix)
       ))
