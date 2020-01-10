(defun my/dired-open-file ()
  "In dired, open the file named on this line."
  (interactive)
  (let* ((file (dired-get-filename)))
    (message "Opening %s..." file)
    (call-process "open" nil 0 nil file) ))

(add-hook 'dired-mode-hook
  (lambda ()
    (define-key dired-mode-map (kbd "M-o") 'my/dired-open-file)
    (define-key dired-mode-map (kbd "^")
      (lambda () (interactive) (find-alternate-file "..")))
    (define-key dired-mode-map (kbd "C-o") nil)
  ))
