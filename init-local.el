;;; package -- summary
;;; My customize-setup

;;(require 'monokai)
;;(load-theme 'monokai)

;; main window
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; nyan-mode
(nyan-mode t)
(nyan-start-animation)
(setq nyan-wavy-trail t)

;; recentf
(require 'recentf)
(setq recentf-max-saved-items 50
      recentf-max-menu-items 10)
(recentf-mode t)

(defun recentf-ido-find-file ()
  "Find a recent file using ido."
  (interactive)
  (let ((file (ido-completing-read "Choose recent file: " recentf-list nil t)))
    (when file
      (find-file file))))

(global-set-key (kbd "C-c f") 'recentf-ido-find-file)

;; org-mode
(setq org-startup-indented t)
(setq org-indent-mode t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("◉" "►" "●" "○" "•"))

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
         "* TODO [#A] %?\n %i\n"
         :empty-lines 1)
        ("d" "Daily [#B]" entry (file+headline "~/org-notes/gtd.org" "Daily tasks")
         "* TODO [#B] %?\n %i\n %t"
         :empty-lines 1)
        ("p" "Plan [#B]" entry (file+headline "~/org-notes/gtd.org" "Important & !Urgent")
         "* TODO [#B] %?\n %i\n %U"
         :empty-lines 1)
        ("l" "Long-term [#C]" entry (file+headline "~/org-notes/gtd.org" "Long-term")
         "* TODO [#C] %?\n %i\n"
         :empty-lines 1)
        ))

(setq org-agenda-custom-commands
      '(
        ("wa" "Important & Urgent (DO)" tags-todo "+PRIORITY=\"A\"")
        ("wb" "Important & !Urgent (Plan)" tags-todo "-weekly-monthly-daily+PRIORITY=\"B\"")
        ("wc" "!Important & Urgent (Delegate)" tags-todo "+PRIORITY=\"C\"")
        ))

(provide 'init-local)
