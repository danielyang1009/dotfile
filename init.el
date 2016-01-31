;; init.el --- Emacs Initialization File
;;
;; Author: Daniel Yang

(setq gc-cons-threshold 100000000)

;; =========================
;; Download Packges
;; ========================= 
(require 'package)
(setq package-list '(org helm ido monokai-theme nyan-mode magit company which-key org-bullets))

; list the repositories containing them
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(add-to-list 'package-archives '("marmalade" . "http://marmalade-repo.org/packages/"))
(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/") t)

(when (< emacs-major-version 24)
  ;; For important compatibility libraries like cl-lib
  (add-to-list 'package-archives '("gnu" . "http://elpa.gnu.org/packages/")))

;; activate all the packages (in particular autoloads)
(package-initialize)

;; fetch the list of packages available 
(unless package-archive-contents
  (package-refresh-contents))

;; install the missing packages
(dolist (package package-list)
  (unless (package-installed-p package)
    (package-install package)))

;; =========================
;; Personal Pacakges
;; ========================= 
(require 'monokai-theme)
(load-theme 'monokai t)

(require 'org-bullets)
(add-hook 'org-mode-hook (lambda () (org-bullets-mode 1)))
(setq org-bullets-bullet-list '("◉" "►" "●" "○" "•"))

(require 'ido)
(ido-mode t)

(require 'helm)
(require 'helm-config)
(helm-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "C-x C-f") 'helm-find-files)

;;(require 'smex)

;;(require 'uniquify)
;;(setq uniquify-buffer-name-style 'forward)

(require 'org)
;;(require 'org-checklist)

(require 'nyan-mode)
(nyan-mode t)
(nyan-start-animation)
(setq nyan-wavy-trail t)

(require 'magit)
(global-set-key "\C-xg" 'magit-status)

(require 'company)

(require 'which-key)
(which-key-mode t)
(which-key-setup-side-window-bottom)
;;(setq which-key-use-C-h-for-paging nil)


;; =========================
;; Configuration
;; ========================= 

;; main window
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)

;; time
(setq display-time-24hr-format t)

;; start up
(setq inhibit-startup-screen +1)
(setq initial-major-mode 'org-mode)
(setq initial-scratch-message nil)

;;(toggle-frame-maximized)
(display-time-mode +1)

;; scrolling
(setq redisplay-dont-pause t
      scroll-margin 1
      scroll-step 1
      scroll-conservatively 10000
      scroll-preserve-screen-position 1)

;; mouse scrolling
(setq mouse-wheel-follow-mouse 't)
(setq mouse-wheel-scroll-amount '(1 ((shift) . 1)))
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages
   (quote
    (which-key company magit nyan-mode monokai-theme helm smex))))


(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
