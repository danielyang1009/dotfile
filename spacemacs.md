# Spacemacs Config

```lisp
  (global-set-key [f12] 'org-html-export-to-html)
  (setq org-startup-indented t)
  (setq org-bullets-bullet-list '("◉" "►" "●" "○" "•"))
  (setq org-src-fontify-natively t)
  (with-eval-after-load 'org (org-babel-do-load-languages 'org-babel-load-languages '((python . t) (emacs-lisp . t))))
```
