(when (require 'orderless nil t)
  (setq completion-styles '(orderless basic)
        completion-category-overrides '((file (styles basic partial-completion))))
)
