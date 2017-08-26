(add-hook 'lisp-mode-hook
          '(lambda ()
             (local-set-key (kbd "C-j") 'eval-last-sexp)
             )
          )
