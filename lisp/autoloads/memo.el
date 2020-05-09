;=====================
; memo.init.el
;=====================
(defun create-note-file ()
  "create note file"
  (interactive)

  (when (not (getenv "TEXT_DIR"))
    (error "TEXT_DIR environmental variable is not defined."))
  (when (not (file-directory-p (getenv "TEXT_DIR")))
    (error "TEXT_DIR %s is not exists."))

  (setq text-dir (file-name-as-directory (getenv "TEXT_DIR")))
  (shell-command
   (concat "mkdir -p " (concat text-dir "note/" (format-time-string "%Y/%m/%d"))))

  (find-file (concat (concat text-dir "note/" (format-time-string "%Y/%m/%d/%H%M%S") ".txt")))
 )

(global-set-key (kbd "C-c m") 'create-note-file)

(defun search-text-dir()
  "search text-dir"
  (interactive)
  (when (not (getenv "TEXT_DIR"))
    (error "TEXT_DIR environmental variable is not defined."))
  (when (not (file-directory-p (getenv "TEXT_DIR")))
    (error "TEXT_DIR %s is not exists."))

  (grep-find
    (format "ag --nocolor --nogroup -- '%s' %s"
            (read-from-minibuffer "words: "
                                  ""
                                  nil
                                  nil
                                  'grep-find-history)
            (getenv "TEXT_DIR")))
  )

(global-set-key (kbd "C-c M") 'search-text-dir)
