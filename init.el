;(when (> emacs-major-version 23)
;  (defvar user-emacs-directory "~/.emacs.d"))

(defvar user-emacs-directory "~/.emacs.d")

(defun add-to-load-path (path)
  (add-to-list 'load-path (concat user-emacs-directory path)))

(add-to-load-path "init.el.d")
(add-to-list 'load-path "~/.cask/")


(load "loader" t)

; set encoding-systems
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
(put 'downcase-region 'disabled nil)
