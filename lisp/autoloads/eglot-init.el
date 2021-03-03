;; C-u C-x eglot
(when (require 'eglot nil t)
  (add-to-list 'eglot-server-programs
               '(python-mode . ("localhost" 12000))
               )
  )
