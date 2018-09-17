
; eww-search-words
(global-unset-key (kbd "M-s M-w"))

(add-hook 'eww-mode-hook
  (lambda ()
    (define-key eww-mode-map "l" 'eww-list-bookmarks)
    (define-key eww-mode-map "L" 'eww-add-bookmark)
    (define-key eww-mode-map "n" nil)
    (define-key eww-mode-map "p" nil)
    (define-key eww-mode-map "b" 'eww-back-url)
    (define-key eww-mode-map "f" 'eww-forward-url)
  ))
