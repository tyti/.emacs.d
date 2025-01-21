;; C-u C-x eglot
(when (require 'eglot nil t)
  (add-to-list 'eglot-server-programs
               '(python-mode . ("localhost" 12000))
               ;; npm install -g typescript-language-server
               '((js-mode typescript-mode) . ("typescript-language-server" "--stdio"))
               )

  (add-hook 'js-mode-hook 'eglot-ensure)
  (add-hook 'typescript-mode-hook 'eglot-ensure)
  )
