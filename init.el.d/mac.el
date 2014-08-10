(global-set-key (kbd "C-h") 'delete-backward-char)

;(mac-key-mode 1) 

(defun copy-from-osx ()
  (shell-command-to-string "pbpaste"))

(defun paste-to-osx (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "pbcopy" "*Messages*" "pbcopy")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-paste-function 'copy-from-osx)
(setq interprogram-cut-function 'paste-to-osx)
