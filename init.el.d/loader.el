(require 'cask)
(cask-initialize)

(require 'pallet)

(when (require 'redo+ nil t)
  (global-set-key (kbd "C-^") 'redo)
  (setq undo-no-redo t))

(load "popwin.init" t)
(load "helm.init" t)
(load "auto-complete.init" t)
(load "edit.init" t)
(load "view.init" t)

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

