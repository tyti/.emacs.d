;; whitespace.el

(require 'whitespace)

(setq whitespace-style '(face tabs tab-mark spaces space-mark))

;; Specify SPACE characters regexp
(setq whitespace-space-regexp "\\(\u3000+\\)")
(setq whitespace-display-mappings
          '((space-mark ?\x3000 [?\x30FB] )
            (tab-mark 9 [187 9] [92 9]) ))

(global-whitespace-mode 1)

(add-hook 'before-save-hook 'delete-trailing-whitespace)
