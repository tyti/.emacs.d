(require 'company)
(global-company-mode)
;(setq company-idle-delay 0) ; default 0.5
;(setq company-minimum-prefix-length 2) ; default 4
(setq company-selection-wrap-around t)

(define-key company-active-map (kbd "M-n") nil)
(define-key company-active-map (kbd "M-p") nil)
(define-key company-active-map (kbd "C-n") 'company-select-next)
(define-key company-active-map (kbd "C-p") 'company-select-previous)
(define-key company-active-map (kbd "C-h") nil)
