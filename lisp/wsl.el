;; wsl.el

(defun copy-from-win ()
  (shell-command-to-string "win32yank.exe -o"))

(defun paste-to-win (text &optional push)
  (let ((process-connection-type nil))
    (let ((proc (start-process "win32yank.exe" "*Messages*" "win32yank.exe" "-i")))
      (process-send-string proc text)
      (process-send-eof proc))))

(setq interprogram-paste-function 'copy-from-win)
(setq interprogram-cut-function 'paste-to-win)
