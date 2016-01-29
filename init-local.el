;;; package -- summary
;;; My customize-setup

;;(require 'monokai)
;;(load-theme 'monokai)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("◉" "►" "●" "○" "•"))

;; main window
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

(nyan-mode t)
(nyan-start-animation)
(setq nyan-wavy-trail t)

(setq org-agenda-files (quote ("~/org-notes" )))
(setq org-default-notes-file "~/org-notes/gtd.org")

(setq org-todo-keywords
 (quote
  ((sequence "TODO(t)" "STARTED(s)" "|" "DONE(d!/!)")
   (sequence "PROJECT(p)" "|" "DONE(d!/!)" "CANCELLED(c@/!)")
   (sequence "WAITING(w@/!)" "HOLD(h)" "|" "CANCELLED(c@/!)"))))

(setq org-capture-templates
      '(
        ("t" "Todos [#A]" entry (file+headline "~/org-notes/gtd.org" "Important & Urgent")
         "* TODO [#A] %?\n %i\n")
        ("d" "Daily [#B]" entry (file+headline "~/org-notes/gtd.org" "Daily tasks")
         "* TODO [#B] %?\n %i\n %t")
        ("p" "Plan [#B]" entry (file+headline "~/org-notes/gtd.org" "Important & !Urgent")
         "* TODO [#B] %?\n %i\n %U")
        ("l" "Long-term [#C]" entry (file+headline "~/org-notes/gtd.org" "Long-term")
         "* TODO [#C] %?\n %i\n %U")
        ))
(setq org-agenda-custom-commands
      '(
        ("wa" "Important & Urgent (DO)" tags-todo "+PRIORITY=\"A\"")
        ("wb" "Important & !Urgent (Plan)" tags-todo "-weekly-monthly-daily+PRIORITY=\"B\"")
        ("wc" "!Important & Urgent (Delegate)" tags-todo "+PRIORITY=\"C\"")
        ))

(provide 'init-local)
