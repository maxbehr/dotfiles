(require 'package)

(add-to-list 'package-archives '("org" . "http://orgmode.org/elpa/"))
(add-to-list 'package-archives '("melpa" . "http://melpa.org/packages/"))
(add-to-list 'package-archives '("melpa-stable" . "http://stable.melpa.org/packages/"))

(setq package-enable-at-startup nil)
(package-initialize)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")

;;
;; Load theme on startup
;;
(load-theme 'zenburn t)

;; Load helm
(require 'helm-config)
(helm-mode 1)
(helm-autoresize-mode t)
(global-set-key (kbd "M-x") 'helm-M-x)
(global-set-key (kbd "M-y") 'helm-show-kill-ring)
(global-set-key (kbd "C-x b") 'helm-mini)
(global-set-key (kbd "C-x C-f") 'helm-find-files)
(setq helm-buffers-fuzzy-matching t
      helm-recentf-fuzzy-match    t)


;; Load evil mode for all buffers
;; (require 'evil)
;; (evil-mode t)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (htmlize helm evil-visual-mark-mode))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

;;
;; Log changes in a drawer, not the content of the note.
;;
(setq org-log-into-drawer t)

;;
;; Log a note when todo is done
;;
(setq org-log-done 'note)

;;
;; Define TODO states
;;
(setq org-todo-keywords
      '((sequence "TODO(t)" "|" "DONE(d!)" "HOLD(@)" "DELEGATED(@)")
        (sequence "CR(c)" "|" "REVIEWED(!@)")
        (sequence "MEETING(m)" "|" "FINISHED(@)" "CANCELLED(@)" "RESCHEDULED(@)" )
	(sequence "CALL(p)" "|" "CALLED(@)" )
	(sequence "TELL" "|" "TOLD(@)")))

(setq org-todo-keyword-faces
  '(("TODO" . org-warning)

    ("CR" . "yellow")
    ("REVIEWED" . "yellow")

    ("MEETING" . "orange")
    ("FINISHED" . "orange")
    ("CANCELLED" . "orange")
    ("RESCHEDULED" . "orange")
    
    ("CALL" . "green")
    ("CALLED" . "green")

    ("TELL" . "green")
    ("TOLD" . "green")))
