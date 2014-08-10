(require 'whitespace)

(setq whitespace-style '(face tabs tab-mark spaces space-mark))

;; Specify SPACE characters regexp
(setq whitespace-space-regexp "\\(\u3000+\\)")
(setq whitespace-display-mappings
          '((space-mark ?\x3000 [?\x30FB] )
            (tab-mark 9 [187 9] [92 9]) ))

(set-face-foreground 'whitespace-tab "cyan")
(set-face-background 'whitespace-tab 'nil)
(set-face-foreground 'whitespace-space "cyan")
(set-face-background 'whitespace-space nil)

(global-whitespace-mode 1)
