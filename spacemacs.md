# Spacemacs Config

## Org-mode
```lisp
  (global-set-key [f12] 'org-html-export-to-html)
  (setq org-startup-indented t)
  (setq org-bullets-bullet-list '("◉" "►" "●" "○" "•"))
  (setq org-src-fontify-natively t)
  (with-eval-after-load 'org (org-babel-do-load-languages 'org-babel-load-languages '((python . t) (emacs-lisp . t))))
```

## Org-mode latex preview
```lisp
  (setq org-latex-preview-ltxpng-directory "~/temp/ltxpng")
  (with-eval-after-load 'org (setq org-format-latex-options (plist-put org-format-latex-options :scale 1.5)))
```
