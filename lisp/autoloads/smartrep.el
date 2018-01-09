
(when (require 'smartrep nil t)
  (global-unset-key (kbd "C-q"))
  (smartrep-define-key
   global-map "C-q" '(("n" . 'scroll-up)
                      ("p" . 'scroll-down)
                      ("f" . 'forward-word)
                      ("b" . 'backward-word)
                      ("C-h" . 'backward-kill-word)
                      ("x" . 'helm-M-x)
                      )))
