;-----------------------
; auto-complete
;-----------------------

(when (require 'auto-complete-config nil t)
  ;; needs to create symlink from auto-complete/dict
  (add-to-list 'ac-dictionary-directories 
               (expand-file-name (concat user-emacs-directory "/etc/ac-dict")))
  (add-to-list 'ac-modes 'markdown-mode)
  (setq ac-comphist-file 
        (expand-file-name (concat user-emacs-directory "/var/ac-comphist.dat")))
  (setq ac-ignore-case nil)
  (define-key ac-mode-map (kbd "M-TAB") 'auto-complete)
  (define-key ac-complete-mode-map (kbd "C-n") 'ac-next)
  (define-key ac-complete-mode-map (kbd "C-p") 'ac-previous)
  (define-key ac-complete-mode-map (kbd "C-f") 'ac-complete)
  ; popup color
  (custom-set-faces
    '(ac-candidate-face ((t (:background "white" :foreground "black"))))
    '(ac-selection-face ((t (:background "cyan" :foreground "black")))) )
  (ac-config-default) )
