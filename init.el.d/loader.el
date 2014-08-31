;; loader.el

(require 'cask)
(cask-initialize)

;; sync package and Cask
(require 'pallet)

(when (require 'redo+ nil t)
  (global-set-key (kbd "C-^") 'redo)
  (setq undo-no-redo t))

;; load *.init.el in init.el.d
(let ( (init-file-dir (concat user-emacs-directory "init.el.d/")) )
   (dolist (file (directory-files init-file-dir))
     (when (string-match "^\\(.*\\)\\.init\\.\\(el\\)$" file)
       (load (concat init-file-dir file) t)
       )))

;; env
(when (or (eq system-type 'cygwin)
    (eq system-type 'windows-nt)
    (featurep 'meadow) )
  (load "win" t))

(when (eq system-type 'darwin)
  (load "mac" t))

(when (eq system-type 'gnu/linux)
  (load "linux" t))

;; not display error message
;(setq debug-on-error nil)
