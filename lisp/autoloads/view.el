;; ---------
;; view.el
;; ---------
;; hide menu bar
(menu-bar-mode 0)
(when window-system
  (tool-bar-mode 0)
  (scroll-bar-mode 0) )

;; default to better frame titles
(setq frame-title-format
  (concat  "%b - emacs@" (system-name)))

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
                ;; minor-mode-alist
                "%n" ")%]-"
                (which-func-mode ("" which-func-format "-"))
                (line-number-mode "L%l-")
                (-3 . "%p")
                "-%-") )

(setq mode-line-frame-identification " ")


(defun adjust-window-width-80 ()
  (interactive)
  (when (> (frame-width) 80)
    (enlarge-window-horizontally (- 79 (window-width)))
  )
)
(global-set-key (kbd "C-c l") 'adjust-window-width-80)
