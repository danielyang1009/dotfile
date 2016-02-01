;; init.el --- Emacs Initialization File
;;
;; Author: Daniel Yang

(setq gc-cons-threshold 100000000)

;; Keep track of loading time
(defconst emacs-start-time (current-time))
;; initalize all ELPA packages
(require 'package)

(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
;;(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(package-initialize)

(setq package-enable-at-startup nil)
(let ((elapsed (float-time (time-subtract (current-time)
                                            emacs-start-time))))
(message "Loaded packages in %.3fs" elapsed))

(require 'monokai-theme)

(require 'which-key)
(which-key-mode t)
(which-key-setup-side-window-bottom)

(require 'magit)
(global-set-key "\C-xg" 'magit-status)

(require 'helm)
(require 'helm-config)
(helm-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(global-set-key (kbd "C-x f") 'helm-find-files)


;; org-mode
(require 'org)
(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("◉" "►" "●" "○" "•"))
(helm-autoresize-mode t)

(setq org-agenda-files (quote ("~/org-notes" )))
(setq org-default-notes-file "~/org-notes/gtd.org")

(global-set-key (kbd "C-c c") 'org-capture)
(global-set-key (kbd "C-c l") 'org-store-link)
(global-set-key (kbd "C-c a") 'org-agenda)


  (setq org-startup-indented t)
  (setq org-indent-mode t)
  (setq org-export-coding-system 'utf-8)
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

;; start up
(setq inhibit-startup-screen t)
(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)


;; main window
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(display-time-mode 1)


;; Message how long it took to load everything (minus packages)
(let ((elapsed (float-time (time-subtract (current-time)
                                            emacs-start-time))))
(message "Loading settings...done (%.3fs)" elapsed))
