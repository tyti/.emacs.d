(defun my/abspath (path)
  (expand-file-name path user-emacs-directory))

(setq custom-file (my/abspath "lisp/custom.el"))
(load (my/abspath "lisp/custom.el"))


;;
;; package
;;
(require 'package)

;; MELPA
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)

(package-initialize)
; (package-refresh-contents)
(package-install-selected-packages)


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

(when (eq system-type 'gnu/linux)
  (if (file-exists-p "/mnt/C")
    (load (my/abspath "lisp/wsl.el"))
    (load (my/abspath "lisp/linux.el"))
    )
  )
