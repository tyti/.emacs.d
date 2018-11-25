(defun my/abspath (path)
  (expand-file-name path user-emacs-directory))

(setq custom-file (my/abspath "lisp/custom.el"))
(load (my/abspath "lisp/custom.el"))

;; redo+ removed from melpa
;; ref: https://github.com/melpa/melpa/pull/5385
(load (my/abspath "lisp/redo+.el"))

;;
;; package
;;
(require 'package)

;; MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)

; (package-refresh-contents)

(dolist (package '(
                   company
                   company-lsp
                   editorconfig
                   eglot
                   helm
                   helm-ag
                   lsp-mode
                   lsp-python
                   lsp-ui
                   magit
                   projectile
                   smartrep
                   web-mode
                   yaml-mode
                   ))
  (package-install package)
  )

;;
;; load configulation scripts
;;
(let ((autoloads (my/abspath "lisp/autoloads"))
      )
  (dolist (file (directory-files autoloads))
     (when (string-match "^\\(.*\\)\\.el$" file)
       (load (expand-file-name file autoloads))
       )))

;; envionment specific
(when (eq system-type 'darwin)
  (load (my/abspath "lisp/mac.el")) )
