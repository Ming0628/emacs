
;;YASnippet is enabled

;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.

(package-initialize)

(add-to-list 'load-path
              "~/.emacs.d/plugins/yasnippet")
(require 'yasnippet)
(yas-global-mode 1)

;;auto-complete is enabled
(add-to-list 'load-path "~/.emacs.d/auto-complete")
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/auto-complete//ac-dict")
(ac-config-default)


;; Syntax highlight
(global-font-lock-mode t)

;; change line when column number hit 80
(setq fill-column 80)

;; show paren mode
(show-paren-mode t)

;; support outside copy and paste
(setq select-enable-clipboard t)

;; show line numbers in modeline
(global-linum-mode t)

;; show column numbers in modeline
(setq column-number-mode t)

;; disable temporary file ending with '~'
(setq make-backup-files nil)

;;maximum coloration in syntax highlighting
(setq font-lock-maximum-decoration t)

;; display time
(display-time-mode 1)
;;(setq display-time-24hr-format t)
(setq display-time-day-and-date t)

;;load the initial file in emacs.d
(load "~/.emacs.d/init.el")
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(package-selected-packages (quote (org elpy flycheck company))))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )

(require 'package)

(add-to-list 'package-archives
             '("MELPA Stable" . "https://stable.melpa.org/packages/") t)
(package-initialize)
(add-hook 'after-init-hook #'global-flycheck-mode)

;; enable elpy mode
(elpy-enable)
;; fix bug
(define-key yas-minor-mode-map (kbd "C-c k") 'yas-expand)
;; enable company mode for autocomplete
(add-hook 'after-init-hook 'global-company-mode)

;;

