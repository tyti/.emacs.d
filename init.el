(defun my/abspath (path)
  (expand-file-name path user-emacs-directory))

(setq custom-file (my/abspath "lisp/custom.el"))
(load (my/abspath "lisp/custom.el"))

;;
;; package
;;
(require 'package)

;; (setq package-user-dir (my/abspath "packages"))

;; MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

; (package-refresh-contents)
(package-initialize)

(dolist (package '(
                   company
                   company-jedi
                   editorconfig
                   flycheck
                   helm
                   helm-ag
                   jedi-core
                   magit
                   redo+
                   smartrep
                   sphinx-doc
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
