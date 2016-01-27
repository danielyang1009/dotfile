;;; package -- summary
;;; My customize-setup
(setq org-agenda-files (quote ("~/org-notes" )))
(setq org-default-notes-file "~/org-notes/gtd.org")

(setq org-capture-templates
      '(
        ("t" "Todos [#A]" entry (file+headline "~/org-notes/gtd.org" "Important & Urgent")
         "* TODO [#A] %?\n %i\n")
        ("d" "Daily [#B]" entry (file+headline "~/org-notes/gtd.org" "Daily tasks")
         "* TODO [#B] %?\n %i\n %t")
        ("n" "Notes [#C]" entry (file+headline "~/org-notes/gtd.org" "Notes")
         "* TODO [#C] %?\n %i\n %U")
        ))
(setq org-agenda-custom-commands
      '(
        ("wa" "Important & Urgent (DO)" tags-todo "+PRIORITY=\"A\"")
        ("wb" "Important & !Urgent (Plan)" tags-todo "-weekly-monthly-daily+PRIORITY=\"B\"")
        ("wc" "!Important & Urgent (Delegate)" tags-todo "+PRIORITY=\"C\"")
        ))

(provide 'init-local)
