;; linux

(defun copy-from-linux ()
  (shell-command-to-string "xsel --clipboard -o"))

(defun paste-to-linux (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "xsel" "*Messages*" "xsel" "--clipboard" "-i")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-paste-function 'copy-from-linux)
(setq interprogram-cut-function 'paste-to-linux)
