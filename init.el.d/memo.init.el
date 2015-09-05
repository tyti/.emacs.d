;=====================
; web storage notebook
;=====================
(setq webstorage-directory "~/Copy/text")
(setq notebook-directory "~/Copy/text/note")

(defun web-storage-notebook-open-new-file ()
  "open a new notebook"
  (interactive)
  (when (not (file-directory-p
              (concat notebook-directory
                      (format-time-string "/%Y" (current-time)) )))
    (make-directory (concat notebook-directory (format-time-string "/%Y"))) )


  (when (not (file-directory-p (concat notebook-directory
                                       (format-time-string "/%Y/%m"))))
    (make-directory (concat notebook-directory (format-time-string "/%Y/%m"))))
  (when (not (file-directory-p (concat notebook-directory
                                       (format-time-string "/%Y/%m/%d"))))
    (make-directory (concat notebook-directory (format-time-string "/%Y/%m/%d"))))

  (find-file (concat notebook-directory (format-time-string "/%Y/%m/%d/%H%M%S") ".txt")))

(global-set-key (kbd "C-c m") 'web-storage-notebook-open-new-file)

(defun web-storage-notebook-open-notebook-dir ()
  "open the notebook dir"
  (interactive)
  (dired notebook-directory))

(defun web-storage-search()
  "search words in notebook"
  (interactive)
  (grep-find
    (format "ag --nocolor --nogroup -- %s %s"
            (read-from-minibuffer "words: "
                                  ""
                                  nil
                                  nil
                                  'grep-find-history)
            webstorage-directory)
    ))

(global-set-key (kbd "C-c M") 'web-storage-search)
