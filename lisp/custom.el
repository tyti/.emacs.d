;;
;; settings using customize interface
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-selection-wrap-around t)
 '(custom-enabled-themes '(modus-vivendi))
 '(epa-pinentry-mode 'loopback)
 '(epg-pinentry-mode 'loopback)
 '(eww-search-prefix "https://google.com/search?q=")
 '(global-font-lock-mode t)
 '(inhibit-startup-screen t)
 '(js-indent-level 2)
 '(package-selected-packages
   '(orderless undo-fu rg consult vertico markdown-mode eglot yaml-mode web-mode projectile magit hydra editorconfig docker csv-mode company ##))
 '(python-indent-guess-indent-offset-verbose nil)
 '(recentf-exclude
   '("/\\(\\(\\(COMMIT\\|NOTES\\|PULLREQ\\|MERGEREQ\\|TAG\\)_EDIT\\|MERGE_\\|\\)MSG\\|\\(BRANCH\\|EDIT\\)_DESCRIPTION\\)\\'" ".+\\.gpg"))
 '(recentf-max-saved-items 50)
 '(recentf-mode t)
 '(size-indication-mode t)
 '(vertico-mode t)
 '(xterm-mouse-mode nil))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(markdown-code-face ((t (:inherit modus-themes-fixed-pitch :extend t :background "gray0"))))
 '(region ((t (:extend t :background "steelblue" :foreground "#ffffff"))))
 '(whitespace-space ((t (:foreground "cyan"))))
 '(whitespace-tab ((t (:foreground "cyan")))))
