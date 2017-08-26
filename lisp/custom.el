;;
;; settings using customize interface
;;
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(company-selection-wrap-around t)
 '(custom-enabled-themes (quote (tsdh-dark)))
 '(global-font-lock-mode t)
 '(inhibit-startup-screen t)
 '(package-selected-packages
   (quote
    (jedi-core company-jedi flycheck helm-ag redo+ magit helm company)))
 '(recentf-max-saved-items 50)
 '(recentf-mode t)
 '(size-indication-mode t))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(whitespace-space ((t (:foreground "cyan"))))
 '(whitespace-tab ((t (:foreground "cyan")))))
