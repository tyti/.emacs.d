; --------------
; yasnippet
; --------------

(require 'yasnippet)

(custom-set-variables '(yas/snippet-dirs
                        (expand-file-name (concat user-emacs-directory "/etc/snippets"))
                        ))

(yas/global-mode 1)

;; helm inferface
;; reference: http://d.hatena.ne.jp/syohex/20121207/1354885367
(eval-after-load "helm-config"
  '(progn
     (defun my-yas/prompt (prompt choices &optional display-fn)
       (let* ((names (loop for choice in choices
                           collect (or (and display-fn (funcall display-fn choice))
                                       coice)))
              (selected (helm-other-buffer
                         `(((name . ,(format "%s" prompt))
                            (candidates . names)
                            (action . (("Insert snippet" . (lambda (arg) arg))))))
                         "*helm yas/prompt*")))
         (if selected
             (let ((n (position selected names :test 'equal)))
               (nth n choices))
           (signal 'quit "user quit!"))))
     (custom-set-variables '(yas/prompt-functions '(my-yas/prompt)))
     (global-set-key (kbd "C-c y") 'yas/insert-snippet)
     ))

(add-to-list 'auto-mode-alist '("\\.yasnippet$" . snippet-mode))

;-----------------------
; auto-insert #create file with template.yasnippet
;-----------------------
(auto-insert-mode t)
(eval-after-load "yasnippet"
  '(progn
     (custom-set-variables '(auto-insert-alist '(())))
     (dolist (mode '(html-mode
                     cperl-mode
                     java-mode
                     makefile-gmake-mode
                     sh-mode
                     snippet-mode
                     php-mode
                     python-mode))
       (define-auto-insert
         mode
         (lambda () (insert "template") (yas/expand)))) ))
