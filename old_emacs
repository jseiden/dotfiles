(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(minibuffer-prompt ((t (:foreground "white")))))

; use the package manager
(require 'package)

; set package management resources 
(add-to-list
 'package-archives
 '("melpa" . "http://melpa.org/packages/") t)
(when (< emacs-major-version 24)
  ;; for compatibility reasons
  (add-to-list 'package-archives
	       '("gnu" . "http://elpa.gnu.org/packages/")))

; initialize the package manager
(package-initialize)

; scroll up with C-u
(setq evil-want-C-u-scroll t)

; smex- uses ido for M-x
(global-set-key (kbd "M-x") 'smex)
(global-set-key (kbd "M-X") 'smex-major-mode-commands)
(global-set-key (kbd "C-c C-c M-x") 'execute-extended-command)

; show which-key hints on right then bottom if not enough room 
(which-key-setup-side-window-right-bottom)

; use ido mode - interactively do things
(require 'ido)
(ido-mode t)
;;(setq ido-separator "\n")	

; use evil-mode
(require 'evil)
(evil-mode t)

;; GENERAL SETTINGS
;; disable alarm bell
(setq ring-bell-function 'ignore)

;; disable startup message
(setq inhibit-startup-message 1)

;; line numbers
(global-linum-mode t)


