;(when (> emacs-major-version 23)
;  (defvar user-emacs-directory "~/.emacs.d"))


;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

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
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(auto-insert-alist (quote (nil)))
 '(package-selected-packages
   (quote
    (company-jedi yasnippet web-mode use-package smex smartparens redo+ projectile prodigy php-mode pallet nyan-mode multiple-cursors magit idle-highlight-mode htmlize helm-ag flycheck-color-mode-line flycheck-cask expand-region exec-path-from-shell drag-stuff company)))
 '(recentf-save-file
   (expand-file-name ".recentf"
                     (concat user-emacs-directory "/var")))
 '(yas-prompt-functions (quote (my-yas/prompt)))
 '(yas-snippet-dirs
   (expand-file-name
    (concat user-emacs-directory "/etc/snippets"))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
