;; view.init.el

;; hide menu bar
(menu-bar-mode 0)
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0) )

;; hide startup-message
(setq inhibit-startup-screen t)

;; default to better frame titles
(setq frame-title-format
  (concat  "%b - emacs@" (system-name)))

; color font
(when (fboundp 'global-font-lock-mode)
  (global-font-lock-mode t))

; mode-line
(setq-default mode-line-format
              '("-"
                mode-line-mule-info
                mode-line-modified
                mode-line-frame-identification
                mode-line-buffer-identification
                " "
                global-mode-string
                " %[("
                mode-name
                mode-line-process
                minor-mode-alist
                "%n" ")%]-"
                (which-func-mode ("" which-func-format "-"))
                (line-number-mode "L%l-")
                (-3 . "%p")
                "-%-") )

(setq mode-line-frame-identification " ")
